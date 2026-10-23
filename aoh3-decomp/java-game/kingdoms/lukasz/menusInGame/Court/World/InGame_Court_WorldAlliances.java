package aoc.kingdoms.lukasz.menusInGame.Court.World;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_AllianceSpecial;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_TitleSpecial_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_WorldAlliances extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldAlliances$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldAlliances$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonFlag_AllianceSpecial {
        AnonymousClass2(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 35 && InGame_AllianceSpecial.allianceID == getCurrent()) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.rebuildInGame_AllianceSpecial(getCurrent());
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldAlliances$3, reason: invalid class name */
    class AnonymousClass3 extends Text_StaticBG_TitleSpecial_ID {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 35 && InGame_AllianceSpecial.allianceID == getCurrent()) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.rebuildInGame_AllianceSpecial(getCurrent());
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldAlliances$4, reason: invalid class name */
    class AnonymousClass4 extends TextIcon_Diplomacy {
        AnonymousClass4(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return Colors.COLOR_GRADIENT_OVER_BLUE;
        }
    }

    public InGame_Court_WorldAlliances() {
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        int i3 = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int i4 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int menuWidth = (CFG.PADDING * 2) + InGame_CourtOptions2.getMenuWidth();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i5 = CFG.PADDING;
        int i6 = CFG.PADDING;
        int i7 = width - (i3 * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get(GameValues.court.COUNCIL_NAME), Images.council, i3, i6, i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.council).getWidth() + (CFG.PADDING * 4), true));
        int height2 = i6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int width2 = ImageManager.getImage(Images.alliance).getWidth() + (CFG.PADDING * 4);
        int i8 = CFG.PADDING;
        int height3 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i8 * 2);
        int i9 = width / 2;
        int i10 = width2 / 2;
        int width3 = (((i9 - i3) - (CFG.PADDING * 2)) - i10) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Alliances"), -1, Images.boxTitleBORDERWIDTH, height2, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height4 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int size = arrayList.size();
        int buttonHeight = (ButtonFlag_AllianceSpecial.getButtonHeight() - ButtonFlag_Diplomacy.getButtonHeight()) - CFG.PADDING;
        int i11 = 0;
        while (i11 < Game.alliancesSpecialSize) {
            int i12 = height4 + (CFG.PADDING * 2);
            arrayList.add(new AnonymousClass2(i11, i4, i12));
            int i13 = i4 * 2;
            int i14 = i11;
            arrayList.add(new AnonymousClass3(Game.lang.get(Game.alliancesSpecial.get(i11).Name_Alliance), CFG.FONT_REGULAR, -1, ButtonFlag_AllianceSpecial.getButtonWidth() + i4 + (CFG.PADDING * 2), i12, width - ((i13 + ButtonFlag_AllianceSpecial.getButtonWidth()) + (CFG.PADDING * 2)), buttonHeight, i14));
            int i15 = i12 + buttonHeight;
            arrayList.add(new ButtonFlag_Diplomacy(Game.alliancesSpecial.get(i14).iLeaderCivID, CFG.PADDING + i4 + ButtonFlag_AllianceSpecial.getButtonWidth() + CFG.PADDING, CFG.PADDING + i15, true));
            arrayList.add(new Text_Static_ID(Game.alliancesSpecial.get(i14).iLeaderCivID, Game.getCiv(Game.alliancesSpecial.get(i14).iLeaderCivID).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, ButtonFlag_AllianceSpecial.getButtonWidth() + i4 + (CFG.PADDING * 2) + ButtonFlag_Diplomacy.getButtonWidth(), i15 + CFG.PADDING, width - (((i13 + ButtonFlag_AllianceSpecial.getButtonWidth()) + (CFG.PADDING * 2)) + ButtonFlag_Diplomacy.getButtonWidth()), ButtonFlag_Diplomacy.getButtonHeight()));
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i3, i12 - (CFG.PADDING * 2), i7, ButtonFlag_AllianceSpecial.getButtonHeight() + (CFG.PADDING * 4)));
            height4 = i12 + (arrayList.get(arrayList.size() - 1).getHeight() - CFG.PADDING);
            i11 = i14 + 1;
            size = size;
        }
        int i16 = size;
        int i17 = 1;
        while (i17 < Game.getCivsSize()) {
            if (Game.getCiv(i17).diplomacy.alliance.size() > 0) {
                int height5 = height4;
                for (Map.Entry<Integer, Diplomacy.DiplomacyData> entry : Game.getCiv(i17).diplomacy.alliance.entrySet()) {
                    if (entry.getKey().intValue() > i17) {
                        int i18 = height5 + i8;
                        arrayList.add(new ButtonFlag_Diplomacy(i17, ((i9 - i10) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i18, true));
                        int i19 = i9 + i10;
                        arrayList.add(new ButtonFlag_Diplomacy(entry.getValue().iCivID, (CFG.PADDING * 2) + i19, i18, true));
                        arrayList.add(new Text_Static_ID(entry.getValue().iCivID, Game.getCiv(entry.getValue().iCivID).getCivName(), CFG.FONT_REGULAR_SMALL, -1, i19 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), height5, width3, height3));
                        i2 = i3;
                        arrayList.add(new Text_Static_ID(i17, Game.getCiv(i17).getCivName(), CFG.FONT_REGULAR_SMALL, -1, i2, height5, width3, height3));
                        width = width;
                        arrayList.add(new AnonymousClass4(Images.alliance, i2, height5, i7, height3, width2));
                        height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    } else {
                        i2 = i3;
                    }
                    i3 = i2;
                }
                i = i3;
                height4 = height5;
            } else {
                i = i3;
            }
            i17++;
            i3 = i;
        }
        int i20 = i3;
        if (i16 == arrayList.size()) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None") + ".", CFG.FONT_REGULAR_SMALL, -1, i20, height4, i7, ImageManager.getImage(Images.generalFrameBattle).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i21 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - i21) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height4, iMin)));
        initMenu(null, menuWidth, i21, width, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = false;
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
