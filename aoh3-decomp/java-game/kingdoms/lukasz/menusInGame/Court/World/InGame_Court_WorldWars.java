package aoc.kingdoms.lukasz.menusInGame.Court.World;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.war.War;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MessageWar;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStats_WarScore;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.InGame_War;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_WorldWars extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldWars$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldWars$2, reason: invalid class name */
    class AnonymousClass2 extends TextIcon_Diplomacy {
        public String warKey;

        AnonymousClass2(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (this.warKey != null) {
                if (Game.menuManager.getVisibleInGame_War() && InGame_War.key.equals(this.warKey)) {
                    Game.menuManager.setVisibleInGame_War(false);
                    return;
                }
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.clearActiveArmy();
                Game.menuManager.showInGame_Battle_HideMenus();
                InGame_War.key = this.warKey;
                Game.menuManager.rebuildInGame_War();
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_WAR_VIEW) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_WAR_VIEW);
                } else {
                    Game.mapModes.updateWarView(InGame_War.key);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = MessageWar.getHoverWar(this.warKey, WarManager.lWars.get(this.warKey).lDefenders.get(0).iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setText2(String str) {
            this.warKey = str;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldWars$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Casualties") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.skull, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldWars$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Casualties") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.skull, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldWars$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStats_WarScore {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2) {
            super(str, i, i2, i3, i4, i5, i6, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (this.key != null) {
                if (Game.menuManager.getVisibleInGame_War() && InGame_War.key.equals(this.key)) {
                    Game.menuManager.setVisibleInGame_War(false);
                    return;
                }
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.clearActiveArmy();
                Game.menuManager.showInGame_Battle_HideMenus();
                InGame_War.key = this.key;
                Game.menuManager.rebuildInGame_War();
                if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_WAR_VIEW) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_WAR_VIEW);
                } else {
                    Game.mapModes.updateWarView(InGame_War.key);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            String str = cIUGJCqyPXfp.dlwfzYOf;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            try {
                float warScore_Side = WarManager.lWars.get(this.key).getWarScore_Side(getCurrent());
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("WarScore") + ": ", CFG.FONT_BOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(Math.min(Math.max(WarManager.lWars.get(this.key).warScore * warScore_Side, -100.0f), 100.0f), 1) + str, CFG.FONT_BOLD, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.victoryPoints, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Math.abs(WarManager.lWars.get(this.key).warScore) >= 1.0f) {
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("InFavorOf") + ": ", CFG.FONT_REGULAR));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv((WarManager.lWars.get(this.key).warScore > 0.0f ? WarManager.lWars.get(this.key).lAggressors.get(0) : WarManager.lWars.get(this.key).lDefenders.get(0)).iCivID).getCivName(), CFG.FONT_BOLD, Colors.HOVER_POSITIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle((WarManager.lWars.get(this.key).warScore > 0.0f ? WarManager.lWars.get(this.key).lAggressors.get(0) : WarManager.lWars.get(this.key).lDefenders.get(0)).iCivID, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("OccupiedProvinces") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(WarManager.lWars.get(this.key).warScoreFromOccupiedProvinces * warScore_Side, 10) + str, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.victoryPoints, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("WarScoreFromBattles") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(WarManager.lWars.get(this.key).warScoreFromBattles * warScore_Side, 10) + str, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.victoryPoints, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TickingWarScore") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(WarManager.lWars.get(this.key).tickingWarScore * warScore_Side, 10) + str, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.victoryPoints, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces", CFG.getPrecision2(GameValues.war.TICKING_WAR_SCORE_EACH_MONTH * 100.0f, 100)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception unused) {
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InGame_Court_WorldWars() {
        int i;
        int i2;
        int height;
        int i3;
        int i4;
        boolean z;
        int i5;
        ArrayList arrayList = new ArrayList();
        int i6 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int menuWidth = (CFG.PADDING * 2) + InGame_CourtOptions2.getMenuWidth();
        int height2 = CFG.PADDING + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY;
        int i7 = CFG.PADDING;
        int i8 = CFG.PADDING;
        int i9 = width - (i6 * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get(GameValues.court.COUNCIL_NAME), Images.council, i6, i8, i9, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        boolean z2 = true;
        int height3 = i8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int width2 = ImageManager.getImage(Images.war).getWidth() + (CFG.PADDING * 4);
        int i10 = CFG.PADDING;
        int height4 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i10 * 2);
        int i11 = (i9 - (CFG.PADDING * 2)) / 2;
        int i12 = (i9 - (CFG.PADDING * 2)) / 4;
        int i13 = CFG.TEXT_HEIGHT + (CFG.PADDING * 6);
        int width3 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() + (CFG.PADDING * 2);
        int width4 = ((((width / 2) - i6) - (CFG.PADDING * 2)) - (width2 / 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        arrayList.add(new Text_Title_v2Center(Game.lang.get("CurrentWars"), -1, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height5 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i14 = 0;
        if (WarManager.iWarsSize > 0) {
            height = height5;
            for (War war : WarManager.lWars.values()) {
                try {
                    int i15 = height + i10;
                    arrayList.add(new ButtonFlag_Diplomacy(WarManager.lWars.get(war.key).lAggressors.get(i14).iCivID, (((width / 2) - (width2 / 2)) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i15, z2));
                    arrayList.add(new ButtonFlag_Diplomacy(WarManager.lWars.get(war.key).lDefenders.get(i14).iCivID, (width / 2) + (width2 / 2) + (CFG.PADDING * 2), i15, z2));
                    arrayList.add(new Text_Static_ID(WarManager.lWars.get(war.key).lDefenders.get(i14).iCivID, Game.getCiv(WarManager.lWars.get(war.key).lDefenders.get(i14).iCivID).getCivName(), CFG.FONT_REGULAR_SMALL, -1, (width / 2) + (width2 / 2) + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), height, width4, height4));
                    i3 = menuWidth;
                    z = z2;
                    try {
                        arrayList.add(new Text_Static_ID(WarManager.lWars.get(war.key).lAggressors.get(i14).iCivID, Game.getCiv(WarManager.lWars.get(war.key).lAggressors.get(i14).iCivID).getCivName(), CFG.FONT_REGULAR_SMALL, -1, i6, height, width4, height4));
                        arrayList.add(new AnonymousClass2(Images.war, i6, height, i9, height4, width2));
                        arrayList.get(arrayList.size() - 1).setText2(war.key);
                        int height6 = height + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        try {
                            i4 = width2;
                            try {
                                arrayList.add(new AnonymousClass3("" + CFG.getShortNumber(WarManager.lWars.get(war.key).getCasualties_Aggressors()), Images.skull, i6, height6, i12, i13, width3, 0));
                                arrayList.add(new AnonymousClass4("" + CFG.getShortNumber(WarManager.lWars.get(war.key).getCasualties_Aggressors()), Images.skull, (width - i6) - i12, height6, i12, i13, width3, 0));
                                i5 = 0;
                                try {
                                    arrayList.add(new AnonymousClass5(Game.lang.get("WarScore") + ": ", i6 + i12 + CFG.PADDING, height6, i11, i13, WarManager.lWars.get(war.key).lAggressors.get(0).iCivID, WarManager.lWars.get(war.key).lDefenders.get(0).iCivID, war.key));
                                    height = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                                } catch (Exception e) {
                                    e = e;
                                    height = height6;
                                    CFG.exceptionStack(e);
                                }
                            } catch (Exception e2) {
                                e = e2;
                                i5 = 0;
                                height = height6;
                                CFG.exceptionStack(e);
                                i14 = i5;
                                menuWidth = i3;
                                z2 = z;
                                width2 = i4;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            i4 = width2;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        i4 = width2;
                        i5 = 0;
                    }
                } catch (Exception e5) {
                    e = e5;
                    i3 = menuWidth;
                    i4 = width2;
                    z = z2;
                    i5 = i14;
                }
                i14 = i5;
                menuWidth = i3;
                z2 = z;
                width2 = i4;
            }
            i = menuWidth;
            i2 = i14;
        } else {
            i = menuWidth;
            i2 = 0;
            arrayList.add(new Text_StaticBG(Game.lang.get("None") + ".", CFG.FONT_REGULAR_SMALL, -1, i6, height5, i9, ImageManager.getImage(Images.generalFrameBattle).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
            height = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i16 = height;
        int i17 = InGame_CourtOptions.menuH + height2;
        int iMin = Math.min(i16, (CFG.GAME_HEIGHT - i17) - (CFG.PADDING * 3));
        arrayList.add(new Empty(i2, i2, width, Math.max(i16, iMin)));
        initMenu(null, i, i17, width, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = i2;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get(Game.map.lMaps.get(Game.map.getActiveMapID()).mapData.Name));
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
