package aoc.kingdoms.lukasz.menu_element.graph;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Graph_Vertical_Info {
    private int iTextsSize;
    private List<Color> lColors;
    private List<Integer> lSortedIDs;
    private List<Integer> lTextWidths;
    private List<String> lTexts;
    private boolean isMoveable = false;
    private boolean moveRight = false;
    private int iTextWidth = 0;
    private int iTextPosX = 0;
    private long lTime = 0;

    protected Graph_Vertical_Info(List<String> list, List<Color> list2, int i, boolean z) {
        this.lTexts = null;
        this.iTextsSize = 0;
        this.lTextWidths = null;
        this.lColors = null;
        this.lSortedIDs = null;
        this.iTextsSize = list.size();
        this.lTexts = new ArrayList();
        this.lColors = new ArrayList();
        this.lSortedIDs = new ArrayList();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.iTextsSize; i2++) {
            this.lSortedIDs.add(Integer.valueOf(i2));
            arrayList.add(false);
        }
        if (z) {
            while (list.size() != this.lTexts.size()) {
                int i3 = 0;
                while (true) {
                    if (i3 >= this.iTextsSize) {
                        i3 = 0;
                        break;
                    } else if (!((Boolean) arrayList.get(i3)).booleanValue()) {
                        break;
                    } else {
                        i3++;
                    }
                }
                for (int i4 = i3 + 1; i4 < this.iTextsSize; i4++) {
                    if (!((Boolean) arrayList.get(i4)).booleanValue() && CFG.compareAlphabetic_TwoString(list.get(i3), list.get(i4))) {
                        i3 = i4;
                    }
                }
                this.lTexts.add(list.get(i3));
                this.lColors.add(list2.get(i3));
                arrayList.set(i3, true);
                this.lSortedIDs.set(i3, Integer.valueOf(this.lTexts.size() - 1));
            }
        } else {
            this.lTexts = list;
            this.lColors = list2;
        }
        this.lTextWidths = new ArrayList();
        Renderer.fontMain.get(0).getData().setScale(0.7f);
        for (int i5 = 0; i5 < this.iTextsSize; i5++) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(0), this.lTexts.get(i5));
            this.iTextWidth += (int) Renderer.glyphLayout.width;
            this.lTextWidths.add(Integer.valueOf((int) Renderer.glyphLayout.width));
        }
        Renderer.fontMain.get(0).getData().setScale(1.0f);
        this.iTextWidth += (CFG.PADDING * this.iTextsSize) + (CFG.PADDING * (this.iTextsSize - 1)) + ((int) (CFG.TEXT_HEIGHT * 0.7f * this.iTextsSize));
        updateMoveable(i);
    }

    protected final void draw(SpriteBatch spriteBatch, int i, int i2, int i3) {
        if (this.isMoveable) {
            Renderer.clipView_Start(spriteBatch, i, CFG.GAME_HEIGHT - i2, i3, (-((int) (CFG.TEXT_HEIGHT * 0.7f))) - CFG.PADDING);
            if (this.lTime < CFG.currentTimeMillis - 45) {
                this.lTime = CFG.currentTimeMillis;
                boolean z = this.moveRight;
                if (z) {
                    int i4 = this.iTextPosX - 1;
                    this.iTextPosX = i4;
                    if ((-i4) + i3 >= this.iTextWidth + CFG.PADDING) {
                        this.moveRight = !this.moveRight;
                    }
                } else {
                    int i5 = this.iTextPosX + 1;
                    this.iTextPosX = i5;
                    if (i5 >= 0) {
                        this.moveRight = !z;
                    }
                }
            }
        }
        int iIntValue = 0;
        for (int i6 = 0; i6 < this.iTextsSize; i6++) {
            spriteBatch.setColor(this.lColors.get(i6));
            int i7 = i + iIntValue;
            Images.pix.draw(spriteBatch, i7 + this.iTextPosX, i2, (int) (CFG.TEXT_HEIGHT * 0.7f), (int) (CFG.TEXT_HEIGHT * 0.7f));
            spriteBatch.setColor(new Color(this.lColors.get(i6).r, this.lColors.get(i6).g, this.lColors.get(i6).b, 0.7f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i7 + this.iTextPosX, i2, (int) (CFG.TEXT_HEIGHT * 0.7f), (int) (CFG.TEXT_HEIGHT * 0.7f));
            int i8 = iIntValue + ((int) (CFG.TEXT_HEIGHT * 0.7f)) + CFG.PADDING;
            Renderer.drawTextWithShadow(spriteBatch, this.lTexts.get(i6), i + i8 + this.iTextPosX, i2, new Color(this.lColors.get(i6).r, this.lColors.get(i6).g, this.lColors.get(i6).b, 0.7f));
            iIntValue = i8 + this.lTextWidths.get(i6).intValue() + CFG.PADDING;
        }
        if (this.isMoveable) {
            Renderer.clipView_End(spriteBatch);
        }
    }

    protected final List<Color> getColors() {
        return this.lColors;
    }

    protected final List<Integer> getSorted() {
        return this.lSortedIDs;
    }

    protected final int getSortedID(int i) {
        return this.lSortedIDs.get(i).intValue();
    }

    protected final String getText(int i) {
        return this.lTexts.get(i);
    }

    protected final int getTextSize() {
        return this.iTextsSize;
    }

    protected final void resetisMoveable() {
        this.iTextPosX = 0;
        this.moveRight = true;
    }

    protected final void updateMoveable(int i) {
        if (this.iTextWidth > i) {
            this.isMoveable = true;
            resetisMoveable();
        } else {
            resetisMoveable();
            this.isMoveable = false;
            this.iTextPosX = (i / 2) - (this.iTextWidth / 2);
        }
    }
}
