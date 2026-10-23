package aoc.kingdoms.lukasz.menus.Settings;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.FBOProvinceNames;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.setting.SettingsDesktop;
import aoc.kingdoms.lukasz.jakowski.setting.SettingsManager;
import aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.map.Ship.ShipManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Slider;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menus.Init_SelectLanguage;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Settings_Menu extends Menu {
    public int nanoW;
    public int statTextPercW;
    public int statTextW;
    public static View goBackToMenu = View.MAINMENU;
    public static long provinceInView_Time = 0;
    public static long drawProvinces_Time = 0;
    public static long drawProvincesFBO_Time = 0;
    public static long drawArmies_Time = 0;
    public static long drawProvincesBorder_Time = 0;
    public static long drawProvincesNames_Time = 0;
    public static long drawCivsNames_Time = 0;
    public static long drawCities_Time = 0;
    public static long drawMoveUnits_Time = 0;
    public static long drawClouds_Time = 0;
    public static long drawShips_Time = 0;
    public static long drawShips2_Time = 0;
    public static long drawMapBorder_Time = 0;
    public static boolean updateTimes = true;
    public static long lastUpdateTime = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame2 {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.saveSettings();
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(Settings_Menu.goBackToMenu);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonGame2 {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            boolean z;
            int i = 0;
            while (true) {
                if (i >= GameValues.value.AUTO_SAVE_DAYS.length) {
                    z = false;
                    break;
                } else {
                    if (GameValues.value.AUTO_SAVE_DAYS[i] == Game.settingsManager.AUTO_SAVE_DAYS) {
                        z = true;
                        Game.settingsManager.AUTO_SAVE_DAYS = GameValues.value.AUTO_SAVE_DAYS[Math.min(GameValues.value.AUTO_SAVE_DAYS.length - 1, i + 1)];
                        break;
                    }
                    i++;
                }
            }
            if (!z) {
                Game.settingsManager.AUTO_SAVE_DAYS = GameValues.value.AUTO_SAVE_DAYS[0];
            }
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonGame2 {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.IN_GAME_LEFT_PADDING_EXTRA--;
            Settings_Menu.this.updateLanguage();
            Game.menuManager.rebuildInGame_CourtOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonGame2 {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText_InGamePaddingLeft());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonGame2 {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.IN_GAME_LEFT_PADDING_EXTRA++;
            Settings_Menu.this.updateLanguage();
            Game.menuManager.rebuildInGame_CourtOptions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonGame2 {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleSettingsAudio()) {
                Game.menuManager.setVisibleSettingsAudio(false);
            } else {
                Game.menuManager.rebuildSettingsAudio();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$15, reason: invalid class name */
    class AnonymousClass15 extends Text_Title_v2_TextLR {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center("Render Time Details", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("On the right side of the menu, in a black box, you can check which elements take the most render time.", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Typically, these are:", CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Province Borders", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Province Names", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("After each change, check the FPS to see if the improvements are sufficient.", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Steps to Improve FPS", CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(lOow.FTrQfv, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonGame2 {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettingsProvinceBorder(-1);
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonGame2 {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonGame2 {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettingsProvinceBorder(1);
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonGame2 {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText_Double());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame2 {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsDesktop.fullscreen = !SettingsDesktop.fullscreen;
            SettingsDesktop.saveConfig();
            Game.menuManager.addToastGold(Game.lang.get("GameNeedsToBeRestartedToApplyTheChanges"), Images.settings);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return SettingsDesktop.fullscreen;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$20, reason: invalid class name */
    class AnonymousClass20 extends ButtonGame2 {
        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettings_Double();
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonGame2 {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettingsProvinceNames(-1);
            Settings_Menu.this.updateLanguage();
            FBOProvinceNames.redrawnProvinceNames();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$22, reason: invalid class name */
    class AnonymousClass22 extends ButtonGame2 {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText_Names());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$23, reason: invalid class name */
    class AnonymousClass23 extends ButtonGame2 {
        AnonymousClass23(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettingsProvinceNames(1);
            Settings_Menu.this.updateLanguage();
            FBOProvinceNames.redrawnProvinceNames();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$24, reason: invalid class name */
    class AnonymousClass24 extends ButtonGame2 {
        AnonymousClass24(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettingsProvinceNames_Scale(-1);
            Settings_Menu.this.updateLanguage();
            FBOProvinceNames.redrawnProvinceNames();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$25, reason: invalid class name */
    class AnonymousClass25 extends ButtonGame2 {
        AnonymousClass25(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("ProvinceNamesMinScale") + ": " + CFG.getPrecision2(Game.settingsManager.PROVINCE_NAMES_SCALE, 1000));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$26, reason: invalid class name */
    class AnonymousClass26 extends ButtonGame2 {
        AnonymousClass26(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettingsProvinceNames_Scale(1);
            Settings_Menu.this.updateLanguage();
            FBOProvinceNames.redrawnProvinceNames();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$27, reason: invalid class name */
    class AnonymousClass27 extends ButtonGame2 {
        AnonymousClass27(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettingsCivNames(-1);
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$28, reason: invalid class name */
    class AnonymousClass28 extends ButtonGame2 {
        AnonymousClass28(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText_CivNames());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$29, reason: invalid class name */
    class AnonymousClass29 extends ButtonGame2 {
        AnonymousClass29(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettingsCivNames(1);
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame2 {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SETTINGS_RESOLUTION);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            StringBuilder sbAppend;
            int i;
            StringBuilder sbAppend2 = new StringBuilder().append(Game.lang.get("Resolution")).append(": ");
            if (SettingsDesktop.iWidth <= 0 || SettingsDesktop.iHeight <= 0) {
                sbAppend = new StringBuilder().append(CFG.GAME_WIDTH).append("x");
                i = CFG.GAME_HEIGHT;
            } else {
                sbAppend = new StringBuilder().append(SettingsDesktop.iWidth).append(" x ");
                i = SettingsDesktop.iHeight;
            }
            setText(sbAppend2.append(sbAppend.append(i).toString()).toString());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$30, reason: invalid class name */
    class AnonymousClass30 extends ButtonGame2 {
        AnonymousClass30(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettings_ProvinceFlags(-1);
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$31, reason: invalid class name */
    class AnonymousClass31 extends ButtonGame2 {
        AnonymousClass31(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText_ProvinceFlags());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$32, reason: invalid class name */
    class AnonymousClass32 extends ButtonGame2 {
        AnonymousClass32(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettings_ProvinceFlags(1);
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$33, reason: invalid class name */
    class AnonymousClass33 extends ButtonGame2 {
        AnonymousClass33(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText_Cities());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$34, reason: invalid class name */
    class AnonymousClass34 extends ButtonGame2 {
        AnonymousClass34(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettings_Cities();
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$35, reason: invalid class name */
    class AnonymousClass35 extends Slider {
        AnonymousClass35(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.SHIPS_ON_MAP = getCurrent();
            ShipManager.updateLimitOfShipsAtSea();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return this.sText + Game.settingsManager.SHIPS_ON_MAP + "%";
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getScrollable() {
            return false;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$36, reason: invalid class name */
    class AnonymousClass36 extends ButtonGame2 {
        AnonymousClass36(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText_Clouds());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$37, reason: invalid class name */
    class AnonymousClass37 extends ButtonGame2 {
        AnonymousClass37(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettings_Clouds();
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$38, reason: invalid class name */
    class AnonymousClass38 extends ButtonGame2 {
        AnonymousClass38(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.DRAW_ARMY_MIN_SCALE = Math.max(0.05f, Game.DRAW_ARMY_MIN_SCALE - 0.05f);
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$39, reason: invalid class name */
    class AnonymousClass39 extends ButtonGame2 {
        AnonymousClass39(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("DrawArmyScale") + ": " + CFG.getPrecision2(Game.DRAW_ARMY_MIN_SCALE, 100));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame2 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SETTINGS_UI);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$40, reason: invalid class name */
    class AnonymousClass40 extends ButtonGame2 {
        AnonymousClass40(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.DRAW_ARMY_MIN_SCALE = Math.min(1.0f, Game.DRAW_ARMY_MIN_SCALE + 0.05f);
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$41, reason: invalid class name */
    class AnonymousClass41 extends ButtonGame2 {
        AnonymousClass41(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText_FBO());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$42, reason: invalid class name */
    class AnonymousClass42 extends ButtonGame2 {
        AnonymousClass42(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettings_FBO();
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$43, reason: invalid class name */
    class AnonymousClass43 extends ButtonGame2 {
        AnonymousClass43(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText_FBO_Provinces());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$44, reason: invalid class name */
    class AnonymousClass44 extends ButtonGame2 {
        AnonymousClass44(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsProvince.updateSettings_FBO_Provinces();
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$45, reason: invalid class name */
    class AnonymousClass45 extends ButtonGame2 {
        AnonymousClass45(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.BORDER_EXTRA_WIDTH = Math.max(0.0f, Game.settingsManager.BORDER_EXTRA_WIDTH - 0.25f);
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$46, reason: invalid class name */
    class AnonymousClass46 extends ButtonGame2 {
        AnonymousClass46(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(SettingsProvince.getSettingsText_ProvincesBorderExtra());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$47, reason: invalid class name */
    class AnonymousClass47 extends ButtonGame2 {
        AnonymousClass47(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.BORDER_EXTRA_WIDTH = Math.max(0.0f, Game.settingsManager.BORDER_EXTRA_WIDTH + 0.25f);
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$48, reason: invalid class name */
    class AnonymousClass48 extends Slider {
        AnonymousClass48(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.PROVINCE_ALPHA = getCurrent() / 255.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Default") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(31.372551f, 1) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return this.sText + CFG.getPrecision2((getCurrent() / 255.0f) * 100.0f, 1) + "%";
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getScrollable() {
            return false;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$49, reason: invalid class name */
    class AnonymousClass49 extends Slider {
        AnonymousClass49(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.PROVINCE_OCCUPIED_ALPHA_EXTRA = getCurrent() / 100.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Default") + HjHDSSkYG.rRQFdR, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(25.0f, 1) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return this.sText + CFG.getPrecision2(Game.settingsManager.PROVINCE_OCCUPIED_ALPHA_EXTRA * 100.0f, 1) + "%";
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getScrollable() {
            return false;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame2 {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Init_SelectLanguage.goBackToMenu = View.SETTINGS;
            Game.menuManager.setViewIDWithoutAnimation(View.INIT_GAME_MENU_LANGUAGE);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$50, reason: invalid class name */
    class AnonymousClass50 extends Slider {
        AnonymousClass50(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.PROVINCE_ALPHA_WASTELAND = getCurrent() / 255.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Default") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(30.000002f, 1) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return this.sText + CFG.getPrecision2((getCurrent() / 255.0f) * 100.0f, 1) + "%";
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getScrollable() {
            return false;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$51, reason: invalid class name */
    class AnonymousClass51 extends Slider {
        AnonymousClass51(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.PROVINCE_NAMES_ALPHA = getCurrent() / 255.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Default") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(45.0f, 1) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return this.sText + CFG.getPrecision2((getCurrent() / 255.0f) * 100.0f, 1) + "%";
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getScrollable() {
            return false;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$52, reason: invalid class name */
    class AnonymousClass52 extends Slider {
        AnonymousClass52(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.CIV_NAMES_TEXT_ALPHA = getCurrent() / 255.0f;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Default") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(50.0f, 1) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return this.sText + CFG.getPrecision2((getCurrent() / 255.0f) * 100.0f, 1) + "%";
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getScrollable() {
            return false;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$53, reason: invalid class name */
    class AnonymousClass53 extends ButtonGame2 {
        AnonymousClass53(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Reduce texture quality for better performance on graphics cards with low VRAM. Additionally, consider disabling FBO.", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return Game.highTextureSettings;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            LanguageManager languageManager;
            String str;
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("TexturesQuality")).append(": ");
            if (Game.highTextureSettings) {
                languageManager = Game.lang;
                str = "High";
            } else {
                languageManager = Game.lang;
                str = "Low";
            }
            setText(sbAppend.append(languageManager.get(str)).toString());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$54, reason: invalid class name */
    class AnonymousClass54 extends ButtonGame2 {
        AnonymousClass54(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.highTextureSettings = !Game.highTextureSettings;
            Game.saveTextueSettings();
            Game.menuManager.addToastGold(Game.lang.get("GameNeedsToBeRestartedToApplyTheChanges"), Images.settings);
            Settings_Menu.this.updateLanguage();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Reduce texture quality for better performance on graphics cards with low VRAM. Additionally, consider disabling FBO.", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$55, reason: invalid class name */
    class AnonymousClass55 extends ButtonGame2 {
        AnonymousClass55(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.COUNCIL_TIPS = !Game.settingsManager.COUNCIL_TIPS;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return Game.settingsManager.COUNCIL_TIPS;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$56, reason: invalid class name */
    class AnonymousClass56 extends ButtonGame2 {
        AnonymousClass56(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.ENABLE_EDGE_SCROLL = !Game.settingsManager.ENABLE_EDGE_SCROLL;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return Game.settingsManager.ENABLE_EDGE_SCROLL;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$57, reason: invalid class name */
    class AnonymousClass57 extends ButtonGame2 {
        AnonymousClass57(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SettingsDesktop.vSync = !SettingsDesktop.vSync;
            SettingsDesktop.saveConfig();
            Game.menuManager.addToastGold(Game.lang.get("GameNeedsToBeRestartedToApplyTheChanges"), Images.settings);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return SettingsDesktop.vSync;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$58, reason: invalid class name */
    class AnonymousClass58 extends ButtonGame2 {
        AnonymousClass58(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager = new SettingsManager();
            Game.loadSettingsDefault();
            GameValues.updateSettingsFBO();
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame2 {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return !Game.settingsManager.enableHideSideMenu;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            LanguageManager languageManager;
            String str;
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Sidebar")).append(": ");
            if (Game.settingsManager.enableHideSideMenu) {
                languageManager = Game.lang;
                str = cIUGJCqyPXfp.GSHDvnovdL;
            } else {
                languageManager = Game.lang;
                str = "On";
            }
            setText(sbAppend.append(languageManager.get(str)).toString());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame2 {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.settingsManager.enableHideSideMenu = !Game.settingsManager.enableHideSideMenu;
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame2 {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            boolean z;
            int i = 0;
            while (true) {
                if (i >= GameValues.value.AUTO_SAVE_DAYS.length) {
                    z = false;
                    break;
                } else {
                    if (GameValues.value.AUTO_SAVE_DAYS[i] == Game.settingsManager.AUTO_SAVE_DAYS) {
                        z = true;
                        Game.settingsManager.AUTO_SAVE_DAYS = GameValues.value.AUTO_SAVE_DAYS[Math.max(0, i - 1)];
                        break;
                    }
                    i++;
                }
            }
            if (!z) {
                Game.settingsManager.AUTO_SAVE_DAYS = GameValues.value.AUTO_SAVE_DAYS[0];
            }
            Settings_Menu.this.updateLanguage();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Settings.Settings_Menu$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonGame2 {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get(CFG.FILE_SAVES_AUTOSAVE) + ": " + (Game.settingsManager.AUTO_SAVE_DAYS == 0 ? Game.lang.get("Off") : Game.lang.get("DaysX", Game.settingsManager.AUTO_SAVE_DAYS)));
        }
    }

    public Settings_Menu() {
        String str;
        StringBuilder sbAppend;
        int i;
        this.statTextW = 0;
        this.statTextPercW = 0;
        this.nanoW = 0;
        ArrayList arrayList = new ArrayList();
        int i2 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.title600).getWidth();
        int i3 = CFG.BUTTON_WIDTH;
        int i4 = Renderer.boxBGExtraY;
        int i5 = CFG.PADDING;
        ImageManager.getImage(Images.topStats).getHeight();
        int i6 = CFG.PADDING;
        ImageManager.getImage(Images.title600).getHeight();
        int i7 = CFG.PADDING * 2;
        int i8 = width - (i2 * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Back"), 1, -1, i2, i7, i8, true, CFG.BUTTON_HEIGHT2));
        int height = i7 + arrayList.get(arrayList.size() - 1).getHeight() + i7;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Graphics"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (CFG.isDesktop()) {
            str = ": ";
            arrayList.add(new AnonymousClass2(Game.lang.get("Fullscreen"), CFG.FONT_REGULAR, -1, i2, height2, i8, true, CFG.BUTTON_HEIGHT, true));
            int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            StringBuilder sbAppend2 = new StringBuilder().append(Game.lang.get("Resolution")).append(str);
            if (SettingsDesktop.iWidth <= 0 || SettingsDesktop.iHeight <= 0) {
                sbAppend = new StringBuilder().append(CFG.GAME_WIDTH).append("x");
                i = CFG.GAME_HEIGHT;
            } else {
                sbAppend = new StringBuilder().append(SettingsDesktop.iWidth).append(" x ");
                i = SettingsDesktop.iHeight;
            }
            arrayList.add(new AnonymousClass3(sbAppend2.append(sbAppend.append(i).toString()).toString(), CFG.FONT_REGULAR, -1, i2, height3, i8, true, CFG.BUTTON_HEIGHT));
            height2 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            str = ": ";
        }
        arrayList.add(new AnonymousClass4(Game.lang.get("UIScale"), CFG.FONT_REGULAR, -1, i2, height2, i8, true, CFG.BUTTON_HEIGHT));
        int height4 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Game"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height4, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass5(Game.lang.get("SelectLanguage"), 1, -1, i2, height5, i8, true, CFG.BUTTON_HEIGHT));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass6(SettingsProvince.getSettingsText_Double(), CFG.FONT_REGULAR, -1, i2, height6, i8 - (CFG.BUTTON_WIDTH + CFG.PADDING), true, CFG.BUTTON_HEIGHT, true));
        arrayList.add(new AnonymousClass7(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height6, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass8("<<", CFG.FONT_BOLD, -1, i2, height7, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass9(Game.lang.get(CFG.FILE_SAVES_AUTOSAVE) + str + (Game.settingsManager.AUTO_SAVE_DAYS == 0 ? Game.lang.get("Off") : Game.lang.get("DaysX", Game.settingsManager.AUTO_SAVE_DAYS)), CFG.FONT_REGULAR, -1, CFG.BUTTON_WIDTH + i2 + CFG.PADDING, height7, i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2)), true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass10(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height7, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (!CFG.isDesktop()) {
            arrayList.add(new AnonymousClass11("<<", CFG.FONT_BOLD, -1, i2, height8, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
            arrayList.add(new AnonymousClass12(SettingsProvince.getSettingsText_InGamePaddingLeft(), CFG.FONT_REGULAR, -1, CFG.BUTTON_WIDTH + i2 + CFG.PADDING, height8, i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2)), true, CFG.BUTTON_HEIGHT));
            arrayList.add(new AnonymousClass13(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height8, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
            height8 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Audio"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height8, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass14(Game.lang.get("Audio"), 1, -1, i2, height9, i8, true, CFG.BUTTON_HEIGHT));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass15(Game.lang.get("Provinces"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height10, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6), ""));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass16("<<", CFG.FONT_BOLD, -1, i2, height11, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass17(SettingsProvince.getSettingsText(), CFG.FONT_REGULAR, -1, CFG.BUTTON_WIDTH + i2 + CFG.PADDING, height11, i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2)), true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass18(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height11, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height12 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass19(SettingsProvince.getSettingsText_Double(), CFG.FONT_REGULAR, -1, i2, height12, i8 - (CFG.BUTTON_WIDTH + CFG.PADDING), true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass20(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height12, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height13 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass21("<<", CFG.FONT_BOLD, -1, i2, height13, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass22(SettingsProvince.getSettingsText_Names(), CFG.FONT_REGULAR, -1, CFG.BUTTON_WIDTH + i2 + CFG.PADDING, height13, i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2)), true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass23(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height13, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass24("<<", CFG.FONT_BOLD, -1, i2, height14, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass25(SettingsProvince.getSettingsText_Names(), CFG.FONT_REGULAR, -1, CFG.BUTTON_WIDTH + i2 + CFG.PADDING, height14, i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2)), true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass26(aBEBOpwLZcQFCZ.tZqSlaPUWdgq, CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height14, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass27("<<", CFG.FONT_BOLD, -1, i2, height15, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass28(SettingsProvince.getSettingsText_CivNames(), CFG.FONT_REGULAR, -1, CFG.BUTTON_WIDTH + i2 + CFG.PADDING, height15, i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2)), true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass29(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height15, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height16 = height15 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass30("<<", CFG.FONT_BOLD, -1, i2, height16, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass31(SettingsProvince.getSettingsText_ProvinceFlags(), CFG.FONT_REGULAR, -1, CFG.BUTTON_WIDTH + i2 + CFG.PADDING, height16, i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2)), true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass32(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height16, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass33(SettingsProvince.getSettingsText_Cities(), CFG.FONT_REGULAR, -1, i2, height17, i8 - (CFG.BUTTON_WIDTH + CFG.PADDING), true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass34(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height17, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height18 = height17 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass35(Game.lang.get("Ships") + str, i2, height18, i8, CFG.BUTTON_HEIGHT4, 0, 100, Game.settingsManager.SHIPS_ON_MAP));
        int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (Game.cloudsAnimation.loadClouds()) {
            arrayList.add(new AnonymousClass36(SettingsProvince.getSettingsText_Clouds(), CFG.FONT_REGULAR, -1, i2, height19, i8 - (CFG.BUTTON_WIDTH + CFG.PADDING), true, CFG.BUTTON_HEIGHT));
            arrayList.add(new AnonymousClass37(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height19, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
            height19 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i9 = height19;
        arrayList.add(new AnonymousClass38("<<", CFG.FONT_BOLD, -1, i2, i9, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass39(Game.lang.get("DrawArmyScale") + str + CFG.getPrecision2(Game.DRAW_ARMY_MIN_SCALE, 100), CFG.FONT_REGULAR, -1, CFG.BUTTON_WIDTH + i2 + CFG.PADDING, i9, i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2)), true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass40(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, i9, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height20 = height19 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (CFG.isDesktop() || !GameValues.value.MOBILE_DISABLE_FBO) {
            arrayList.add(new AnonymousClass41(SettingsProvince.getSettingsText_FBO(), CFG.FONT_REGULAR, -1, i2, height20, i8 - (CFG.BUTTON_WIDTH + CFG.PADDING), true, CFG.BUTTON_HEIGHT));
            arrayList.add(new AnonymousClass42(fiRhHJntP.RVkRRAtLKQfE, CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height20, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
            int height21 = height20 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass43(SettingsProvince.getSettingsText_FBO_Provinces(), CFG.FONT_REGULAR, -1, i2, height21, i8 - (CFG.BUTTON_WIDTH + CFG.PADDING), true, CFG.BUTTON_HEIGHT));
            arrayList.add(new AnonymousClass44(">>", CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height21, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
            height20 = height21 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("ProvinceBorder") + str + Game.lang.get("Extra"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height20, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height22 = height20 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass45("<<", CFG.FONT_BOLD, -1, i2, height22, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass46(SettingsProvince.getSettingsText_ProvincesBorderExtra(), CFG.FONT_REGULAR, -1, CFG.BUTTON_WIDTH + i2 + CFG.PADDING, height22, i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2)), true, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass47(fiRhHJntP.AhkxSdnW, CFG.FONT_BOLD, -1, (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + i2 + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height22, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height23 = height22 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Provinces") + str + Game.lang.get("Alpha"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height23, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height24 = height23 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass48(Game.lang.get("ProvinceAlpha") + str, i2, height24, i8, CFG.BUTTON_HEIGHT4, 10, 255, (int) (Game.settingsManager.PROVINCE_ALPHA * 255.0f)));
        int height25 = height24 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass49(Game.lang.get("Alpha") + ", " + Game.lang.get("OccupiedProvinces") + str, i2, height25, i8, CFG.BUTTON_HEIGHT4, 10, 100, (int) (Game.settingsManager.PROVINCE_OCCUPIED_ALPHA_EXTRA * 100.0f)));
        int height26 = height25 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass50(Game.lang.get("Alpha") + ", " + Game.lang.get("Wasteland") + str, i2, height26, i8, CFG.BUTTON_HEIGHT4, 10, 255, (int) (Game.settingsManager.PROVINCE_ALPHA_WASTELAND * 255.0f)));
        int height27 = height26 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass51(Game.lang.get("Alpha") + ", " + Game.lang.get("ProvinceNames") + str, i2, height27, i8, CFG.BUTTON_HEIGHT4, 10, 255, (int) (Game.settingsManager.PROVINCE_NAMES_ALPHA * 255.0f)));
        int height28 = height27 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass52(Game.lang.get("Alpha") + ", " + Game.lang.get("CivilizationsNames") + str, i2, height28, i8, CFG.BUTTON_HEIGHT4, 10, 255, (int) (Game.settingsManager.CIV_NAMES_TEXT_ALPHA * 255.0f)));
        int height29 = height28 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("TexturesQuality"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height29, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height30 = height29 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass53(SettingsProvince.getSettingsText_Double(), CFG.FONT_REGULAR, -1, i2, height30, i8 - (CFG.BUTTON_WIDTH + CFG.PADDING), true, CFG.BUTTON_HEIGHT, true));
        arrayList.add(new AnonymousClass54(">>", CFG.FONT_BOLD, -1, i2 + (i8 - ((CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2))) + (CFG.PADDING * 2) + CFG.BUTTON_WIDTH, height30, CFG.BUTTON_WIDTH, true, CFG.BUTTON_HEIGHT));
        int height31 = height30 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("More"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height31, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height32 = height31 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass55(Game.lang.get("Council") + str + Game.lang.get("Tip"), CFG.FONT_REGULAR, -1, i2, height32, i8, true, CFG.BUTTON_HEIGHT, true));
        int height33 = height32 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass56(Game.lang.get("EdgeScrolling"), CFG.FONT_REGULAR, -1, i2, height33, i8, true, CFG.BUTTON_HEIGHT, true));
        int height34 = height33 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (CFG.isDesktop()) {
            arrayList.add(new AnonymousClass57(Game.lang.get("VSync"), CFG.FONT_REGULAR, -1, i2, height34, i8, true, CFG.BUTTON_HEIGHT, true));
            height34 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(new AnonymousClass58(Game.lang.get("Reset"), 1, -1, i2, height34, i8, true, CFG.BUTTON_HEIGHT));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i10 = CFG.PADDING;
        int size = arrayList.size();
        int posY = 0;
        for (int i11 = 0; i11 < size; i11++) {
            if (posY < arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - (CFG.GAME_HEIGHT / 8)) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new MenuTitleIMG(Game.lang.get("Settings"), false, false, Images.title600), CFG.GAME_WIDTH / 10, CFG.GAME_HEIGHT / 8, width, iMin, arrayList, true, false);
        this.drawScrollPositionAlways = false;
        this.statTextW = Renderer.getTextWidth("Provinces Border: 12", CFG.FONT_REGULAR_SMALL);
        this.statTextPercW = Renderer.getTextWidth("1000%", CFG.FONT_REGULAR_SMALL);
        this.nanoW = Renderer.getTextWidth("X16 666 667", CFG.FONT_REGULAR_SMALL);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (GameValues.value.SETTINGS_MENU_DRAW_TIMES) {
            int i3 = CFG.PADDING * 4;
            long j = drawProvinces_Time + drawProvincesFBO_Time + drawArmies_Time + drawProvincesBorder_Time + drawProvincesNames_Time + drawCivsNames_Time + drawCities_Time + drawMoveUnits_Time + drawClouds_Time + drawShips_Time + drawShips2_Time + drawMapBorder_Time;
            Renderer.drawBoxCorner(spriteBatch, (((getPosX() + getWidth()) + i3) - (CFG.PADDING * 2)) + i, ((getPosY() + 0) - (CFG.PADDING * 2)) + i2, (CFG.PADDING * 4) + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + this.nanoW, ((CFG.TEXT_HEIGHT_SMALL + CFG.PADDING) * 16) + (CFG.PADDING * 2));
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, hQfu.XSPnOEOtq, getPosX() + getWidth() + i3 + i, getPosY() + 0 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Perc", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + 0 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Nanotime", getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + 0 + i2, Colors.HOVER_LEFT);
            int i4 = CFG.TEXT_HEIGHT_SMALL + CFG.PADDING + 0;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Update Provinces ", getPosX() + getWidth() + i3 + i, getPosY() + i4 + i2, Colors.HOVER_LEFT);
            float f = j;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((provinceInView_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i4 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + provinceInView_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i4 + i2, Colors.HOVER_LEFT);
            int i5 = i4 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Draw Provinces ", getPosX() + getWidth() + i3 + i, getPosY() + i5 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawProvinces_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i5 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawProvinces_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i5 + i2, Colors.HOVER_LEFT);
            int i6 = i5 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, MQYGMkZOAcS.mXnmKliY, getPosX() + getWidth() + i3 + i, getPosY() + i6 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawProvincesFBO_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i6 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawProvincesFBO_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i6 + i2, Colors.HOVER_LEFT);
            int i7 = i6 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Provinces Border ", getPosX() + getWidth() + i3 + i, getPosY() + i7 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawProvincesBorder_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i7 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawProvincesBorder_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i7 + i2, Colors.HOVER_LEFT);
            int i8 = i7 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Provinces Names ", getPosX() + getWidth() + i3 + i, getPosY() + i8 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawProvincesNames_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i8 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawProvincesNames_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i8 + i2, Colors.HOVER_LEFT);
            int i9 = i8 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Civs Names ", getPosX() + getWidth() + i3 + i, getPosY() + i9 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawCivsNames_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i9 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawCivsNames_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i9 + i2, Colors.HOVER_LEFT);
            int i10 = i9 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Cities & Flags ", getPosX() + getWidth() + i3 + i, getPosY() + i10 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawCities_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i10 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawCities_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i10 + i2, Colors.HOVER_LEFT);
            int i11 = i10 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Clouds ", getPosX() + getWidth() + i3 + i, getPosY() + i11 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawClouds_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i11 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawClouds_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i11 + i2, Colors.HOVER_LEFT);
            int i12 = i11 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Ships ", getPosX() + getWidth() + i3 + i, getPosY() + i12 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawShips_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i12 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawShips_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i12 + i2, Colors.HOVER_LEFT);
            int i13 = i12 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Ships 2 ", getPosX() + getWidth() + i3 + i, getPosY() + i13 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawShips2_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i13 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawShips2_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i13 + i2, Colors.HOVER_LEFT);
            int i14 = i13 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Armies ", getPosX() + getWidth() + i3 + i, getPosY() + i14 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawArmies_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i14 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawArmies_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i14 + i2, Colors.HOVER_LEFT);
            int i15 = i14 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Move Units ", getPosX() + getWidth() + i3 + i, getPosY() + i15 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawMoveUnits_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i15 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawMoveUnits_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i15 + i2, Colors.HOVER_LEFT);
            int i16 = i15 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "Map Border ", getPosX() + getWidth() + i3 + i, getPosY() + i16 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "" + CFG.getPrecision2((drawMapBorder_Time / f) * 100.0f, 1) + "%", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i16 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, CFG.getNumberWithSpaces("" + drawMapBorder_Time), getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i16 + i2, Colors.HOVER_LEFT);
            int i17 = i16 + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING + CFG.TEXT_HEIGHT_SMALL + CFG.PADDING;
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "1 FPS", getPosX() + getWidth() + i3 + i, getPosY() + i17 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "", getPosX() + getWidth() + this.statTextW + (CFG.PADDING * 2) + i3 + i, getPosY() + i17 + i2, Colors.HOVER_LEFT);
            Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, "16 666 667", getPosX() + getWidth() + this.statTextW + this.statTextPercW + (CFG.PADDING * 3) + i3 + i, getPosY() + i17 + i2, Colors.HOVER_LEFT);
        }
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop600, Images.insideBot600);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
    }
}
