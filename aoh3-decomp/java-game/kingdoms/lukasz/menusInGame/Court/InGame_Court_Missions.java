package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Mission;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_Missions extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Missions$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonCurrentSituation {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Court.iActiveCivID = Game.player.iCivID;
            Game.menuManager.rebuildInGame_Court();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
            Game.setRegroupArmyMode(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(GameValues.court.COUNCIL_NAME), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Missions$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonCurrentSituation {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CourtOptions.disableAllViews();
            Game.menuManager.rebuildInGame_CourtGoldenAges();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("GoldenAge"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goldenGold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.getClickSound_CivOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Missions$3, reason: invalid class name */
    class AnonymousClass3 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_MissionTree(false, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Missions") + ": " + Game.getCiv(Game.player.iCivID).getCivName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.missions, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    public InGame_Court_Missions() {
        int i;
        String str;
        ArrayList arrayList = new ArrayList();
        int i2 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i3 = CFG.PADDING;
        int i4 = CFG.PADDING;
        int i5 = Game.player.iCivID;
        int i6 = width - (i2 * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get(GameValues.court.COUNCIL_NAME), Images.council, i2, i4, i6, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        int height2 = i4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass2(Game.lang.get("GoldenAge"), Images.goldenGold, i2, height2, i6, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Missions") + ": " + Game.getCiv(Game.player.iCivID).getCivName(), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i3;
        arrayList.add(new AnonymousClass3("" + Game.lang.get("Missions") + ": " + Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i2, height4, i6, CFG.BUTTON_HEIGHT, Game.player.iCivID));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i3;
        String str2 = "Events";
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Events"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height5, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i3;
        int i7 = 0;
        int i8 = 0;
        while (i7 < EventsManager.iEventsSize) {
            if (EventsManager.events.get(i7).show_in_missions && !Game.getCiv(i5).eventsDataVariables.hasVariable(EventsManager.events.get(i7).id)) {
                arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.events.get(i7).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i2, height6, i6, 0, i7, EventsManager.events.get(i7).mission_image));
                height6 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i8++;
            }
            i7++;
            str2 = str2;
        }
        String str3 = str2;
        for (int i9 = 0; i9 < EventsManager.iEventsScenarioSize; i9++) {
            if (EventsManager.eventsScenario.get(i9).show_in_missions && !Game.getCiv(i5).eventsDataVariables.hasVariable(EventsManager.eventsScenario.get(i9).id)) {
                arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.eventsScenario.get(i9).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i2, height6, i6, 3, i9, EventsManager.eventsScenario.get(i9).mission_image));
                height6 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i8++;
            }
        }
        String str4 = aBEBOpwLZcQFCZ.DYT;
        if (i8 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get(str4), CFG.FONT_REGULAR, -1, i2, height6, i6, CFG.BUTTON_HEIGHT2));
            height6 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Completed"), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height6, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + i3;
        int i10 = 0;
        for (int i11 = 0; i11 < EventsManager.iEventsSize; i11++) {
            if (EventsManager.events.get(i11).show_in_missions && Game.getCiv(i5).eventsDataVariables.hasVariable(EventsManager.events.get(i11).id)) {
                arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.events.get(i11).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i2, height7, i6, 0, i11, EventsManager.events.get(i11).mission_image));
                height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i10++;
            }
        }
        for (int i12 = 0; i12 < EventsManager.iEventsScenarioSize; i12++) {
            if (EventsManager.eventsScenario.get(i12).show_in_missions && Game.getCiv(i5).eventsDataVariables.hasVariable(EventsManager.eventsScenario.get(i12).id)) {
                arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.eventsScenario.get(i12).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i2, height7, i6, 3, i12, EventsManager.eventsScenario.get(i12).mission_image));
                height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                i10++;
            }
        }
        if (i10 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get(str4), CFG.FONT_REGULAR, -1, i2, height7, i6, CFG.BUTTON_HEIGHT2));
            height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (GameValues.events.SHOW_EVENTS_IN_MISSION_MENU) {
            String str5 = str3;
            arrayList.add(new Text_Title_v2Center(Game.lang.get(str5), -1, CFG.FONT_BOLD, Images.boxTitleBORDERWIDTH, height7, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            height7 += arrayList.get(arrayList.size() - 1).getHeight() + i3;
            int i13 = 0;
            int i14 = 0;
            while (i13 < EventsManager.iEventsSize) {
                if (!EventsManager.events.get(i13).show_in_missions && !Game.getCiv(i5).eventsDataVariables.hasVariable(EventsManager.events.get(i13).id)) {
                    arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.events.get(i13).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i2, height7, i6, 0, i13, EventsManager.events.get(i13).mission_image));
                    height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    i14++;
                }
                i13++;
                width = width;
                str5 = str5;
            }
            i = width;
            str = str5;
            for (int i15 = 0; i15 < EventsManager.iEventsScenarioSize; i15++) {
                if (!EventsManager.eventsScenario.get(i15).show_in_missions && !Game.getCiv(i5).eventsDataVariables.hasVariable(EventsManager.eventsScenario.get(i15).id)) {
                    arrayList.add(new Text_StaticBG_Mission("" + Game.lang.get(EventsManager.eventsScenario.get(i15).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 4, i2, height7, i6, 3, i15, EventsManager.eventsScenario.get(i15).mission_image));
                    height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    i14++;
                }
            }
            if (i14 == 0) {
                arrayList.add(new Text_StaticBG(Game.lang.get(str4), CFG.FONT_REGULAR, -1, i2, height7, i6, CFG.BUTTON_HEIGHT2));
                height7 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
        } else {
            i = width;
            str = str3;
        }
        int i16 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(height7, (CFG.GAME_HEIGHT - i16) - (CFG.PADDING * 3));
        int i17 = i;
        arrayList.add(new Empty(0, 0, i17, Math.max(height7, iMin)));
        initMenu(null, otherMenuPosX, i16, i17, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get(str));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameCourt();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        InGame_Court.lTime = CFG.currentTimeMillis;
        InGame_Court.lTime2 = CFG.currentTimeMillis;
    }
}
