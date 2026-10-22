package aoc.kingdoms.lukasz.menusInGame.Technology;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Renderer.SparksAnimation;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleTechTree;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTechnology;
import aoc.kingdoms.lukasz.menus.InitGame;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import java.util.ArrayList;
import java.util.List;
import space.earlygrey.shapedrawer.JoinType;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_TechnologyTree extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public int iLinesSize;
    public int iMapPosY;
    public List<TechLine> lines = new ArrayList();
    public static SparksAnimation sparksAnimation = new SparksAnimation();
    public static long lTime = 0;
    public static int centerToTechID = -1;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTree$1, reason: invalid class name */
    class AnonymousClass1 extends MenuTitleTechTree {
        AnonymousClass1(String str, int i, boolean z, boolean z2) {
            super(str, i, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_TechnologyTree.lTime;
        }
    }

    public class TechLine {
        public int iTechID;
        public boolean researched;
        private Array<Vector2> nPath = new Array<>();
        public List<Integer> lPointsX = new ArrayList();
        public List<Integer> lPointsY = new ArrayList();

        public TechLine(int i, int i2, int i3, int i4, int i5, boolean z) {
            this.researched = false;
            this.iTechID = i;
            this.researched = z;
            this.lPointsX.add(Integer.valueOf(i2));
            this.lPointsY.add(Integer.valueOf(i3));
            if (i3 != i5) {
                int i6 = i3 > i5 ? -1 : 1;
                this.lPointsX.add(Integer.valueOf(((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50) - 8));
                this.lPointsY.add(Integer.valueOf(i3));
                this.lPointsX.add(Integer.valueOf(((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50) - 6));
                int i7 = i6 * 1;
                this.lPointsY.add(Integer.valueOf(i3 + i7));
                this.lPointsX.add(Integer.valueOf(((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50) - 4));
                int i8 = i6 * 2;
                this.lPointsY.add(Integer.valueOf(i3 + i8));
                this.lPointsX.add(Integer.valueOf(((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50) - 2));
                int i9 = i6 * 4;
                this.lPointsY.add(Integer.valueOf(i3 + i9));
                this.lPointsX.add(Integer.valueOf(((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50) - 1));
                int i10 = i6 * 6;
                this.lPointsY.add(Integer.valueOf(i3 + i10));
                this.lPointsX.add(Integer.valueOf((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50));
                int i11 = i6 * 8;
                this.lPointsY.add(Integer.valueOf(i3 + i11));
                this.lPointsX.add(Integer.valueOf((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50));
                this.lPointsY.add(Integer.valueOf(i5 - i11));
                this.lPointsX.add(Integer.valueOf(((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50) + 1));
                this.lPointsY.add(Integer.valueOf(i5 - i10));
                this.lPointsX.add(Integer.valueOf(((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50) + 2));
                this.lPointsY.add(Integer.valueOf(i5 - i9));
                this.lPointsX.add(Integer.valueOf(((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50) + 4));
                this.lPointsY.add(Integer.valueOf(i5 - i8));
                this.lPointsX.add(Integer.valueOf(((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50) + 6));
                this.lPointsY.add(Integer.valueOf(i5 - i7));
                this.lPointsX.add(Integer.valueOf(((i4 - (TechnologyTree.iTechnologyWidth / 2)) - 50) + 8));
                this.lPointsY.add(Integer.valueOf(i5));
            }
            this.lPointsX.add(Integer.valueOf(i4));
            this.lPointsY.add(Integer.valueOf(i5));
            for (int size = this.lPointsX.size() - 1; size >= 0; size--) {
                this.nPath.add(new Vector2(0.0f, 0.0f));
            }
        }
    }

    public InGame_TechnologyTree() {
        this.iMapPosY = 0;
        this.iLinesSize = 0;
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING;
        int i2 = CFG.PADDING * 4;
        int height = ImageManager.getImage(Images.titleTechTree).getHeight();
        int i3 = CFG.GAME_WIDTH;
        int i4 = CFG.BUTTON_WIDTH;
        int i5 = Renderer.boxBGExtraY;
        int i6 = CFG.PADDING;
        int height2 = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2) + ImageManager.getImage(Images.title928).getHeight();
        int iMax = 0;
        int i7 = 0;
        while (i7 < TechnologyTree.iTechnologySize) {
            int i8 = i3;
            arrayList.add(new ButtonTechnology(TechnologyTree.getTechBG(i7, Game.player.iCivID), i7, ((TechnologyTree.iTechnologyWidth + 100) * TechnologyTree.lTechnology.get(i7).TreeColumn) + 100, ((TechnologyTree.iTechnologyHeight + 15) * TechnologyTree.lTechnology.get(i7).TreeRow) + 15, true, Game.player.playerData.techQueue.getTechIsInQueue(i7)));
            int i9 = centerToTechID;
            if (i9 >= 0) {
                if (i7 == i9) {
                    iMax = Math.max(iMax, arrayList.get(arrayList.size() - 1).getPosX());
                }
            } else if (Game.getCiv(Game.player.iCivID).getTechResearched(i7)) {
                iMax = Math.max(iMax, arrayList.get(arrayList.size() - 1).getPosX());
            }
            int i10 = iMax;
            if (TechnologyTree.lTechnology.get(i7).RequiredTech >= 0) {
                this.lines.add(new TechLine(i7, (TechnologyTree.iTechnologyWidth / 2) + 100 + ((TechnologyTree.iTechnologyWidth + 100) * TechnologyTree.lTechnology.get(TechnologyTree.lTechnology.get(i7).RequiredTech).TreeColumn), (TechnologyTree.iTechnologyHeight / 2) + 15 + ((TechnologyTree.iTechnologyHeight + 15) * TechnologyTree.lTechnology.get(TechnologyTree.lTechnology.get(i7).RequiredTech).TreeRow), (TechnologyTree.iTechnologyWidth / 2) + 100 + ((TechnologyTree.iTechnologyWidth + 100) * TechnologyTree.lTechnology.get(i7).TreeColumn), (TechnologyTree.iTechnologyHeight / 2) + 15 + ((TechnologyTree.iTechnologyHeight + 15) * TechnologyTree.lTechnology.get(i7).TreeRow), Game.getCiv(Game.player.iCivID).getTechResearched(i7)));
            }
            if (TechnologyTree.lTechnology.get(i7).RequiredTech2 >= 0) {
                this.lines.add(new TechLine(i7, (TechnologyTree.iTechnologyWidth / 2) + 100 + ((TechnologyTree.iTechnologyWidth + 100) * TechnologyTree.lTechnology.get(TechnologyTree.lTechnology.get(i7).RequiredTech2).TreeColumn), (TechnologyTree.iTechnologyHeight / 2) + 15 + ((TechnologyTree.iTechnologyHeight + 15) * TechnologyTree.lTechnology.get(TechnologyTree.lTechnology.get(i7).RequiredTech2).TreeRow), (TechnologyTree.iTechnologyWidth / 2) + 100 + ((TechnologyTree.iTechnologyWidth + 100) * TechnologyTree.lTechnology.get(i7).TreeColumn), (TechnologyTree.iTechnologyHeight / 2) + 15 + ((TechnologyTree.iTechnologyHeight + 15) * TechnologyTree.lTechnology.get(i7).TreeRow), Game.getCiv(Game.player.iCivID).getTechResearched(i7)));
            }
            i7++;
            i3 = i8;
            iMax = i10;
        }
        int i11 = i3;
        int size = arrayList.size();
        int posY = 0;
        for (int i12 = 0; i12 < size; i12++) {
            if (posY < arrayList.get(i12).getPosY() + arrayList.get(i12).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i12).getPosY() + arrayList.get(i12).getHeight() + CFG.PADDING;
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 2));
        int size2 = arrayList.size();
        int posX = 0;
        for (int i13 = 0; i13 < size2; i13++) {
            if (arrayList.get(i13).getPosX() + arrayList.get(i13).getWidth() > posX) {
                posX = arrayList.get(i13).getPosX() + arrayList.get(i13).getWidth();
            }
        }
        arrayList.add(new Empty(0, 0, posX + 100, posY));
        Math.max(posY, ((TechnologyTree.iTechnologyHeight + 15) * (GameValues.inGame.TECH_TREE_NUM_OF_ROWS + 0.25f)) + (i2 * 2));
        int i14 = iMax;
        initMenu(new AnonymousClass1(Game.lang.get("TechnologyTree"), height, false, false), 0, (CFG.GAME_HEIGHT / 2) - (iMin / 2), i11, iMin, arrayList, false, true);
        this.iMapPosY = (int) (Math.max(0, Game.mapBG.iHeightOfMapTech - CFG.GAME_HEIGHT) * (Game.oR.nextInt(100) / 100.0f));
        this.iLinesSize = this.lines.size();
        if (i14 != 0) {
            setMenuPosX((-i14) + (CFG.GAME_WIDTH / 4));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.menuManager.setVisibleInGame_TechnologyTree(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        float f = lTime + 60 >= CFG.currentTimeMillis ? (CFG.currentTimeMillis - lTime) / 60.0f : 1.0f;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG.r, Colors.COLOR_GRADIENT_BG.g, Colors.COLOR_GRADIENT_BG.b, 0.6f * f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, ((getPosY() - getTitle().getHeight()) - (CFG.BUTTON_HEIGHT2 / 2)) + i2, CFG.GAME_WIDTH, CFG.BUTTON_HEIGHT2 / 2, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, getPosY() + getHeight() + i2, CFG.GAME_WIDTH, CFG.BUTTON_HEIGHT2 / 2);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG.r, Colors.COLOR_GRADIENT_BG.g, Colors.COLOR_GRADIENT_BG.b, 0.3f * f));
        Images.gradientXY.draw(spriteBatch, i, ((getPosY() - getTitle().getHeight()) - (CFG.BUTTON_HEIGHT2 / 2)) + i2, CFG.GAME_WIDTH, CFG.BUTTON_HEIGHT2 / 2);
        Images.gradientXY.draw(spriteBatch, i, getPosY() + getHeight() + i2, CFG.GAME_WIDTH, CFG.BUTTON_HEIGHT2 / 2, false, true);
        spriteBatch.setColor(Color.WHITE);
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        ImageManager.getImage(Images.insideTechTree).draw2(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, true);
        Renderer.clipView_Start(spriteBatch, getPosX() + i, CFG.GAME_HEIGHT - (getPosY() + i3), getWidth(), -getHeight());
        Renderer.setShaderWater(spriteBatch);
        ImageManager.getImage(Images.waves).draw2(spriteBatch, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, -getMenuPosX(), -getMenuPosY());
        Renderer.setShaderDefault(spriteBatch);
        if (Game.map.getActiveMap_MapData().mapData.BackgroundZoomOut_Enable) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.15f));
            Game.mapBG.drawMapBG2_TechTree(spriteBatch, getPosX() + getMenuPosX() + i, getPosY() + i3);
            spriteBatch.setColor(Color.WHITE);
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.25f));
            spriteBatch.setShader(Renderer.shaderAlpha);
            InitGame.background.getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            Images.gradientFull.draw(spriteBatch, ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i3, InitGame.backgroundWidth, InitGame.backgroundHeight);
            Images.gradientXY.draw(spriteBatch, ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i3, InitGame.backgroundWidth, InitGame.backgroundHeight);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            spriteBatch.setColor(Color.WHITE);
        }
        Renderer.clipView_End(spriteBatch);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.25f));
        Images.pix.draw(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() - 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, r5));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() - 1, false, true);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.35f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() - 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), CFG.PADDING * 4);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), CFG.PADDING * 4, false, true);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.15f));
        sparksAnimation.draw2(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - Images.sparkHeight) + i3, getWidth(), Images.sparkHeight);
        spriteBatch.setColor(Color.WHITE);
        for (int i4 = 0; i4 < this.iLinesSize; i4++) {
            this.lines.get(i4).lPointsX.get(0);
            int size = this.lines.get(i4).lPointsX.size();
            for (int i5 = 0; i5 < size; i5++) {
                ((Vector2) this.lines.get(i4).nPath.get(i5)).x = getPosX() + getMenuPosX() + i + this.lines.get(i4).lPointsX.get(i5).intValue();
                ((Vector2) this.lines.get(i4).nPath.get(i5)).y = -(getMenuPosY() + i3 + this.lines.get(i4).lPointsY.get(i5).intValue());
            }
            Renderer.shapeDrawer.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
            Renderer.shapeDrawer.path((Iterable) this.lines.get(i4).nPath, 3.0f, JoinType.SMOOTH, true);
            if (this.lines.get(i4).researched) {
                Renderer.shapeDrawer.setColor(new Color(0.39215687f, 0.33333334f, 0.19607843f, 1.0f));
            } else {
                Renderer.shapeDrawer.setColor(new Color(0.3137255f, 0.3137255f, 0.3137255f, 1.0f));
            }
            Renderer.shapeDrawer.path((Iterable) this.lines.get(i4).nPath, 1.0f, JoinType.SMOOTH, true);
        }
        Renderer.oSBBorder.end();
        Renderer.oSBBorder.begin();
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_TechnologyTree();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
