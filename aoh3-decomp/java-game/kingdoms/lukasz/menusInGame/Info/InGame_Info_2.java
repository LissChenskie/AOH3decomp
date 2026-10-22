package aoc.kingdoms.lukasz.menusInGame.Info;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_InfoTop;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Info_2 extends Menu {
    public static int TIME_IN_VIEW = 3500;
    public static float fAnimationPerc = 1.0f;
    public static boolean hideAnimation = false;
    public static int iAnimationWidth = 1;
    public static int iCivID;
    public static int iCivID2;
    public static int iInfoY;
    public final int ANIMATION_TIME = 225;
    public long lTime = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info_2$1, reason: invalid class name */
    class AnonymousClass1 extends Text_InfoTop {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Info_2.this.setVisible(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_InfoTop, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return new Color(Colors.COLOR_TOP_STATS_ACTIVE.r, Colors.COLOR_TOP_STATS_ACTIVE.g, Colors.COLOR_TOP_STATS_ACTIVE.b, InGame_Info_2.fAnimationPerc * 1.0f);
            }
            return getIsHovered() ? new Color(Colors.COLOR_TOP_STATS_HOVER.r, Colors.COLOR_TOP_STATS_HOVER.g, Colors.COLOR_TOP_STATS_HOVER.b, InGame_Info_2.fAnimationPerc * 1.0f) : new Color(Colors.COLOR_INFO_BOX2.r, Colors.COLOR_INFO_BOX2.g, Colors.COLOR_INFO_BOX2.b, InGame_Info_2.fAnimationPerc * 1.0f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info_2$2, reason: invalid class name */
    class AnonymousClass2 extends Text_InfoTop {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Info_2.this.setVisible(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_InfoTop, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return new Color(Colors.COLOR_TOP_STATS_ACTIVE.r, Colors.COLOR_TOP_STATS_ACTIVE.g, Colors.COLOR_TOP_STATS_ACTIVE.b, InGame_Info_2.fAnimationPerc * 1.0f);
            }
            return getIsHovered() ? new Color(Colors.COLOR_TOP_STATS_HOVER.r, Colors.COLOR_TOP_STATS_HOVER.g, Colors.COLOR_TOP_STATS_HOVER.b, InGame_Info_2.fAnimationPerc * 1.0f) : new Color(Colors.COLOR_INFO_BOX2_BOT.r, Colors.COLOR_INFO_BOX2_BOT.g, Colors.COLOR_INFO_BOX2_BOT.b, InGame_Info_2.fAnimationPerc * 1.0f);
        }
    }

    public InGame_Info_2(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        iInfoY = ButtonFlag.getButtonHeight() + (CFG.PADDING * 4);
        arrayList.add(new AnonymousClass1(str, CFG.FONT_REGULAR, -1, (CFG.GAME_WIDTH / 2) - (getInfoBoxWidth() / 2), iInfoY, ImageManager.getImage(Images.infoBox2).getWidth(), (ImageManager.getImage(Images.infoBox2).getHeight() * 3) / 5));
        arrayList.add(new AnonymousClass2(str2, CFG.FONT_REGULAR_SMALL, -1, (CFG.GAME_WIDTH / 2) - (getInfoBoxWidth() / 2), iInfoY + (ImageManager.getImage(Images.infoBox2).getHeight() / 2), ImageManager.getImage(Images.infoBox2).getWidth(), ImageManager.getImage(Images.infoBox2).getHeight() / 2));
        InGame_Info.imgID = Images.infoLegacy;
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, false);
        Game.soundsManager.playSound(SoundsManager.INFO_BOX);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (hideAnimation) {
            if (this.lTime + 225 >= CFG.currentTimeMillis) {
                float f = 1.0f - ((CFG.currentTimeMillis - this.lTime) / 225.0f);
                fAnimationPerc = f;
                fAnimationPerc = Math.max(0.0f, f);
            } else {
                fAnimationPerc = 0.0f;
                setVisible(false);
            }
            iAnimationWidth = (int) (ImageManager.getImage(Images.infoBox2).getWidth() * fAnimationPerc);
        } else {
            if (this.lTime + 225 >= CFG.currentTimeMillis) {
                float f2 = (CFG.currentTimeMillis - this.lTime) / 225.0f;
                fAnimationPerc = f2;
                fAnimationPerc = Math.min(1.0f, f2);
            } else {
                fAnimationPerc = 1.0f;
            }
            iAnimationWidth = (int) (ImageManager.getImage(Images.infoBox2).getWidth() * fAnimationPerc);
            if (this.lTime + ((long) TIME_IN_VIEW) <= CFG.currentTimeMillis) {
                hideAnimation = true;
                this.lTime = CFG.currentTimeMillis;
            }
        }
        drawInfoBox(spriteBatch, (CFG.GAME_WIDTH / 2) - (getInfoBoxWidthTotalAnimation() / 2), iInfoY);
        super.draw(spriteBatch, i, i2, z, status);
    }

    public void drawInfoBox(SpriteBatch spriteBatch, int i, int i2) {
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, fAnimationPerc * 0.65f));
        Images.gradientXY.draw(spriteBatch, i, i2 - (getInfoBoxHeightTotal() / 4), getInfoBoxWidthTotalAnimation(), (getInfoBoxHeightTotal() / 2) + (getInfoBoxHeightTotal() / 4));
        Images.gradientXY.draw(spriteBatch, i, i2 + (getInfoBoxHeightTotal() / 2), getInfoBoxWidthTotalAnimation(), (getInfoBoxHeightTotal() * 3) / 4, false, true);
        spriteBatch.setColor(Color.WHITE);
        if (hideAnimation) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, fAnimationPerc * 1.0f));
        }
        ImageManager.getImage(InGame_Info.imgID).draw(spriteBatch, ((getInfoBoxWidthTotalAnimation() / 2) + i) - ((int) ((ImageManager.getImage(InGame_Info.imgID).getWidth() * ((fAnimationPerc * 0.5f) + 0.5f)) / 2.0f)), ((getInfoBoxHeightTotal() / 2) + i2) - ((int) ((ImageManager.getImage(InGame_Info.imgID).getHeight() * ((fAnimationPerc * 0.5f) + 0.5f)) / 2.0f)), (int) (ImageManager.getImage(InGame_Info.imgID).getWidth() * ((fAnimationPerc * 0.5f) + 0.5f)), (int) (ImageManager.getImage(InGame_Info.imgID).getHeight() * ((fAnimationPerc * 0.5f) + 0.5f)));
        ImageManager.getImage(Images.infoBox2).draw(spriteBatch, i, i2, iAnimationWidth, ImageManager.getImage(Images.infoBox2).getHeight());
        spriteBatch.setColor(Color.WHITE);
    }

    public int getInfoBoxHeightTotal() {
        return ImageManager.getImage(Images.infoBox2).getHeight();
    }

    public int getInfoBoxWidth() {
        return ImageManager.getImage(Images.infoBox2).getWidth();
    }

    public int getInfoBoxWidthTotalAnimation() {
        return iAnimationWidth;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        if (z) {
            this.lTime = CFG.currentTimeMillis;
            hideAnimation = false;
        }
    }
}
