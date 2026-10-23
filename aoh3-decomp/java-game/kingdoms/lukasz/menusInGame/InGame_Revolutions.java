package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect_Active;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Revolutions extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Revolutions$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonCurrentSituation {
        int id;

        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionUnrest(this.id)) {
                Game.menuManager.rebuildInGame_Revolutions_SavePos();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapCoords.centerToProvinceID(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverUnrest(this.id, false, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Revolutions$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRect_Active {
        int id;

        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapCoords.centerToProvinceID(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverPopulation(this.id, false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorPopulation(z, getIsHovered());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Revolutions$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRect_Active {
        int id;
        float lastValue;

        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
            this.lastValue = 0.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_ProvinceInfo.actionUnrest(this.id)) {
                Game.menuManager.rebuildInGame_Revolutions_SavePos();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.mapCoords.centerToProvinceID(this.id);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverUnrest(this.id, false, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorNegative(z, getIsHovered());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (Game.getProvince(this.id).getRevulutionaryRisk() != this.lastValue) {
                this.lastValue = Game.getProvince(this.id).getRevulutionaryRisk();
                setText("" + CFG.getPrecision2(this.lastValue, 100) + "%");
            }
            return super.getTextToDraw();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Revolutions$4, reason: invalid class name */
    class AnonymousClass4 extends Text_StaticBG {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Revolutions$5, reason: invalid class name */
    class AnonymousClass5 extends MenuTitleIMG {
        AnonymousClass5(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Revolutions.lTime;
        }
    }

    public InGame_Revolutions() {
        int i;
        int height;
        ArrayList arrayList = new ArrayList();
        int i2 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height2 = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i3 = CFG.PADDING;
        int i4 = Images.boxTitleBORDERWIDTH;
        List<Integer> revolutionaryProvinces_Sorted = Game.revolutionManager.getRevolutionaryProvinces_Sorted(Game.player.iCivID);
        if (revolutionaryProvinces_Sorted.size() > 0) {
            int i5 = width - (i2 * 2);
            int i6 = ((i5 - (CFG.PADDING * 2)) - (CFG.BUTTON_WIDTH * 2)) + (i2 - Images.boxTitleBORDERWIDTH) + (CFG.PADDING / 2);
            int i7 = CFG.BUTTON_WIDTH + CFG.PADDING;
            arrayList.add(new Text_TitleBlueSort(false, false, Game.lang.get("Province"), -1, Images.boxTitleBORDERWIDTH, 0, i6, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            arrayList.add(new Text_TitleBlueSort(false, false, Game.lang.get(IlLkpaQxs.HaXzrvfFzHGJ), -1, i6, 0, i7, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            int i8 = i6 + i7;
            arrayList.add(new Text_TitleBlueSort(true, false, Game.lang.get("Unrest"), -1, i8, 0, (width - i8) - Images.boxTitleBORDERWIDTH, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
            height = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
            int i9 = 0;
            while (i9 < revolutionaryProvinces_Sorted.size()) {
                int i10 = otherMenuPosX_2;
                int i11 = i9;
                arrayList.add(new AnonymousClass1(Game.getProvince(revolutionaryProvinces_Sorted.get(i9).intValue()).getProvinceName(), Images.revolutionRisk, i2, height, (i5 - (CFG.PADDING * 2)) - (CFG.BUTTON_WIDTH * 2), CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
                arrayList.get(arrayList.size() - 1).setCurrent(revolutionaryProvinces_Sorted.get(i11).intValue());
                int i12 = width - i2;
                int i13 = height;
                arrayList.add(new AnonymousClass2("" + CFG.getShortNumber(Game.getProvince(revolutionaryProvinces_Sorted.get(i11).intValue()).getPopulationTotal()), (i12 - (CFG.BUTTON_WIDTH * 2)) - CFG.PADDING, i13, CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT3, CFG.FONT_BOLD_SMALL));
                arrayList.add(new AnonymousClass3("" + CFG.getPrecision2(Game.getProvince(revolutionaryProvinces_Sorted.get(i11).intValue()).getRevulutionaryRisk(), 100) + "%", i12 - CFG.BUTTON_WIDTH, i13, CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT3, CFG.FONT_BOLD_SMALL));
                arrayList.get(arrayList.size() - 1).setCurrent(revolutionaryProvinces_Sorted.get(i11).intValue());
                height += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i9 = i11 + 1;
                i5 = i5;
                otherMenuPosX_2 = i10;
            }
            i = otherMenuPosX_2;
        } else {
            i = otherMenuPosX_2;
            arrayList.add(new AnonymousClass4(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i2, i3, width - (i2 * 2), CFG.BUTTON_HEIGHT));
            height = i3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i14 = height;
        int iMin = Math.min(i14, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(i14, iMin)));
        initMenu(new AnonymousClass5(Game.lang.get("RevolutionaryMovements"), true, false, Images.title500), i, height2, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
