package aoc.kingdoms.lukasz.map.map;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Player;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.diplomacy.Diplomacy;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.plague.PlagueManager;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.map.province.ProvinceHover;
import aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Disease;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Religion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ReligionTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Resource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Terrain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.menusInGame.InGame_War;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_Right;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapModeManager {
    protected static final int ANIMATION_TIME = 500;
    public int MODE_ALLIANCES;
    public int MODE_BUILDING;
    public int MODE_CIV_ECONOMY_HOVER;
    public int MODE_CIV_POPULATION_HOVER;
    public int MODE_CIV_STABILITY_HOVER;
    public int MODE_COLONIZE_CHOOSE_PROVINCE;
    public int MODE_CONVERT_RELIGION;
    public int MODE_CORE;
    public int MODE_DECLARE_WAR;
    public int MODE_DEFAULT;
    public int MODE_DEFAULT_TERRAIN;
    public int MODE_DEFENSE_LEVEL;
    public int MODE_DEFENSIVE_PACTS;
    public int MODE_DEVASTATION;
    public int MODE_DEVELOP_INFRASTRUCTURE;
    public int MODE_DIPLOMACY;
    public int MODE_DIPLOMACY_DAMAGE_RELATIONS;
    public int MODE_DIPLOMACY_IMPROVE_RELATIONS;
    public int MODE_DISEASES;
    public int MODE_ECONOMY;
    public int MODE_FORM_CIV;
    public int MODE_GOODS;
    public int MODE_GOVERNMENT;
    public int MODE_INCREASE_GROWTH_RATE;
    public int MODE_INCREASE_MANPOWER;
    public int MODE_INCREASE_TAX_EFFICIENCY;
    public int MODE_INFRASTRUCTURE;
    public int MODE_INVEST_IN_ECONOMY;
    public int MODE_LOOT;
    public int MODE_MERCENARIES_CHOOSE_PROVINCE;
    public int MODE_MOVE_CAPITAL;
    public int MODE_NEW_ARMY_CHOOSE_PROVINCE;
    public int MODE_NON_AGGRESSION_PACTS;
    public int MODE_NUKE_CHOOSE_PROVINCE;
    public int MODE_PEACE_VIEW;
    public int MODE_POPULATION;
    public int MODE_PROVINCE_DEVASTATION_HOVER;
    public int MODE_PROVINCE_ECONOMY_HOVER;
    public int MODE_PROVINCE_EXPENSES_HOVER;
    public int MODE_PROVINCE_FORTS_HOVER;
    public int MODE_PROVINCE_GROWTH_RATE_HOVER;
    public int MODE_PROVINCE_INCOME;
    public int MODE_PROVINCE_INCOME_HOVER;
    public int MODE_PROVINCE_INFRASTRUCTURE_HOVER;
    public int MODE_PROVINCE_LOOT_HOVER;
    public int MODE_PROVINCE_MANPOWER_HOVER;
    public int MODE_PROVINCE_MANPOWER_HOVER_PLAYER;
    public int MODE_PROVINCE_POPULATION_HOVER;
    public int MODE_PROVINCE_PROVINCE_INCOME_HOVER;
    public int MODE_PROVINCE_PROVINCE_VALUE_HOVER;
    public int MODE_PROVINCE_RELIGION_HOVER;
    public int MODE_PROVINCE_TAX;
    public int MODE_PROVINCE_TAX_EFFICIENCY_HOVER;
    public int MODE_PROVINCE_UNREST_HOVER;
    public int MODE_RECRUIT_ARMY;
    public int MODE_RELEASE_VASSAL;
    public int MODE_RELIGION;
    public int MODE_SPECIAL_ALLIANCE_VIEW;
    public int MODE_TERRAIN;
    public int MODE_UNREST;
    public int MODE_WARS;
    public int MODE_WAR_VIEW;
    public int MODE_WONDERS;
    public static Color PROVINCE_GREEN = new Color(0.27450982f, 0.50980395f, 0.23529412f, 1.0f);
    public static Color PROVINCE_RED = new Color(0.70980394f, 0.17254902f, 0.1254902f, 1.0f);
    public static Color PROVINCE_GRAY = new Color(0.8235294f, 0.8235294f, 0.78431374f, 1.0f);
    public static Color PROVINCE_BLUE = new Color(0.13725491f, 0.37254903f, 0.5882353f, 1.0f);
    public static Color PROVINCE_BLUE2 = new Color(0.0f, 0.23529412f, 0.92156863f, 1.0f);
    public static Color PROVINCE_BLUE2_ALLY = new Color(0.15686275f, 0.3529412f, 0.9019608f, 1.0f);
    public static Color PROVINCE_RED2 = new Color(0.84313726f, 0.0f, 0.0f, 1.0f);
    public static Color PROVINCE_RED2_ALLY = new Color(0.78431374f, 0.19607843f, 0.19607843f, 1.0f);
    public static long lTime = 0;
    public static float fAlphaAnimation = 1.0f;
    public static int diplomacyColorsPosX = -777777;
    public static int diplomacyColorsPosY = -777777;
    public static float diplomacyScale = -777.0f;
    public static int diplomacyActiveCivID = -777;
    public int iActiveMapModeID = 0;
    public int POPULATION_MAX = 1;
    public float ECONOMY_MAX = 1.0f;
    public float TAX_MAX = 1.0f;
    public float PROVINCE_MANPOWER_MAX = 0.0f;
    public float PROVINCE_INCOME_MAX = 0.0f;
    public List<MapMode> lMapModes = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$1, reason: invalid class name */
    class AnonymousClass1 implements ProvinceDraw.DrawProvinces {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            if (Game.settingsManager.FBO_PROVINCES) {
                ProvinceDraw.drawProvinces_Standard_FBO(spriteBatch);
            } else {
                ProvinceDraw.drawProvinces_Standard_InGame(spriteBatch);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$10, reason: invalid class name */
    class AnonymousClass10 implements ProvinceDraw.DrawProvinces {
        AnonymousClass10() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_DiplomacyRelations(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$100, reason: invalid class name */
    class AnonymousClass100 implements ProvinceDraw.DrawProvinces {
        AnonymousClass100() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$101, reason: invalid class name */
    class AnonymousClass101 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass101() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$102, reason: invalid class name */
    class AnonymousClass102 extends MapMode {
        AnonymousClass102(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).haveACore && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getReligion() == Game.getCiv(Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getCivID()).getReligionID()) {
                    Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).provinceColor = Game.getCiv(Game.player.iCivID).civColorMap;
                } else {
                    Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).provinceColor = Colors.HOVER_NEGATIVE;
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$103, reason: invalid class name */
    class AnonymousClass103 implements ProvinceDraw.DrawProvinces {
        AnonymousClass103() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$104, reason: invalid class name */
    class AnonymousClass104 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass104() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$105, reason: invalid class name */
    class AnonymousClass105 extends MapMode {
        AnonymousClass105(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getRevulutionaryRisk() < 0.5f) {
                    Game.getProvince(Game.getCiv(civID).getProvinceID(i)).provinceColor = MapModeManager.PROVINCE_GRAY;
                } else {
                    Game.getProvince(Game.getCiv(civID).getProvinceID(i)).provinceColor = Colors.getProvinceRedColor((int) ((Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getRevulutionaryRisk() / 50.0f) * 100.0f), 1.0f);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$106, reason: invalid class name */
    class AnonymousClass106 implements ProvinceDraw.DrawProvinces {
        AnonymousClass106() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$107, reason: invalid class name */
    class AnonymousClass107 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass107() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$108, reason: invalid class name */
    class AnonymousClass108 extends MapMode {
        AnonymousClass108(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.15f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getManpowerMaxFromProvinceManpowerLvl(Game.getCiv(civID).getProvinceID(i)) > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getManpowerMaxFromProvinceManpowerLvl(Game.getCiv(civID).getProvinceID(i));
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getProvinceManpowerColor((int) ((Game.getManpowerMaxFromProvinceManpowerLvl(Game.getCiv(civID).getProvinceID(i2)) / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$109, reason: invalid class name */
    class AnonymousClass109 implements ProvinceDraw.DrawProvinces {
        AnonymousClass109() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$11, reason: invalid class name */
    class AnonymousClass11 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass11() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() > 0 && Game.getProvince(Game.iHoveredProvinceID).getCivID() != Game.player.iCivID) {
                        Game.provinceHover_Informations = InGame_Civ.getHoverBetweenCivilizations(Game.getProvince(Game.iHoveredProvinceID).getCivID(), Game.player.iCivID, true, false);
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$110, reason: invalid class name */
    class AnonymousClass110 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass110() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$111, reason: invalid class name */
    class AnonymousClass111 extends MapMode {
        AnonymousClass111(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.15f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getTaxEfficiencyWithBonuses() > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getTaxEfficiencyWithBonuses();
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getProvinceTaxColor((int) ((Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).getTaxEfficiencyWithBonuses() / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$112, reason: invalid class name */
    class AnonymousClass112 implements ProvinceDraw.DrawProvinces {
        AnonymousClass112() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$113, reason: invalid class name */
    class AnonymousClass113 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass113() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$114, reason: invalid class name */
    class AnonymousClass114 extends MapMode {
        AnonymousClass114(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.15f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getEconomyWithBonuses() > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getEconomyWithBonuses();
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getProvinceEconomyColor((int) ((Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).getEconomyWithBonuses() / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$115, reason: invalid class name */
    class AnonymousClass115 implements ProvinceDraw.DrawProvinces {
        AnonymousClass115() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$116, reason: invalid class name */
    class AnonymousClass116 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass116() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$117, reason: invalid class name */
    class AnonymousClass117 extends MapMode {
        AnonymousClass117(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.1f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getFortLevel() > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getFortLevel();
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getProvinceFortColor((int) ((Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).getFortLevel() / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$118, reason: invalid class name */
    class AnonymousClass118 implements ProvinceDraw.DrawProvinces {
        AnonymousClass118() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$119, reason: invalid class name */
    class AnonymousClass119 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass119() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$12, reason: invalid class name */
    class AnonymousClass12 extends MapMode {
        AnonymousClass12(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.mapCities.updateCapitalCityName();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            Game.mapCities.updateCapitalCityName();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$120, reason: invalid class name */
    class AnonymousClass120 extends MapMode {
        AnonymousClass120(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.1f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getProvinceIncome() - Game.getProvince(Game.getCiv(civID).getProvinceID(i)).fProvinceMaintenance > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getProvinceIncome() - Game.getProvince(Game.getCiv(civID).getProvinceID(i)).fProvinceMaintenance;
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getProvinceIncomeColor((int) (((Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).getProvinceIncome() - Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).fProvinceMaintenance) / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$121, reason: invalid class name */
    class AnonymousClass121 implements ProvinceDraw.DrawProvinces {
        AnonymousClass121() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$122, reason: invalid class name */
    class AnonymousClass122 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass122() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$123, reason: invalid class name */
    class AnonymousClass123 extends MapMode {
        AnonymousClass123(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.1f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getInfrastructure() > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getInfrastructure();
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getProvinceInfrastructureColor((int) ((Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).getInfrastructure() / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$124, reason: invalid class name */
    class AnonymousClass124 implements ProvinceDraw.DrawProvinces {
        AnonymousClass124() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$125, reason: invalid class name */
    class AnonymousClass125 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass125() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$126, reason: invalid class name */
    class AnonymousClass126 extends MapMode {
        AnonymousClass126(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.1f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(civID).getProvinceID(i)).fProvinceValue > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getProvince(Game.getCiv(civID).getProvinceID(i)).fProvinceValue;
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getProvinceProvinceValueColor((int) ((Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).fProvinceValue / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$127, reason: invalid class name */
    class AnonymousClass127 implements ProvinceDraw.DrawProvinces {
        AnonymousClass127() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$128, reason: invalid class name */
    class AnonymousClass128 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass128() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$129, reason: invalid class name */
    class AnonymousClass129 extends MapMode {
        AnonymousClass129(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.1f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getLootValue(Game.getCiv(civID).getProvinceID(i)) > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getLootValue(Game.getCiv(civID).getProvinceID(i));
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getProvinceLootColor((int) ((Game.getLootValue(Game.getCiv(civID).getProvinceID(i2)) / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$13, reason: invalid class name */
    class AnonymousClass13 implements ProvinceDraw.DrawProvinces {
        AnonymousClass13() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_DeclareWar(spriteBatch);
            if (Game.menuManager.getVisibleDeclareWar()) {
                return;
            }
            MapModeManager mapModeManager = MapModeManager.this;
            mapModeManager.setActiveViewID(mapModeManager.MODE_DEFAULT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$130, reason: invalid class name */
    class AnonymousClass130 implements ProvinceDraw.DrawProvinces {
        AnonymousClass130() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$131, reason: invalid class name */
    class AnonymousClass131 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass131() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$132, reason: invalid class name */
    class AnonymousClass132 extends MapMode {
        AnonymousClass132(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.1f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getDevastation() > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getDevastation();
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getProvinceDevastationColor((int) ((Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).getDevastation() / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$133, reason: invalid class name */
    class AnonymousClass133 implements ProvinceDraw.DrawProvinces {
        AnonymousClass133() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$134, reason: invalid class name */
    class AnonymousClass134 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass134() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$135, reason: invalid class name */
    class AnonymousClass135 extends MapMode {
        AnonymousClass135(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.1f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getGrowthRateWithBonuses() > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getGrowthRateWithBonuses();
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getPopulationColor((int) ((Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).getGrowthRateWithBonuses() / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$136, reason: invalid class name */
    class AnonymousClass136 implements ProvinceDraw.DrawProvinces {
        AnonymousClass136() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$137, reason: invalid class name */
    class AnonymousClass137 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass137() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$138, reason: invalid class name */
    class AnonymousClass138 extends MapMode {
        AnonymousClass138(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 1.0f;
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getPopulationTotal() > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getPopulationTotal();
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(civID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).provinceColor = Colors.getPopulationColor((int) ((Game.getProvince(Game.getCiv(civID).getProvinceID(i2)).getPopulationTotal() / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$139, reason: invalid class name */
    class AnonymousClass139 implements ProvinceDraw.DrawProvinces {
        AnonymousClass139() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
            spriteBatch.setShader(Renderer.shaderAlpha_Pattern);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != 0 && Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == civID && Game.getProvince(Game.getProvinceInViewID(i)).getReligion() != Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getReligionID()) {
                    Game.getProvince(Game.getProvinceInViewID(i)).drawOccupiedProvince_Religion(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0 && Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == civID && Game.getProvince(Game.getExtraProvinceInViewID(i2)).getReligion() != Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getReligionID()) {
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawOccupiedProvince_Religion(spriteBatch);
                }
            }
            spriteBatch.setShader(Renderer.shaderDefault);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$14, reason: invalid class name */
    class AnonymousClass14 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass14() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$140, reason: invalid class name */
    class AnonymousClass140 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass140() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$141, reason: invalid class name */
    class AnonymousClass141 extends MapMode {
        AnonymousClass141(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            int civID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.player.iCivID : Game.getProvince(Game.iActiveProvince).getCivID();
            for (int i = 0; i < Game.getCiv(civID).getNumOfProvinces(); i++) {
                Game.getProvince(Game.getCiv(civID).getProvinceID(i)).provinceColor = new Color(Game.religionManager.getReligion(Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getReligion()).Color[0], Game.religionManager.getReligion(Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getReligion()).Color[1], Game.religionManager.getReligion(Game.getProvince(Game.getCiv(civID).getProvinceID(i)).getReligion()).Color[2], 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$142, reason: invalid class name */
    class AnonymousClass142 implements ProvinceDraw.DrawProvinces {
        AnonymousClass142() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha(Colors.PROVINCE_ALPHA_POPULATION) * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.a = provinceAlpha;
                spriteBatch.setColor(Game.getProvince(Game.getProvinceInViewID(i)).provinceColor);
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.a = provinceAlpha;
                spriteBatch.setColor(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor);
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$143, reason: invalid class name */
    class AnonymousClass143 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass143() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceIncome") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getProvinceIncome(), 100), Colors.COLOR_TEXT_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$144, reason: invalid class name */
    class AnonymousClass144 extends MapMode {
        AnonymousClass144(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.updateRightMenu();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.updateMaxProvinceIncome();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (!Game.getProvince(i).getSeaProvince()) {
                    Game.getProvince(i).provinceColor = Colors.getProvinceIncomeColor((int) ((Game.getProvince(i).getProvinceIncome() / MapModeManager.this.PROVINCE_INCOME_MAX) * 100.0f), 1.0f);
                }
            }
            Game.menuManager.rebuildInGame_RightProvinceIncome();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$145, reason: invalid class name */
    class AnonymousClass145 implements ProvinceDraw.DrawProvinces {
        AnonymousClass145() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                Province province = Game.getProvince(Game.getProvinceInViewID(i));
                if (province.getCivID() == Game.player.iCivID || Game.getCiv(province.getCivID()).getPuppetOfCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                }
                province.drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                Province province2 = Game.getProvince(Game.getExtraProvinceInViewID(i2));
                if (province2.getCivID() == Game.player.iCivID || Game.getCiv(province2.getCivID()).getPuppetOfCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                }
                province2.drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$146, reason: invalid class name */
    class AnonymousClass146 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass146() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getPuppetOfCivID() == Game.player.iCivID) {
                    Game.setCursorRecruit();
                } else {
                    Game.setCursorX();
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$147, reason: invalid class name */
    class AnonymousClass147 extends MapMode {
        AnonymousClass147(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            Game.setCursorRecruit();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$148, reason: invalid class name */
    class AnonymousClass148 implements ProvinceDraw.DrawProvinces {
        AnonymousClass148() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$149, reason: invalid class name */
    class AnonymousClass149 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass149() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    Game.setCursorRecruit();
                } else {
                    Game.setCursorX();
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$15, reason: invalid class name */
    class AnonymousClass15 extends MapMode {
        AnonymousClass15(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            if (Game.menuManager.getVisibleInGame_Civ()) {
                return;
            }
            ProvinceDraw.clearBiggestCities();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
            ProvinceDraw.buildBiggestCitiesLines_Province(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(InGame_DeclareWar.iCivID).getCapitalProvinceID());
            try {
                List<Integer> listDeclareWar_AlliesAttacker = DiplomacyManager.declareWar_AlliesAttacker(Game.player.iCivID, InGame_DeclareWar.iCivID);
                List<Integer> listDeclareWar_AlliesDefender = DiplomacyManager.declareWar_AlliesDefender(InGame_DeclareWar.iCivID, Game.player.iCivID);
                for (int i = 0; i < Game.getCivsSize(); i++) {
                    Game.getCiv(i).warView_ParticipatesInWar = false;
                    Game.getCiv(i).warView_IsAggressor = false;
                }
                for (int size = listDeclareWar_AlliesAttacker.size() - 1; size >= 0; size--) {
                    Game.getCiv(listDeclareWar_AlliesAttacker.get(size).intValue()).warView_IsAggressor = true;
                }
                for (int size2 = listDeclareWar_AlliesDefender.size() - 1; size2 >= 0; size2--) {
                    Game.getCiv(listDeclareWar_AlliesDefender.get(size2).intValue()).warView_ParticipatesInWar = true;
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$150, reason: invalid class name */
    class AnonymousClass150 extends MapMode {
        AnonymousClass150(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            Game.setCursorRecruit();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$151, reason: invalid class name */
    class AnonymousClass151 implements ProvinceDraw.DrawProvinces {
        AnonymousClass151() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            boolean z = Game.getCiv(Game.player.iCivID).fGold >= ((float) Game.armyRecruit.cost);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                Province province = Game.getProvince(Game.getProvinceInViewID(i));
                if (province.getCivID() != Game.player.iCivID && Game.getCiv(province.getCivID()).getPuppetOfCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (province.isOccupied() || !z) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (province.provBonuses.RecruitArmyCostInProvince != 0.0f) {
                    float f = province.provBonuses.RecruitArmyCostInProvince / 35.0f;
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r + (MapModeManager.PROVINCE_GREEN.r * f), MapModeManager.PROVINCE_GREEN.g + (MapModeManager.PROVINCE_GREEN.g * f), MapModeManager.PROVINCE_GREEN.b + (MapModeManager.PROVINCE_GREEN.b * f), provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                }
                province.drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                Province province2 = Game.getProvince(Game.getExtraProvinceInViewID(i2));
                if (province2.getCivID() != Game.player.iCivID && Game.getCiv(province2.getCivID()).getPuppetOfCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (province2.isOccupied() || !z) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (province2.provBonuses.RecruitArmyCostInProvince != 0.0f) {
                    float f2 = province2.provBonuses.RecruitArmyCostInProvince / 35.0f;
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r + (MapModeManager.PROVINCE_GREEN.r * f2), MapModeManager.PROVINCE_GREEN.g + (MapModeManager.PROVINCE_GREEN.g * f2), MapModeManager.PROVINCE_GREEN.b + (MapModeManager.PROVINCE_GREEN.b * f2), provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                }
                province2.drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$152, reason: invalid class name */
    class AnonymousClass152 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass152() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getPuppetOfCivID() == Game.player.iCivID) {
                    float recruitmentCost = ArmyManager.getRecruitmentCost(Game.player.iCivID, Game.iHoveredProvinceID, Game.armyRecruit.unitID, Game.armyRecruit.armyID);
                    int recruitmentTime = ArmyManager.getRecruitmentTime(Game.player.iCivID, Game.iHoveredProvinceID, Game.armyRecruit.unitID, Game.armyRecruit.armyID);
                    if (Game.getCiv(Game.player.iCivID).fGold >= recruitmentCost) {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToRecruit") + ": "));
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(ArmyManager.lArmy.get(Game.armyRecruit.unitID).get(Game.armyRecruit.armyID).Name, Colors.COLOR_TEXT_GOLD));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InsufficientGold") + ": ", Colors.HOVER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.armyRecruit.cost, Colors.COLOR_TEXT_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(recruitmentCost, 10), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RecruitmentTime") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + recruitmentTime, CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_TIME, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getCiv(Game.player.iCivID).getArmyRegimentSize() + Game.getCiv(Game.player.iCivID).iArmyRecruitSize_Total >= Game.getCiv(Game.player.iCivID).iRegimentsLimit) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RegimentsLimit") + ": ", CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (Game.getCiv(Game.player.iCivID).getArmyRegimentSize() + Game.getCiv(Game.player.iCivID).iArmyRecruitSize_Total) + " / " + Game.getCiv(Game.player.iCivID).iRegimentsLimit, CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmyRecruitmentCost") + ": ", CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(GameValues.army.REGIMENTS_LIMIT_RECRUIT_COST_OVER * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RegimentsLimit") + ": ", CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (Game.getCiv(Game.player.iCivID).getArmyRegimentSize() + Game.getCiv(Game.player.iCivID).iArmyRecruitSize_Total) + " / " + Game.getCiv(Game.player.iCivID).iRegimentsLimit, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    if (Game.getProvince(Game.iHoveredProvinceID).provBonuses.RecruitArmyCostInProvince != 0.0f) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmyRecruitmentCostInProvince") + ": ", CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getProvince(Game.iHoveredProvinceID).provBonuses.RecruitArmyCostInProvince > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).provBonuses.RecruitArmyCostInProvince, 100) + "%", CFG.FONT_BOLD_SMALL, Game.getProvince(Game.iHoveredProvinceID).provBonuses.RecruitArmyCostInProvince > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    if (CFG.isDesktop()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ShiftClickToRecruitXRegiments", 5), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CtrlClickToRecruitXRegimentsInASingleProvince", 5), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    Game.setCursorRecruit();
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorX();
                }
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    boolean z = true;
                    int i = 0;
                    for (int i2 = 0; i2 < Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getArmyRecruitSize(); i2++) {
                        for (int i3 = 0; i3 < Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).size(); i3++) {
                            if (Game.iHoveredProvinceID == Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).provinceID) {
                                if (z) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TheArmyWillBeDeployedToThisLocation") + ": ", CFG.FONT_REGULAR_SMALL));
                                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).timeLeft), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                    z = false;
                                }
                                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), 0, CFG.PADDING));
                                arrayList2.add(new MenuElement_HoverElement_Type_Text(ArmyManager.lArmy.get(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).unitID).get(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).armyID).Name + ": ", CFG.FONT_REGULAR_SMALL));
                                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).timeLeft + i), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
                                arrayList.add(new MenuElement_HoverElement(arrayList2));
                                arrayList2.clear();
                                i += Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).timeLeft;
                            }
                        }
                    }
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$153, reason: invalid class name */
    class AnonymousClass153 extends MapMode {
        AnonymousClass153(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            Game.setCursorRecruit();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void playSFX_ProvinceClick() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$154, reason: invalid class name */
    class AnonymousClass154 implements ProvinceDraw.DrawProvinces {
        AnonymousClass154() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * 1.5f * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                spriteBatch.setColor(new Color(Game.terrainManager.terrains.get(Game.getProvince(Game.getProvinceInViewID(i)).getTerrainID()).Color[0], Game.terrainManager.terrains.get(Game.getProvince(Game.getProvinceInViewID(i)).getTerrainID()).Color[1], Game.terrainManager.terrains.get(Game.getProvince(Game.getProvinceInViewID(i)).getTerrainID()).Color[2], provinceAlpha));
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                spriteBatch.setColor(new Color(Game.terrainManager.terrains.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getTerrainID()).Color[0], Game.terrainManager.terrains.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getTerrainID()).Color[1], Game.terrainManager.terrains.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getTerrainID()).Color[2], provinceAlpha));
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$155, reason: invalid class name */
    class AnonymousClass155 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass155() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Terrain") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.terrainManager.terrains.get(Game.getProvince(Game.iHoveredProvinceID).getTerrainID()).Name, Colors.COLOR_TEXT_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Terrain(Game.getProvince(Game.iHoveredProvinceID).getTerrainID(), Game.iHoveredProvinceID, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$156, reason: invalid class name */
    class AnonymousClass156 implements ProvinceDraw.DrawProvinces {
        AnonymousClass156() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            if ((Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getResourceID() < 0) && InGame_RightGoods.iActiveResID < 0) {
                for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0 && Game.getProvince(Game.getProvinceInViewID(i)).getResourceID() >= 0) {
                        spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getColor(provinceAlpha));
                        Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                    }
                }
                for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0 && Game.getProvince(Game.getExtraProvinceInViewID(i2)).getResourceID() >= 0) {
                        spriteBatch.setColor(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getColor(provinceAlpha));
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                    }
                }
            } else {
                int resourceID = (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getResourceID() < 0) ? InGame_RightGoods.iActiveResID : Game.getProvince(Game.iActiveProvince).getResourceID();
                for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i3)).getResourceID() == resourceID) {
                        spriteBatch.setColor(new Color(ResourcesManager.lResources.get(Game.getProvince(Game.getProvinceInViewID(i3)).getResourceID()).Color[0], ResourcesManager.lResources.get(Game.getProvince(Game.getProvinceInViewID(i3)).getResourceID()).Color[1], ResourcesManager.lResources.get(Game.getProvince(Game.getProvinceInViewID(i3)).getResourceID()).Color[2], provinceAlpha));
                        Game.getProvince(Game.getProvinceInViewID(i3)).drawLandProvince(spriteBatch);
                    }
                }
                for (int i4 = 0; i4 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i4++) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i4)).getResourceID() == resourceID) {
                        spriteBatch.setColor(new Color(ResourcesManager.lResources.get(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getResourceID()).Color[0], ResourcesManager.lResources.get(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getResourceID()).Color[1], ResourcesManager.lResources.get(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getResourceID()).Color[2], provinceAlpha));
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).drawLandProvince(spriteBatch);
                    }
                }
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$157, reason: invalid class name */
    class AnonymousClass157 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass157() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Resource") + ": "));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.lResources.get(Game.getProvince(Game.iHoveredProvinceID).getResourceID()).Name, Colors.COLOR_TEXT_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Resource(Game.getProvince(Game.iHoveredProvinceID).getResourceID(), CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$158, reason: invalid class name */
    class AnonymousClass158 extends MapMode {
        AnonymousClass158(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Renderer.drawArmyInProvince = true;
            MapModeManager.updateRightMenu();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            InGame_RightGoods.iActiveResID = -1;
            Game.menuManager.rebuildInGame_RightGoods();
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_Goods();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$159, reason: invalid class name */
    class AnonymousClass159 implements ProvinceDraw.DrawProvinces {
        AnonymousClass159() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).wonderID >= 0) {
                    if (Game.getProvince(Game.getProvinceInViewID(i)).getWonderBuilt()) {
                        spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, provinceAlpha));
                    } else {
                        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, provinceAlpha));
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).wonderID >= 0) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getWonderBuilt()) {
                        spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, provinceAlpha));
                    } else {
                        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, provinceAlpha));
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                }
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$16, reason: invalid class name */
    class AnonymousClass16 implements ProvinceDraw.DrawProvinces {
        AnonymousClass16() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_CurrentWars(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$160, reason: invalid class name */
    class AnonymousClass160 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass160() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0 || Game.getProvince(Game.iHoveredProvinceID).wonderID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Wonder") + ": "));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(WondersManager.wonders.get(Game.getProvince(Game.iHoveredProvinceID).wonderID).Name, Colors.COLOR_TEXT_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$161, reason: invalid class name */
    class AnonymousClass161 extends MapMode {
        AnonymousClass161(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Renderer.drawArmyInProvince = true;
            if (Game.menuManager.getVisibleInGame_Wonder()) {
                Game.menuManager.setVisibleInGame_Wonder(false);
            }
            MapModeManager.updateRightMenu();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_Wonders();
            Game.menuManager.rebuildInGame_RightWonders();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$162, reason: invalid class name */
    class AnonymousClass162 implements ProvinceDraw.DrawProvinces {
        AnonymousClass162() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).isOccupied() || Game.getCiv(Game.player.iCivID).fGold < Game.getInvestCost(Game.getProvinceInViewID(i)) || Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(Game.getProvinceInViewID(i)) || Game.canInvestInEconomy(Game.getProvinceInViewID(i))) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceInvestSize == 1) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getColor(1.0f), (int) (100.0f - ((Game.getProvince(Game.getProvinceInViewID(i)).provinceInvestDaysLeft.get(0).daysLeft / Game.getProvince(Game.getProvinceInViewID(i)).provinceInvestDaysLeft.get(0).investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceInvestSize > 0) {
                    spriteBatch.setColor(CFG.getLighter(new Color(ProvinceDraw.progressBar2.r, ProvinceDraw.progressBar2.g, ProvinceDraw.progressBar2.b, provinceAlpha), (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceInvestSize - 1) * 7, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).isOccupied() || Game.getCiv(Game.player.iCivID).fGold < Game.getInvestCost(Game.getExtraProvinceInViewID(i2)) || Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(Game.getExtraProvinceInViewID(i2)) || Game.canInvestInEconomy(Game.getExtraProvinceInViewID(i2))) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceInvestSize == 1) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getColor(1.0f), (int) (100.0f - ((Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceInvestDaysLeft.get(0).daysLeft / Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceInvestDaysLeft.get(0).investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceInvestSize > 0) {
                    spriteBatch.setColor(CFG.getLighter(new Color(ProvinceDraw.progressBar2.r, ProvinceDraw.progressBar2.g, ProvinceDraw.progressBar2.b, provinceAlpha), (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceInvestSize - 1) * 7, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$163, reason: invalid class name */
    class AnonymousClass163 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass163() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$164, reason: invalid class name */
    class AnonymousClass164 extends MapMode {
        AnonymousClass164(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Renderer.drawArmyInProvince = true;
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_Goods_InvestInEconomy();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$165, reason: invalid class name */
    class AnonymousClass165 implements ProvinceDraw.DrawProvinces {
        AnonymousClass165() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).isOccupied() || Game.getCiv(Game.player.iCivID).fGold < Game.getDevelopInfrastructureCost(Game.getProvinceInViewID(i)) || Game.getCiv(Game.player.iCivID).fLegacy < Game.getDevelopInfrastructureCostLegacy(Game.getProvinceInViewID(i))) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceDevelopInfrastructureSize == 1) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getColor(1.0f), (int) (100.0f - ((Game.getProvince(Game.getProvinceInViewID(i)).provinceDevelopInfrastructureDaysLeft.get(0).daysLeft / Game.getProvince(Game.getProvinceInViewID(i)).provinceDevelopInfrastructureDaysLeft.get(0).investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceDevelopInfrastructureSize > 0) {
                    spriteBatch.setColor(CFG.getLighter(new Color(ProvinceDraw.progressBar2.r, ProvinceDraw.progressBar2.g, ProvinceDraw.progressBar2.b, provinceAlpha), (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceDevelopInfrastructureSize - 1) * 7, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).isOccupied() || Game.getCiv(Game.player.iCivID).fGold < Game.getDevelopInfrastructureCost(Game.getExtraProvinceInViewID(i2)) || Game.getCiv(Game.player.iCivID).fLegacy < Game.getDevelopInfrastructureCostLegacy(Game.getExtraProvinceInViewID(i2))) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceDevelopInfrastructureSize == 1) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getColor(1.0f), (int) (100.0f - ((Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceDevelopInfrastructureDaysLeft.get(0).daysLeft / Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceDevelopInfrastructureDaysLeft.get(0).investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceDevelopInfrastructureSize > 0) {
                    spriteBatch.setColor(CFG.getLighter(new Color(ProvinceDraw.progressBar2.r, ProvinceDraw.progressBar2.g, ProvinceDraw.progressBar2.b, provinceAlpha), (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceDevelopInfrastructureSize - 1) * 7, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$166, reason: invalid class name */
    class AnonymousClass166 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass166() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    if (Game.getProvince(Game.iHoveredProvinceID).iInfrastructureMax > Game.getProvince(Game.iHoveredProvinceID).getInfrastructure() + Game.getProvince(Game.iHoveredProvinceID).iProvinceDevelopInfrastructureSize) {
                        if (Game.getCiv(Game.player.iCivID).fGold < Game.getDevelopInfrastructureCost(Game.iHoveredProvinceID)) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InsufficientGold") + ": ", Colors.HOVER_NEGATIVE));
                            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getDevelopInfrastructureCost(Game.iHoveredProvinceID), 100), Colors.COLOR_TEXT_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            Game.setCursorX();
                        } else if (Game.getCiv(Game.player.iCivID).fLegacy >= Game.getDevelopInfrastructureCostLegacy(Game.iHoveredProvinceID)) {
                            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToDevelopInfrastructure"), Colors.HOVER_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.infrastructureUp, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            Game.setCursorInfrastructure();
                        } else {
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InsufficientLegacy") + ": ", Colors.HOVER_NEGATIVE));
                            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getDevelopInfrastructureCostLegacy(Game.iHoveredProvinceID), 100), Colors.COLOR_TEXT_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            Game.setCursorX();
                        }
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Infrastructure") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(Game.iHoveredProvinceID).getInfrastructure() + " / " + Game.getProvince(Game.iHoveredProvinceID).iInfrastructureMax, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.infrastructure, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getProvince(Game.iHoveredProvinceID).iProvinceDevelopInfrastructureSize > 1) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        int i = 0;
                        for (int i2 = 0; i2 < Game.getProvince(Game.iHoveredProvinceID).iProvinceDevelopInfrastructureSize; i2++) {
                            i += Game.getProvince(Game.iHoveredProvinceID).provinceDevelopInfrastructureDaysLeft.get(i2).daysLeft;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InQueue") + ": ", CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (Game.getProvince(Game.iHoveredProvinceID).iProvinceDevelopInfrastructureSize - 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + Game.lang.get("DaysX", i) + "]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorX();
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$167, reason: invalid class name */
    class AnonymousClass167 extends MapMode {
        AnonymousClass167(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$168, reason: invalid class name */
    class AnonymousClass168 implements ProvinceDraw.DrawProvinces {
        AnonymousClass168() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).isOccupied() || Game.getCiv(Game.player.iCivID).fGold < Game.getIncreaseTaxEfficiencyCost(Game.getProvinceInViewID(i))) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(Game.getProvinceInViewID(i))) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceIncreaseTaxEfficiencySize == 1) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getColor(1.0f), (int) (100.0f - ((Game.getProvince(Game.getProvinceInViewID(i)).provinceIncreasTaxEfficiencyDaysLeft.get(0).daysLeft / Game.getProvince(Game.getProvinceInViewID(i)).provinceIncreasTaxEfficiencyDaysLeft.get(0).investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceIncreaseTaxEfficiencySize > 0) {
                    spriteBatch.setColor(CFG.getLighter(new Color(ProvinceDraw.progressBar2.r, ProvinceDraw.progressBar2.g, ProvinceDraw.progressBar2.b, provinceAlpha), (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceIncreaseTaxEfficiencySize - 1) * 7, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).isOccupied() || Game.getCiv(Game.player.iCivID).fGold < Game.getIncreaseTaxEfficiencyCost(Game.getExtraProvinceInViewID(i2))) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(Game.getExtraProvinceInViewID(i2))) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceIncreaseTaxEfficiencySize == 1) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getColor(1.0f), (int) (100.0f - ((Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceIncreasTaxEfficiencyDaysLeft.get(0).daysLeft / Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceIncreasTaxEfficiencyDaysLeft.get(0).investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceIncreaseTaxEfficiencySize > 0) {
                    spriteBatch.setColor(CFG.getLighter(new Color(ProvinceDraw.progressBar2.r, ProvinceDraw.progressBar2.g, ProvinceDraw.progressBar2.b, provinceAlpha), (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceIncreaseTaxEfficiencySize - 1) * 7, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$169, reason: invalid class name */
    class AnonymousClass169 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass169() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    float f = Game.getCiv(Game.player.iCivID).fGold;
                    float increaseTaxEfficiencyCost = Game.getIncreaseTaxEfficiencyCost(Game.iHoveredProvinceID);
                    String str = lJxd.gkoHkFRRUrcMhs;
                    if (f >= increaseTaxEfficiencyCost) {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(CoLRpi.pATSGBWJNQc), Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(PxHJ.suQGYAThfuwXuW) + ": ", Colors.HOVER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(Game.iHoveredProvinceID), 100), Colors.COLOR_TEXT_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(XjthpFh.iRGjMIXX) + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(str + CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getTaxEfficiencyWithBonuses(), 100) + "%", Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.tax, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getProvince(Game.iHoveredProvinceID).iProvinceIncreaseTaxEfficiencySize > 1) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        int i = 0;
                        for (int i2 = 0; i2 < Game.getProvince(Game.iHoveredProvinceID).iProvinceIncreaseTaxEfficiencySize; i2++) {
                            i += Game.getProvince(Game.iHoveredProvinceID).provinceIncreasTaxEfficiencyDaysLeft.get(i2).daysLeft;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InQueue") + ": ", CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(str + (Game.getProvince(Game.iHoveredProvinceID).iProvinceIncreaseTaxEfficiencySize - 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + Game.lang.get("DaysX", i) + "]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    if (CFG.isDesktop()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ShiftClickToIncreaseTaxationEfficiencyXTimes", 5), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                    }
                    Game.setCursorTax();
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorX();
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$17, reason: invalid class name */
    class AnonymousClass17 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass17() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$170, reason: invalid class name */
    class AnonymousClass170 extends MapMode {
        AnonymousClass170(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$171, reason: invalid class name */
    class AnonymousClass171 implements ProvinceDraw.DrawProvinces {
        AnonymousClass171() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).isOccupied() || Game.getCiv(Game.player.iCivID).fGold < Game.getIncreaseGrowthRateCost(Game.getProvinceInViewID(i))) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceIncreaseGrowthRateSize == 1) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getColor(1.0f), (int) (100.0f - ((Game.getProvince(Game.getProvinceInViewID(i)).provinceIncreaseGrowthRateDaysLeft.get(0).daysLeft / Game.getProvince(Game.getProvinceInViewID(i)).provinceIncreaseGrowthRateDaysLeft.get(0).investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceIncreaseGrowthRateSize > 0) {
                    spriteBatch.setColor(CFG.getLighter(new Color(ProvinceDraw.progressBar2.r, ProvinceDraw.progressBar2.g, ProvinceDraw.progressBar2.b, provinceAlpha), (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceIncreaseGrowthRateSize - 1) * 7, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).isOccupied() || Game.getCiv(Game.player.iCivID).fGold < Game.getIncreaseGrowthRateCost(Game.getExtraProvinceInViewID(i2))) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceIncreaseGrowthRateSize == 1) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getColor(1.0f), (int) (100.0f - ((Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceIncreaseGrowthRateDaysLeft.get(0).daysLeft / Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceIncreaseGrowthRateDaysLeft.get(0).investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceIncreaseGrowthRateSize > 0) {
                    spriteBatch.setColor(CFG.getLighter(new Color(ProvinceDraw.progressBar2.r, ProvinceDraw.progressBar2.g, ProvinceDraw.progressBar2.b, provinceAlpha), (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceIncreaseGrowthRateSize - 1) * 7, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$172, reason: invalid class name */
    class AnonymousClass172 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass172() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    if (Game.getCiv(Game.player.iCivID).fGold >= Game.getIncreaseGrowthRateCost(Game.iHoveredProvinceID)) {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToIncreasePopulationGrowthRate"), Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.populationGrowth, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        Game.setCursorPopulationGrowth();
                    } else {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(PxHJ.KwuKGKP) + ": ", Colors.HOVER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getIncreaseGrowthRateCost(Game.iHoveredProvinceID), 100), Colors.COLOR_TEXT_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        Game.setCursorX();
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GrowthRate") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getGrowthRateWithBonuses(), 10) + "%", Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (CFG.isDesktop()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ShiftClickToIncreaseGrowthRateXTimes", 5), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                    }
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorX();
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$173, reason: invalid class name */
    class AnonymousClass173 extends MapMode {
        AnonymousClass173(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$174, reason: invalid class name */
    class AnonymousClass174 implements ProvinceDraw.DrawProvinces {
        AnonymousClass174() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).isOccupied()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceIncreaseManpowerSize == 1) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getColor(1.0f), (int) (100.0f - ((Game.getProvince(Game.getProvinceInViewID(i)).provinceIncreaseManpowerDaysLeft.get(0).daysLeft / Game.getProvince(Game.getProvinceInViewID(i)).provinceIncreaseManpowerDaysLeft.get(0).investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceIncreaseManpowerSize > 0) {
                    spriteBatch.setColor(CFG.getLighter(new Color(ProvinceDraw.progressBar2.r, ProvinceDraw.progressBar2.g, ProvinceDraw.progressBar2.b, provinceAlpha), (Game.getProvince(Game.getProvinceInViewID(i)).iProvinceIncreaseManpowerSize - 1) * 7, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).isOccupied()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceIncreaseManpowerSize == 1) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getColor(1.0f), (int) (100.0f - ((Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceIncreaseManpowerDaysLeft.get(0).daysLeft / Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceIncreaseManpowerDaysLeft.get(0).investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceIncreaseManpowerSize > 0) {
                    spriteBatch.setColor(CFG.getLighter(new Color(ProvinceDraw.progressBar2.r, ProvinceDraw.progressBar2.g, ProvinceDraw.progressBar2.b, provinceAlpha), (Game.getProvince(Game.getExtraProvinceInViewID(i2)).iProvinceIncreaseManpowerSize - 1) * 7, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$175, reason: invalid class name */
    class AnonymousClass175 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass175() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    if (Game.getCiv(Game.player.iCivID).fGold < Game.getIncreaseManpowerCost(Game.iHoveredProvinceID)) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InsufficientGold") + ": ", Colors.HOVER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getIncreaseManpowerCost(Game.iHoveredProvinceID), 100), Colors.COLOR_TEXT_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseManpowerCostLegacy(Game.iHoveredProvinceID)) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InsufficientLegacy") + ": ", Colors.HOVER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getIncreaseManpowerCostLegacy(Game.iHoveredProvinceID), 100), Colors.COLOR_TEXT_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToIncreaseManpower"), Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LocalManpowerLevel") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getManpower(), 100), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (CFG.isDesktop()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ShiftClickToIncreaseManpowerXTimes", 5), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                    }
                    Game.setCursorRecruit();
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorX();
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$176, reason: invalid class name */
    class AnonymousClass176 extends MapMode {
        AnonymousClass176(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$177, reason: invalid class name */
    class AnonymousClass177 implements ProvinceDraw.DrawProvinces {
        AnonymousClass177() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).isOccupied() || Game.getProvinceInViewID(i) == Game.getCiv(Game.player.iCivID).getCapitalProvinceID()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).isOccupied() || Game.getExtraProvinceInViewID(i2) == Game.getCiv(Game.player.iCivID).getCapitalProvinceID()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getB(), provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$178, reason: invalid class name */
    class AnonymousClass178 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass178() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MoveCapitalTo") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Game.iHoveredProvinceID == Game.getCiv(Game.player.iCivID).getCapitalProvinceID() ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.capital, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.capital.MOVE_CAPITAL_COST, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorPlus();
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorX();
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$179, reason: invalid class name */
    class AnonymousClass179 extends MapMode {
        AnonymousClass179(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$18, reason: invalid class name */
    class AnonymousClass18 extends MapMode {
        AnonymousClass18(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$180, reason: invalid class name */
    class AnonymousClass180 implements ProvinceDraw.DrawProvinces {
        AnonymousClass180() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).religionConversion != null) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, MapModeManager.PROVINCE_GREEN, (int) (100.0f - ((Game.getProvince(Game.getProvinceInViewID(i)).religionConversion.daysLeft / Game.getProvince(Game.getProvinceInViewID(i)).religionConversion.investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).getReligion() != Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getReligionID()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).religionConversion != null) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, MapModeManager.PROVINCE_GREEN, (int) (100.0f - ((Game.getProvince(Game.getExtraProvinceInViewID(i2)).religionConversion.daysLeft / Game.getProvince(Game.getExtraProvinceInViewID(i2)).religionConversion.investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getReligion() != Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getReligionID()) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            spriteBatch.setShader(Renderer.shaderAlpha_Pattern);
            for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
                if (Game.getProvince(Game.getProvinceInViewID(i3)).getCivID() == Game.player.iCivID && Game.getProvince(Game.getProvinceInViewID(i3)).getReligion() != Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i3)).getCivID()).getReligionID()) {
                    Game.getProvince(Game.getProvinceInViewID(i3)).drawOccupiedProvince_Religion(spriteBatch);
                }
            }
            for (int i4 = 0; i4 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i4++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID() == Game.player.iCivID && Game.getProvince(Game.getExtraProvinceInViewID(i4)).getReligion() != Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()).getReligionID()) {
                    Game.getProvince(Game.getExtraProvinceInViewID(i4)).drawOccupiedProvince_Religion(spriteBatch);
                }
            }
            spriteBatch.setShader(Renderer.shaderDefault);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$181, reason: invalid class name */
    class AnonymousClass181 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass181() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    if (Game.getProvince(Game.iHoveredProvinceID).religionConversion != null) {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ReligionConversionProgress") + ": ", CFG.FONT_BOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(((Game.getProvince(Game.iHoveredProvinceID).religionConversion.investTime - Game.getProvince(Game.iHoveredProvinceID).religionConversion.daysLeft) / Game.getProvince(Game.iHoveredProvinceID).religionConversion.investTime) * 100.0f, 10) + "%", CFG.FONT_BOLD, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_ReligionTitle(Game.getCiv(Game.player.iCivID).getReligionID(), CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        Game.setCursorReligion();
                    } else if (Game.getProvince(Game.iHoveredProvinceID).getReligion() != Game.getCiv(Game.player.iCivID).getReligionID()) {
                        if (Game.getCiv(Game.player.iCivID).fGold >= Game.religionManager.getReligionConversionCost(Game.iHoveredProvinceID)) {
                            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ConvertReligion"), Colors.HOVER_GOLD));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Religion") + ": ", CFG.FONT_REGULAR_SMALL));
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(Game.getCiv(Game.player.iCivID).getReligionID()).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_Religion(Game.getCiv(Game.player.iCivID).getReligionID(), CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.religionManager.getReligionConversionCost(Game.iHoveredProvinceID), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ReligionConversionTime") + ": ", CFG.FONT_REGULAR_SMALL));
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XDays", Game.religionManager.getReligionConversionTime(Game.iHoveredProvinceID)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            Game.setCursorReligion();
                        } else {
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InsufficientGold") + ": ", Colors.HOVER_NEGATIVE));
                            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.religionManager.getReligionConversionCost(Game.iHoveredProvinceID), 100), Colors.COLOR_TEXT_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            Game.setCursorX();
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Religion") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.religionManager.getReligion(Game.getProvince(Game.iHoveredProvinceID).getReligion()).Name, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Religion(Game.getProvince(Game.iHoveredProvinceID).getReligion(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorX();
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$182, reason: invalid class name */
    class AnonymousClass182 extends MapMode {
        AnonymousClass182(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$183, reason: invalid class name */
    class AnonymousClass183 implements ProvinceDraw.DrawProvinces {
        AnonymousClass183() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).coreCreation != null) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, MapModeManager.PROVINCE_GREEN, (int) (100.0f - ((Game.getProvince(Game.getProvinceInViewID(i)).coreCreation.daysLeft / Game.getProvince(Game.getProvinceInViewID(i)).coreCreation.investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getProvinceInViewID(i)).haveACore(Game.player.iCivID)) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != Game.player.iCivID) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).coreCreation != null) {
                    spriteBatch.setColor(CFG.getColorStep(ProvinceDraw.progressBar2, MapModeManager.PROVINCE_GREEN, (int) (100.0f - ((Game.getProvince(Game.getExtraProvinceInViewID(i2)).coreCreation.daysLeft / Game.getProvince(Game.getExtraProvinceInViewID(i2)).coreCreation.investTime) * 100.0f)), 100, provinceAlpha));
                } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).haveACore(Game.player.iCivID)) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$184, reason: invalid class name */
    class AnonymousClass184 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass184() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    if (Game.getProvince(Game.iHoveredProvinceID).coreCreation != null) {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("CoreConstruction") + ": ", CFG.FONT_BOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + CFG.getPrecision2(((Game.getProvince(Game.iHoveredProvinceID).coreCreation.investTime - Game.getProvince(Game.iHoveredProvinceID).coreCreation.daysLeft) / Game.getProvince(Game.iHoveredProvinceID).coreCreation.investTime) * 100.0f, 10) + "%", CFG.FONT_BOLD, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.core, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        Game.setCursorCore();
                    } else if (!Game.getProvince(Game.iHoveredProvinceID).haveACore(Game.player.iCivID)) {
                        if (Game.getCiv(Game.player.iCivID).fGold >= Game.getCoreCreationCost(Game.iHoveredProvinceID)) {
                            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AddCore"), Colors.HOVER_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.core, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
                            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getCoreCreationCost(Game.iHoveredProvinceID), 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CoreConstruction") + ": ", CFG.FONT_REGULAR_SMALL));
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XDays", Game.getCoreCreationTime(Game.iHoveredProvinceID)), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            Game.setCursorCore();
                        } else {
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InsufficientGold") + ": ", Colors.HOVER_NEGATIVE));
                            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getCoreCreationCost(Game.iHoveredProvinceID), 100), Colors.COLOR_TEXT_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            Game.setCursorX();
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorX();
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$185, reason: invalid class name */
    class AnonymousClass185 extends MapMode {
        AnonymousClass185(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$186, reason: invalid class name */
    class AnonymousClass186 implements ProvinceDraw.DrawProvinces {
        AnonymousClass186() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            try {
                float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
                ProvinceDraw.drawWastelandProvinces(spriteBatch);
                for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() != Game.player.iCivID) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                    } else if (Game.getProvince(Game.getProvinceInViewID(i)).buildingBuilt(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                        spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, provinceAlpha));
                    } else if (Game.getProvince(Game.getProvinceInViewID(i)).isUnderConstruction(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE.r, MapModeManager.PROVINCE_BLUE.g, MapModeManager.PROVINCE_BLUE.b, provinceAlpha));
                    } else if (Game.getProvince(Game.getProvinceInViewID(i)).getBuildingsLimit_FreeSlots() <= 0) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                    } else if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).SeaAccessRequired && Game.getProvince(Game.getProvinceInViewID(i)).getLevelOfPort() < 0) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                    } else if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource >= 0 && BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource != Game.getProvince(Game.getProvinceInViewID(i)).getResourceID()) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                    } else if (Game.getProvince(Game.getProvinceInViewID(i)).isOccupied() || Game.getCiv(Game.player.iCivID).fGold < Game.getBuildingConstructionCost(Game.player.iCivID, Game.getProvinceInViewID(i), InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                    } else {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                    }
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
                for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != Game.player.iCivID) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                    } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).buildingBuilt(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                        spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, provinceAlpha));
                    } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).isUnderConstruction(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_BLUE.r, MapModeManager.PROVINCE_BLUE.g, MapModeManager.PROVINCE_BLUE.b, provinceAlpha));
                    } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getBuildingsLimit_FreeSlots() <= 0) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                    } else if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).SeaAccessRequired && Game.getProvince(Game.getExtraProvinceInViewID(i2)).getLevelOfPort() < 0) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                    } else if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource >= 0 && BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource != Game.getProvince(Game.getExtraProvinceInViewID(i2)).getResourceID()) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                    } else if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).isOccupied() || Game.getCiv(Game.player.iCivID).fGold < Game.getBuildingConstructionCost(Game.player.iCivID, Game.getExtraProvinceInViewID(i2), InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_RED.r, MapModeManager.PROVINCE_RED.g, MapModeManager.PROVINCE_RED.b, provinceAlpha));
                    } else {
                        spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GREEN.r, MapModeManager.PROVINCE_GREEN.g, MapModeManager.PROVINCE_GREEN.b, provinceAlpha));
                    }
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
                }
                ProvinceDraw.drawOccupiedProvinces(spriteBatch);
            } catch (Exception unused) {
                MapModeManager mapModeManager = MapModeManager.this;
                mapModeManager.setActiveViewID(mapModeManager.MODE_DEFAULT);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$187, reason: invalid class name */
    class AnonymousClass187 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass187() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    Game.provinceHover_Informations = null;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource >= 0 && BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource != Game.getProvince(Game.iHoveredProvinceID).getResourceID()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RequiredResource") + ": "));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.getResourceName(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource), Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Resource(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).SeaAccessRequired && Game.getProvince(Game.iHoveredProvinceID).getLevelOfPort() < 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NoAccessToTheSea")));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.ship, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else if (Game.getProvince(Game.iHoveredProvinceID).isUnderConstruction(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(LBhZogys.GWjLnzvsthWSZ) + ": "));
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).Name[InGame_Court_Buildings2.oBuildingID.getPosY()], Colors.COLOR_TEXT_GOLD));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else if (Game.getProvince(Game.iHoveredProvinceID).buildingBuilt(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("BuildingConstructed") + ": "));
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).Name[InGame_Court_Buildings2.oBuildingID.getPosY()], Colors.COLOR_TEXT_GOLD));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else if (Game.getCiv(Game.player.iCivID).fGold >= Game.getBuildingConstructionCost(Game.player.iCivID, Game.iHoveredProvinceID, InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Build") + ": "));
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).Name[InGame_Court_Buildings2.oBuildingID.getPosY()], Colors.COLOR_TEXT_GOLD));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else if (Game.getProvince(Game.iHoveredProvinceID).getUsedBuildingsSlots() >= Game.getProvince(Game.iHoveredProvinceID).iBuildingsLimit) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingSlots") + ": "));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getUsedBuildingsSlots() + " / " + Game.getProvince(Game.iHoveredProvinceID).iBuildingsLimit, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseEconomyInAProvinceToUnlockMoreBuildingSlots"), Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InsufficientGold") + ": ", Colors.HOVER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getBuildingConstructionCost(Game.player.iCivID, Game.iHoveredProvinceID, InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY()), Colors.COLOR_TEXT_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).ResearchPoints != null && BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).ResearchPoints[InGame_Court_Buildings2.oBuildingID.getPosY()] > 0.0f) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ResearchPerMonth") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2((BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).ResearchPoints[InGame_Court_Buildings2.oBuildingID.getPosY()] * Game.getProvince(Game.iHoveredProvinceID).getGrowthRateWithBonuses()) / 100.0f, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource >= 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RequiredResource") + ": "));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + ResourcesManager.lResources.get(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource).Name, BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource != Game.getProvince(Game.iHoveredProvinceID).getResourceID() ? Colors.HOVER_NEGATIVE : Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Resource(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    Game.setCursorBuild();
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorX();
                }
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$188, reason: invalid class name */
    class AnonymousClass188 extends MapMode {
        AnonymousClass188(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
            InGame_Court_Buildings2.oBuildingID = null;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            Game.setCursorBuild();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$19, reason: invalid class name */
    class AnonymousClass19 implements ProvinceDraw.DrawProvinces {
        AnonymousClass19() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_Alliances(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$2, reason: invalid class name */
    class AnonymousClass2 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                        Game.provinceHover_Informations = null;
                        return;
                    }
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UncolonizedLand"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        if (Game.activeArmySize > 0 && Game.getProvince(Game.iHoveredProvinceID).getFortLevel() > 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Line());
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DefenseLevel") + ": ", "" + Game.getProvince(Game.iHoveredProvinceID).getFortLevel(), Images.fort, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                        }
                    }
                    if (CFG.debugMode) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("ID: ", "" + Game.iHoveredProvinceID, Images.provinces, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("Civ ID: ", "" + Game.getProvince(Game.iHoveredProvinceID).getCivID(), Images.council, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                        boolean z = true;
                        int i = 0;
                        for (int i2 = 0; i2 < Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getArmyRecruitSize(); i2++) {
                            for (int i3 = 0; i3 < Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).size(); i3++) {
                                if (Game.iHoveredProvinceID == Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).provinceID) {
                                    if (z) {
                                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                                        arrayList2.clear();
                                        arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), 0, CFG.PADDING));
                                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TheArmyWillBeDeployedToThisLocation") + ": ", CFG.FONT_REGULAR_SMALL));
                                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).timeLeft), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                                        arrayList2.clear();
                                        z = false;
                                    }
                                    arrayList2.add(new MenuElement_HoverElement_Type_Text(ArmyManager.lArmy.get(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).unitID).get(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).armyID).Name + ": ", CFG.FONT_REGULAR_SMALL));
                                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).timeLeft + i), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                    i += Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).timeLeft;
                                }
                            }
                        }
                    }
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$20, reason: invalid class name */
    class AnonymousClass20 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass20() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getCivName(), Colors.HOVER_GOLD));
                    } else {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() > 0 && !Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).diplomacy.alliance.isEmpty()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        Iterator<java.util.Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).diplomacy.alliance.entrySet().iterator();
                        while (it.hasNext()) {
                            Diplomacy.DiplomacyData value = it.next().getValue();
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(value.iCivID).getCivName(), Colors.HOVER_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_Flag(value.iCivID, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                        }
                    }
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$21, reason: invalid class name */
    class AnonymousClass21 extends MapMode {
        AnonymousClass21(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$22, reason: invalid class name */
    class AnonymousClass22 implements ProvinceDraw.DrawProvinces {
        AnonymousClass22() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_DefensivePacts(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$23, reason: invalid class name */
    class AnonymousClass23 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass23() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getCivName(), Colors.HOVER_GOLD));
                    } else {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() > 0 && !Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).diplomacy.defensivePact.isEmpty()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        Iterator<java.util.Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).diplomacy.defensivePact.entrySet().iterator();
                        while (it.hasNext()) {
                            Diplomacy.DiplomacyData value = it.next().getValue();
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(value.iCivID).getCivName(), Colors.HOVER_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_Flag(value.iCivID, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                        }
                    }
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$24, reason: invalid class name */
    class AnonymousClass24 extends MapMode {
        AnonymousClass24(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$25, reason: invalid class name */
    class AnonymousClass25 implements ProvinceDraw.DrawProvinces {
        AnonymousClass25() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_NonAggressionPacts(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$26, reason: invalid class name */
    class AnonymousClass26 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass26() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getCivName(), Colors.HOVER_GOLD));
                    } else {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() > 0 && !Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).diplomacy.nonAggressionPact.isEmpty()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        Iterator<java.util.Map.Entry<Integer, Diplomacy.DiplomacyData>> it = Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).diplomacy.nonAggressionPact.entrySet().iterator();
                        while (it.hasNext()) {
                            Diplomacy.DiplomacyData value = it.next().getValue();
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(value.iCivID).getCivName(), Colors.HOVER_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_Flag(value.iCivID, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                        }
                    }
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$27, reason: invalid class name */
    class AnonymousClass27 extends MapMode {
        AnonymousClass27(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$28, reason: invalid class name */
    class AnonymousClass28 implements ProvinceDraw.DrawProvinces {
        AnonymousClass28() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_Nuke(spriteBatch);
            if (Game.menuManager.getVisibleInGame_Nukes()) {
                return;
            }
            MapModeManager mapModeManager = MapModeManager.this;
            mapModeManager.setActiveViewID(mapModeManager.MODE_DEFAULT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$29, reason: invalid class name */
    class AnonymousClass29 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass29() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$3, reason: invalid class name */
    class AnonymousClass3 extends MapMode {
        AnonymousClass3(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$30, reason: invalid class name */
    class AnonymousClass30 extends MapMode {
        AnonymousClass30(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
            Game.setCursorNuke();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$31, reason: invalid class name */
    class AnonymousClass31 implements ProvinceDraw.DrawProvinces {
        AnonymousClass31() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_Colonize(spriteBatch);
            if (Game.menuManager.getVisibleInGame_Court()) {
                return;
            }
            MapModeManager mapModeManager = MapModeManager.this;
            mapModeManager.setActiveViewID(mapModeManager.MODE_DEFAULT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$32, reason: invalid class name */
    class AnonymousClass32 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass32() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$33, reason: invalid class name */
    class AnonymousClass33 extends MapMode {
        AnonymousClass33(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.setCursorDefault();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
            Game.setCursorPopulationGrowth();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$34, reason: invalid class name */
    class AnonymousClass34 implements ProvinceDraw.DrawProvinces {
        AnonymousClass34() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_FormCiv(spriteBatch);
            if (Game.menuManager.getVisibleFormCiv()) {
                return;
            }
            MapModeManager mapModeManager = MapModeManager.this;
            mapModeManager.setActiveViewID(mapModeManager.MODE_DEFAULT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$35, reason: invalid class name */
    class AnonymousClass35 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass35() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$36, reason: invalid class name */
    class AnonymousClass36 extends MapMode {
        AnonymousClass36(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                try {
                    Game.getProvince(i).drawInMapMode = Game.player.formableCivs.get(InGame_FormCiv.formCivID).Provinces.contains(Integer.valueOf(i));
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$37, reason: invalid class name */
    class AnonymousClass37 implements ProvinceDraw.DrawProvinces {
        AnonymousClass37() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_SpecialAlliance_View(spriteBatch);
            if (Game.menuManager.getVisible_SpecialAlliance()) {
                return;
            }
            MapModeManager mapModeManager = MapModeManager.this;
            mapModeManager.setActiveViewID(mapModeManager.MODE_DEFAULT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$38, reason: invalid class name */
    class AnonymousClass38 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass38() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$39, reason: invalid class name */
    class AnonymousClass39 extends MapMode {
        AnonymousClass39(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
            MapModeManager.this.updateSpecialAllianceView();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$4, reason: invalid class name */
    class AnonymousClass4 implements ProvinceDraw.DrawProvinces {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.updateDiplomacyProvinceColor(true);
            ProvinceDraw.drawProvinces_Diplomacy(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$40, reason: invalid class name */
    class AnonymousClass40 implements ProvinceDraw.DrawProvinces {
        AnonymousClass40() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_WarView(spriteBatch);
            if (Game.menuManager.getVisibleInGame_War()) {
                return;
            }
            MapModeManager mapModeManager = MapModeManager.this;
            mapModeManager.setActiveViewID(mapModeManager.MODE_DEFAULT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$41, reason: invalid class name */
    class AnonymousClass41 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass41() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$42, reason: invalid class name */
    class AnonymousClass42 extends MapMode {
        AnonymousClass42(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            if (!Game.menuManager.getVisibleInGame_Civ()) {
                ProvinceDraw.clearBiggestCities();
            }
            if (Game.menuManager.getVisibleInGame_War()) {
                Game.menuManager.setVisibleInGame_War(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
            MapModeManager.this.updateWarView(InGame_War.key);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$43, reason: invalid class name */
    class AnonymousClass43 implements ProvinceDraw.DrawProvinces {
        AnonymousClass43() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_Peace(spriteBatch);
            if (Game.menuManager.getVisibleInGame_Peace()) {
                return;
            }
            MapModeManager mapModeManager = MapModeManager.this;
            mapModeManager.setActiveViewID(mapModeManager.MODE_DEFAULT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$44, reason: invalid class name */
    class AnonymousClass44 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass44() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getProvince(Game.iHoveredProvinceID).peaceTreatyIsToTake) {
                        if (Game.getProvince(Game.iHoveredProvinceID).getResourceID() >= 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(ResourcesManager.getResourceName(Game.getProvince(Game.iHoveredProvinceID).getResourceID()), "", Game.getProvince(Game.iHoveredProvinceID).getResourceID(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).fProvinceValue, 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Game.getProvince(Game.iHoveredProvinceID).fProvinceValue <= Game.player.peaceTreaty.fScore ? Colors.HOVER_GOLD : Colors.HOVER_NEGATIVE));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(Game.iHoveredProvinceID).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                    }
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$45, reason: invalid class name */
    class AnonymousClass45 extends MapMode {
        AnonymousClass45(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            CFG.brushTool = false;
            Renderer.drawArmyInProvince = true;
            if (Game.menuManager.getVisibleInGame_Peace()) {
                Game.menuManager.setVisibleInGame_Peace(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
            MapModeManager.this.updatePeaceView(InGame_War.key);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$46, reason: invalid class name */
    class AnonymousClass46 implements ProvinceDraw.DrawProvinces {
        AnonymousClass46() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_ReleaseVassal(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$47, reason: invalid class name */
    class AnonymousClass47 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass47() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$48, reason: invalid class name */
    class AnonymousClass48 extends MapMode {
        AnonymousClass48(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            CFG.brushTool = false;
            Renderer.drawArmyInProvince = true;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$49, reason: invalid class name */
    class AnonymousClass49 implements ProvinceDraw.DrawProvinces {
        AnonymousClass49() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$5, reason: invalid class name */
    class AnonymousClass5 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SeaProvince"), Colors.HOVER_GOLD));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else {
                        if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                            arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            arrayList2.add(new MenuElement_HoverElement_Type_Line());
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UncolonizedLand"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                        } else {
                            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(Game.iHoveredProvinceID).getCivID(), Game.getProvince(Game.iHoveredProvinceID).getProvinceName()));
                            arrayList.add(new MenuElement_HoverElement(arrayList2));
                            arrayList2.clear();
                            if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == MapModeManager.diplomacyActiveCivID) {
                                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getNumOfProvinces()), Images.provinces, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                arrayList.add(new MenuElement_HoverElement(arrayList2));
                                arrayList2.clear();
                            } else if (DiplomacyManager.isAtWar(MapModeManager.diplomacyActiveCivID, Game.getProvince(Game.iHoveredProvinceID).getCivID())) {
                                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AtWar"), "", Images.war, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                arrayList.add(new MenuElement_HoverElement(arrayList2));
                                arrayList2.clear();
                            } else {
                                int relation = (int) Game.getCiv(MapModeManager.diplomacyActiveCivID).diplomacy.getRelation(Game.getProvince(Game.iHoveredProvinceID).getCivID());
                                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + ": ", (relation > 0 ? "+" : "") + CFG.getPrecision2(relation, 10), Images.relations, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, DiplomacyManager.getOpinion_Color(relation)));
                                arrayList.add(new MenuElement_HoverElement(arrayList2));
                                arrayList2.clear();
                                if (Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getPuppetOfCivID() == MapModeManager.diplomacyActiveCivID) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(Game_Ages.getVassal()), "", Images.vassal, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                } else if (Game.getCiv(MapModeManager.diplomacyActiveCivID).getPuppetOfCivID() == Game.getProvince(Game.iHoveredProvinceID).getCivID()) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(Game_Ages.getLord()), "", Images.vassal, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                } else if (Game.getCiv(MapModeManager.diplomacyActiveCivID).diplomacy.alliance.containsKey(Integer.valueOf(Game.getProvince(Game.iHoveredProvinceID).getCivID()))) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Alliance"), "", Images.alliance, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                } else if (Game.getCiv(MapModeManager.diplomacyActiveCivID).diplomacy.defensivePact.containsKey(Integer.valueOf(Game.getProvince(Game.iHoveredProvinceID).getCivID()))) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DefensivePact"), "", Images.defensivePact, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                } else if (Game.getCiv(MapModeManager.diplomacyActiveCivID).diplomacy.truce.containsKey(Integer.valueOf(Game.getProvince(Game.iHoveredProvinceID).getCivID()))) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Truce"), "", Images.truce, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                } else if (Game.getCiv(MapModeManager.diplomacyActiveCivID).diplomacy.guarantee.containsKey(Integer.valueOf(Game.getProvince(Game.iHoveredProvinceID).getCivID()))) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GuaranteeIndependence"), "", Images.guaranteeIndependence, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                } else if (Game.getCiv(MapModeManager.diplomacyActiveCivID).diplomacy.guaranteeByCivID.containsKey(Integer.valueOf(Game.getProvince(Game.iHoveredProvinceID).getCivID()))) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GuaranteeTheirIndependence"), "", Images.guaranteeIndependence, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                } else if (Game.getCiv(MapModeManager.diplomacyActiveCivID).diplomacy.nonAggressionPact.containsKey(Integer.valueOf(Game.getProvince(Game.iHoveredProvinceID).getCivID()))) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("NonAggressionPact"), "", Images.nonAggression, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                } else if (Game.getCiv(MapModeManager.diplomacyActiveCivID).diplomacy.militaryAccess.containsKey(Integer.valueOf(Game.getProvince(Game.iHoveredProvinceID).getCivID()))) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MilitaryAccess"), "", Images.militaryAccess, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                } else if (Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).diplomacy.militaryAccess.containsKey(Integer.valueOf(MapModeManager.diplomacyActiveCivID))) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GivesMilitaryAccess"), "", Images.militaryAccess2, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                }
                            }
                            if (Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).inAllianceSize > 0) {
                                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                                arrayList.add(new MenuElement_HoverElement(arrayList2));
                                arrayList2.clear();
                                for (int i = 0; i < Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).inAllianceSize; i++) {
                                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game.alliancesSpecial.get(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).inAlliance.get(i).intValue()).Name_Alliance), Colors.HOVER_GOLD));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                }
                            }
                        }
                    }
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$50, reason: invalid class name */
    class AnonymousClass50 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass50() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList2.add(new MenuElement_HoverElement_Type_Terrain(Game.getProvince(Game.iHoveredProvinceID).getTerrainID(), Game.iHoveredProvinceID, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                        boolean z = true;
                        int i = 0;
                        for (int i2 = 0; i2 < Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getArmyRecruitSize(); i2++) {
                            for (int i3 = 0; i3 < Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).size(); i3++) {
                                if (Game.iHoveredProvinceID == Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).provinceID) {
                                    if (z) {
                                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                                        arrayList2.clear();
                                        arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), 0, CFG.PADDING));
                                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TheArmyWillBeDeployedToThisLocation") + ": ", CFG.FONT_REGULAR_SMALL));
                                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).timeLeft), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                                        arrayList2.clear();
                                        z = false;
                                    }
                                    arrayList2.add(new MenuElement_HoverElement_Type_Text(ArmyManager.lArmy.get(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).unitID).get(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).armyID).Name + ": ", CFG.FONT_REGULAR_SMALL));
                                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DaysX", Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).timeLeft + i), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
                                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                                    arrayList2.clear();
                                    i += Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).lArmyRecruit.get(i2).get(i3).timeLeft;
                                }
                            }
                        }
                    }
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$51, reason: invalid class name */
    class AnonymousClass51 extends MapMode {
        AnonymousClass51(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            ProvinceDraw.updateDrawProvinces_Standard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$52, reason: invalid class name */
    class AnonymousClass52 implements ProvinceDraw.DrawProvinces {
        AnonymousClass52() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha(Colors.PROVINCE_ALPHA_POPULATION) * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.a = provinceAlpha;
                spriteBatch.setColor(Game.getProvince(Game.getProvinceInViewID(i)).provinceColor);
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.a = provinceAlpha;
                spriteBatch.setColor(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor);
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$53, reason: invalid class name */
    class AnonymousClass53 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass53() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Population") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.getProvince(Game.iHoveredProvinceID).getPopulationTotal()), Colors.COLOR_POPULATION));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.population, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$54, reason: invalid class name */
    class AnonymousClass54 extends MapMode {
        AnonymousClass54(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.updateRightMenu();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.updateMaxPopulation();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (!Game.getProvince(i).getSeaProvince()) {
                    Game.getProvince(i).provinceColor = Colors.getPopulationColor((int) ((Game.getProvince(i).getPopulationTotal() / MapModeManager.this.POPULATION_MAX) * 100.0f), 1.0f);
                }
            }
            Game.menuManager.rebuildInGame_RightPopulation();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$55, reason: invalid class name */
    class AnonymousClass55 implements ProvinceDraw.DrawProvinces {
        AnonymousClass55() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha(Colors.PROVINCE_ALPHA_POPULATION) * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.a = provinceAlpha;
                spriteBatch.setColor(Game.getProvince(Game.getProvinceInViewID(i)).provinceColor);
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.a = provinceAlpha;
                spriteBatch.setColor(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor);
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$56, reason: invalid class name */
    class AnonymousClass56 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass56() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Economy") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getEconomyWithBonuses(), 100), Colors.COLOR_TEXT_ECONOMY));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$57, reason: invalid class name */
    class AnonymousClass57 extends MapMode {
        AnonymousClass57(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.updateRightMenu();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.updateMaxEconomy();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (!Game.getProvince(i).getSeaProvince()) {
                    Game.getProvince(i).provinceColor = Colors.getEconomyColor((int) ((Game.getProvince(i).getEconomyWithBonuses() / MapModeManager.this.ECONOMY_MAX) * 100.0f), 1.0f);
                }
            }
            Game.menuManager.rebuildInGame_RightEconomy();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$58, reason: invalid class name */
    class AnonymousClass58 implements ProvinceDraw.DrawProvinces {
        AnonymousClass58() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha(Colors.PROVINCE_ALPHA_POPULATION) * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.a = provinceAlpha;
                spriteBatch.setColor(Game.getProvince(Game.getProvinceInViewID(i)).provinceColor);
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.a = provinceAlpha;
                spriteBatch.setColor(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor);
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$59, reason: invalid class name */
    class AnonymousClass59 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass59() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Unrest") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getRevulutionaryRisk(), 100) + lOow.DzVNR, Game.getProvince(Game.iHoveredProvinceID).getRevulutionaryRisk() == 0.0f ? Colors.HOVER_NEUTRAL : Colors.HOVER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.revolutionRisk, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$6, reason: invalid class name */
    class AnonymousClass6 extends MapMode {
        AnonymousClass6(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.diplomacyColorsPosX = -777777;
            MapModeManager.diplomacyColorsPosY = -777777;
            MapModeManager.diplomacyScale = -777.0f;
            MapModeManager.diplomacyActiveCivID = -777;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$60, reason: invalid class name */
    class AnonymousClass60 extends MapMode {
        AnonymousClass60(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (!Game.getProvince(i).getSeaProvince()) {
                    if (Game.getProvince(i).getRevulutionaryRisk() < 0.5f) {
                        Game.getProvince(i).provinceColor = MapModeManager.PROVINCE_GRAY;
                    } else {
                        Game.getProvince(i).provinceColor = Colors.getProvinceRedColor((int) ((Game.getProvince(i).getRevulutionaryRisk() / 50.0f) * 100.0f), 1.0f);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$61, reason: invalid class name */
    class AnonymousClass61 implements ProvinceDraw.DrawProvinces {
        AnonymousClass61() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha(Colors.PROVINCE_ALPHA_POPULATION) * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.a = provinceAlpha;
                spriteBatch.setColor(Game.getProvince(Game.getProvinceInViewID(i)).provinceColor);
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.a = provinceAlpha;
                spriteBatch.setColor(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor);
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$62, reason: invalid class name */
    class AnonymousClass62 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass62() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TaxEfficiency") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getTaxEfficiencyWithBonuses(), 100) + "%", Colors.COLOR_TEXT_ECONOMY));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$63, reason: invalid class name */
    class AnonymousClass63 extends MapMode {
        AnonymousClass63(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.updateRightMenu();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.updateMaxTax();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                if (!Game.getProvince(i).getSeaProvince()) {
                    Game.getProvince(i).provinceColor = Colors.getProvinceTaxColor((int) ((Game.getProvince(i).getTaxEfficiencyWithBonuses() / MapModeManager.this.TAX_MAX) * 100.0f), 1.0f);
                }
            }
            Game.menuManager.rebuildInGame_RightTaxEfficiency();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$64, reason: invalid class name */
    class AnonymousClass64 implements ProvinceDraw.DrawProvinces {
        AnonymousClass64() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                spriteBatch.setColor(Colors.getProvinceDevastationColor((int) ((Game.getProvince(Game.getProvinceInViewID(i)).getDevastation() / GameValues.siege.DEVASTATION_MAX) * 100.0f), provinceAlpha));
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                spriteBatch.setColor(Colors.getProvinceDevastationColor((int) ((Game.getProvince(Game.getExtraProvinceInViewID(i2)).getDevastation() / GameValues.siege.DEVASTATION_MAX) * 100.0f), provinceAlpha));
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$65, reason: invalid class name */
    class AnonymousClass65 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass65() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Devastation") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getDevastation() * 100.0f, 100) + "%", Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.devastation, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$66, reason: invalid class name */
    class AnonymousClass66 extends MapMode {
        AnonymousClass66(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$67, reason: invalid class name */
    class AnonymousClass67 implements ProvinceDraw.DrawProvinces {
        AnonymousClass67() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                spriteBatch.setColor(Colors.getProvinceLootColor((int) (Game.getProvince(Game.getProvinceInViewID(i)).getLoot() * 100.0f), provinceAlpha));
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                spriteBatch.setColor(Colors.getProvinceLootColor((int) (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getLoot() * 100.0f), provinceAlpha));
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$68, reason: invalid class name */
    class AnonymousClass68 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass68() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Loot") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getLoot() * 100.0f, 100) + "%", Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.loot, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Gold") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getLootValue(Game.iHoveredProvinceID), 100), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$69, reason: invalid class name */
    class AnonymousClass69 extends MapMode {
        AnonymousClass69(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$7, reason: invalid class name */
    class AnonymousClass7 implements ProvinceDraw.DrawProvinces {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            ProvinceDraw.drawProvinces_DiplomacyRelations(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$70, reason: invalid class name */
    class AnonymousClass70 implements ProvinceDraw.DrawProvinces {
        AnonymousClass70() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getFortLevel() == 0) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Colors.COLOR_PROVINCE_DEFENSE.r, Colors.COLOR_PROVINCE_DEFENSE.g, Colors.COLOR_PROVINCE_DEFENSE.b, provinceAlpha));
                }
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getFortLevel() == 0) {
                    spriteBatch.setColor(new Color(MapModeManager.PROVINCE_GRAY.r, MapModeManager.PROVINCE_GRAY.g, MapModeManager.PROVINCE_GRAY.b, provinceAlpha));
                } else {
                    spriteBatch.setColor(new Color(Colors.COLOR_PROVINCE_DEFENSE.r, Colors.COLOR_PROVINCE_DEFENSE.g, Colors.COLOR_PROVINCE_DEFENSE.b, provinceAlpha));
                }
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$71, reason: invalid class name */
    class AnonymousClass71 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass71() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            String str = fTNtCctcBZcqKK.ZCGPBgxf;
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(ATsAGKCnv.xFXODKAPSrnK) + ": ", str + Game.getProvince(Game.iHoveredProvinceID).getFortLevel(), Images.fort, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$72, reason: invalid class name */
    class AnonymousClass72 extends MapMode {
        AnonymousClass72(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$73, reason: invalid class name */
    class AnonymousClass73 implements ProvinceDraw.DrawProvinces {
        AnonymousClass73() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            try {
                float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
                ProvinceDraw.drawWastelandProvinces(spriteBatch);
                for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i)).provincePlague != null) {
                        spriteBatch.setColor(new Color(PlagueManager.activePlagues.get(Game.getProvince(Game.getProvinceInViewID(i)).provincePlague.id).fR, PlagueManager.activePlagues.get(Game.getProvince(Game.getProvinceInViewID(i)).provincePlague.id).fG, PlagueManager.activePlagues.get(Game.getProvince(Game.getProvinceInViewID(i)).provincePlague.id).fB, provinceAlpha));
                        Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                    }
                }
                for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).provincePlague != null) {
                        spriteBatch.setColor(new Color(PlagueManager.activePlagues.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provincePlague.id).fR, PlagueManager.activePlagues.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provincePlague.id).fG, PlagueManager.activePlagues.get(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provincePlague.id).fB, provinceAlpha));
                        Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                    }
                }
                ProvinceDraw.drawOccupiedProvinces(spriteBatch);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$74, reason: invalid class name */
    class AnonymousClass74 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass74() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.getProvince(Game.iHoveredProvinceID).provincePlague != null) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Disease") + ": "));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + PlagueManager.activePlagues.get(Game.getProvince(Game.iHoveredProvinceID).provincePlague.id).sName, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Disease(PlagueManager.activePlagues.get(Game.getProvince(Game.iHoveredProvinceID).provincePlague.id).iImageID, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Deaths") + ": "));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + Game.getProvince(Game.iHoveredProvinceID).provincePlague.deaths), Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skull, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$75, reason: invalid class name */
    class AnonymousClass75 extends MapMode {
        AnonymousClass75(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.mapBG.updateActiveMapBGShader();
            Renderer.drawArmyInProvince = true;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            Game.mapBG.updateActiveMapBGShader();
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_Diseases();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$76, reason: invalid class name */
    class AnonymousClass76 implements ProvinceDraw.DrawProvinces {
        AnonymousClass76() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha(Colors.PROVINCE_ALPHA_POPULATION) * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                spriteBatch.setColor(Colors.getEconomyColor((int) ((Game.getProvince(Game.getProvinceInViewID(i)).getInfrastructure() / GameValues.infrastructure.INFRASTRUCTURE_MAX_LVL) * 100.0f), provinceAlpha));
                Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                spriteBatch.setColor(Colors.getEconomyColor((int) ((Game.getProvince(Game.getExtraProvinceInViewID(i2)).getInfrastructure() / GameValues.infrastructure.INFRASTRUCTURE_MAX_LVL) * 100.0f), provinceAlpha));
                Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvinceExtra(spriteBatch);
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$77, reason: invalid class name */
    class AnonymousClass77 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass77() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Infrastructure") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(Game.iHoveredProvinceID).getInfrastructure() + " / " + Game.getProvince(Game.iHoveredProvinceID).iInfrastructureMax, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.infrastructure, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$78, reason: invalid class name */
    class AnonymousClass78 extends MapMode {
        AnonymousClass78(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.updateRightMenu();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            Game.menuManager.rebuildInGame_RightInfrastructure();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$79, reason: invalid class name */
    class AnonymousClass79 implements ProvinceDraw.DrawProvinces {
        AnonymousClass79() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                    spriteBatch.setColor(new Color(Game.ideologiesManager.getIdeology(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getIdeologyID()).Color[0], Game.ideologiesManager.getIdeology(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getIdeologyID()).Color[1], Game.ideologiesManager.getIdeology(Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getIdeologyID()).Color[2], provinceAlpha));
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                    spriteBatch.setColor(new Color(Game.ideologiesManager.getIdeology(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getIdeologyID()).Color[0], Game.ideologiesManager.getIdeology(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getIdeologyID()).Color[1], Game.ideologiesManager.getIdeology(Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID()).getIdeologyID()).Color[2], provinceAlpha));
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$8, reason: invalid class name */
    class AnonymousClass8 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    if (Game.getProvince(Game.iHoveredProvinceID).getCivID() > 0 && Game.getProvince(Game.iHoveredProvinceID).getCivID() != Game.player.iCivID) {
                        Game.provinceHover_Informations = InGame_Civ.getHoverBetweenCivilizations(Game.getProvince(Game.iHoveredProvinceID).getCivID(), Game.player.iCivID, true, false);
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$80, reason: invalid class name */
    class AnonymousClass80 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass80() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Government") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.ideologiesManager.getIdeology(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getIdeologyID()).Name, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$81, reason: invalid class name */
    class AnonymousClass81 extends MapMode {
        AnonymousClass81(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.updateRightMenu();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            InGame_RightGovernment.iGovID = -1;
            Game.menuManager.rebuildInGame_RightGovernment();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$82, reason: invalid class name */
    class AnonymousClass82 implements ProvinceDraw.DrawProvinces {
        AnonymousClass82() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha() * MapModeManager.fAlphaAnimation;
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
                if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                    spriteBatch.setColor(new Color(Game.religionManager.getReligion(Game.getProvince(Game.getProvinceInViewID(i)).getReligion()).Color[0], Game.religionManager.getReligion(Game.getProvince(Game.getProvinceInViewID(i)).getReligion()).Color[1], Game.religionManager.getReligion(Game.getProvince(Game.getProvinceInViewID(i)).getReligion()).Color[2], provinceAlpha));
                    Game.getProvince(Game.getProvinceInViewID(i)).drawLandProvince(spriteBatch);
                }
            }
            for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() > 0) {
                    spriteBatch.setColor(new Color(Game.religionManager.getReligion(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getReligion()).Color[0], Game.religionManager.getReligion(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getReligion()).Color[1], Game.religionManager.getReligion(Game.getProvince(Game.getExtraProvinceInViewID(i2)).getReligion()).Color[2], provinceAlpha));
                    Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                }
            }
            spriteBatch.setShader(Renderer.shaderAlpha_Pattern);
            for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
                if (Game.getProvince(Game.getProvinceInViewID(i3)).getCivID() > 0 && Game.getProvince(Game.getProvinceInViewID(i3)).getReligion() != Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i3)).getCivID()).getReligionID()) {
                    Game.getProvince(Game.getProvinceInViewID(i3)).drawOccupiedProvince_Religion(spriteBatch);
                }
            }
            for (int i4 = 0; i4 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i4++) {
                if (Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID() > 0 && Game.getProvince(Game.getExtraProvinceInViewID(i4)).getReligion() != Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()).getReligionID()) {
                    Game.getProvince(Game.getExtraProvinceInViewID(i4)).drawOccupiedProvince_Religion(spriteBatch);
                }
            }
            spriteBatch.setShader(Renderer.shaderDefault);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$83, reason: invalid class name */
    class AnonymousClass83 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass83() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            try {
                if (Game.iHoveredProvinceID >= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Religion") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.religionManager.getReligion(Game.getProvince(Game.iHoveredProvinceID).getReligion()).Name, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Religion(Game.getProvince(Game.iHoveredProvinceID).getReligion(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
            } catch (Exception unused) {
            }
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$84, reason: invalid class name */
    class AnonymousClass84 extends MapMode {
        AnonymousClass84(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.updateRightMenu();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            InGame_RightReligion.iReligionID = -1;
            Game.menuManager.rebuildInGame_RightReligion();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$85, reason: invalid class name */
    class AnonymousClass85 implements ProvinceDraw.DrawProvinces {
        AnonymousClass85() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover_Player(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$86, reason: invalid class name */
    class AnonymousClass86 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass86() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$87, reason: invalid class name */
    class AnonymousClass87 extends MapMode {
        AnonymousClass87(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_INCOME_MAX = 0.15f;
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getProvinceIncome() > MapModeManager.this.PROVINCE_INCOME_MAX) {
                    MapModeManager.this.PROVINCE_INCOME_MAX = Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getProvinceIncome();
                }
            }
            MapModeManager.this.PROVINCE_INCOME_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).provinceColor = Colors.getProvinceIncomeColor((int) ((Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).getProvinceIncome() / MapModeManager.this.PROVINCE_INCOME_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$88, reason: invalid class name */
    class AnonymousClass88 implements ProvinceDraw.DrawProvinces {
        AnonymousClass88() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$89, reason: invalid class name */
    class AnonymousClass89 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass89() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$9, reason: invalid class name */
    class AnonymousClass9 extends MapMode {
        AnonymousClass9(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            Game.mapCities.updateCapitalCityName();
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            Game.mapCities.updateCapitalCityName();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$90, reason: invalid class name */
    class AnonymousClass90 extends MapMode {
        AnonymousClass90(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_INCOME_MAX = 0.025f;
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).fProvinceMaintenance > MapModeManager.this.PROVINCE_INCOME_MAX) {
                    MapModeManager.this.PROVINCE_INCOME_MAX = Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).fProvinceMaintenance;
                }
            }
            MapModeManager.this.PROVINCE_INCOME_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).provinceColor = Colors.getProvinceRedColor((int) ((Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).fProvinceMaintenance / MapModeManager.this.PROVINCE_INCOME_MAX) * 100.0f), 1.0f);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$91, reason: invalid class name */
    class AnonymousClass91 implements ProvinceDraw.DrawProvinces {
        AnonymousClass91() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.updateDiplomacyProvinceColor(false);
            ProvinceDraw.drawProvinces_Diplomacy_Hover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$92, reason: invalid class name */
    class AnonymousClass92 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass92() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$93, reason: invalid class name */
    class AnonymousClass93 extends MapMode {
        AnonymousClass93(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.POPULATION_MAX = 1;
            int i = MapModeManager.diplomacyActiveCivID;
            for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getPopulationTotal() > MapModeManager.this.POPULATION_MAX) {
                    MapModeManager.this.POPULATION_MAX = Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getPopulationTotal();
                }
            }
            MapModeManager mapModeManager = MapModeManager.this;
            mapModeManager.POPULATION_MAX = (int) (mapModeManager.POPULATION_MAX * 0.95f);
            for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
                Game.getProvince(Game.getCiv(i).getProvinceID(i3)).provinceColor = Colors.getPopulationColor((int) ((Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getPopulationTotal() / MapModeManager.this.POPULATION_MAX) * 100.0f), 1.0f);
            }
            MapModeManager.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$94, reason: invalid class name */
    class AnonymousClass94 implements ProvinceDraw.DrawProvinces {
        AnonymousClass94() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.updateDiplomacyProvinceColor(false);
            ProvinceDraw.drawProvinces_Diplomacy_Hover(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$95, reason: invalid class name */
    class AnonymousClass95 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass95() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$96, reason: invalid class name */
    class AnonymousClass96 extends MapMode {
        AnonymousClass96(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.ECONOMY_MAX = 1.0f;
            int i = MapModeManager.diplomacyActiveCivID;
            for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
                if (Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getEconomyWithBonuses() > MapModeManager.this.ECONOMY_MAX) {
                    MapModeManager.this.ECONOMY_MAX = Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getEconomyWithBonuses();
                }
            }
            MapModeManager.this.ECONOMY_MAX *= 0.95f;
            for (int i3 = 0; i3 < Game.getCiv(i).getNumOfProvinces(); i3++) {
                Game.getProvince(Game.getCiv(i).getProvinceID(i3)).provinceColor = Colors.getEconomyColor((int) ((Game.getProvince(Game.getCiv(i).getProvinceID(i3)).getEconomyWithBonuses() / MapModeManager.this.ECONOMY_MAX) * 100.0f), 1.0f);
            }
            MapModeManager.lTime = 0L;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$97, reason: invalid class name */
    class AnonymousClass97 implements ProvinceDraw.DrawProvinces {
        AnonymousClass97() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDraw.DrawProvinces
        public void draw(SpriteBatch spriteBatch) {
            MapModeManager.drawProvinces_DefaultHover_Player(spriteBatch);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$98, reason: invalid class name */
    class AnonymousClass98 implements ProvinceHover.ProvinceHoverBuild {
        AnonymousClass98() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = MapModeManager.getProvinceHover_Default();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.MapModeManager$99, reason: invalid class name */
    class AnonymousClass99 extends MapMode {
        AnonymousClass99(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
            super(drawProvinces, provinceHoverBuild);
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void disableViewAction() {
            super.disableViewAction();
            MapModeManager.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.map.map.MapMode
        public void enableViewAction() {
            super.enableViewAction();
            MapModeManager.this.PROVINCE_MANPOWER_MAX = 0.15f;
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                if (Game.getManpowerMaxFromProvinceManpowerLvl(Game.getCiv(Game.player.iCivID).getProvinceID(i)) > MapModeManager.this.PROVINCE_MANPOWER_MAX) {
                    MapModeManager.this.PROVINCE_MANPOWER_MAX = Game.getManpowerMaxFromProvinceManpowerLvl(Game.getCiv(Game.player.iCivID).getProvinceID(i));
                }
            }
            MapModeManager.this.PROVINCE_MANPOWER_MAX *= 0.95f;
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i2)).provinceColor = Colors.getProvinceManpowerColor((int) ((Game.getManpowerMaxFromProvinceManpowerLvl(Game.getCiv(Game.player.iCivID).getProvinceID(i2)) / MapModeManager.this.PROVINCE_MANPOWER_MAX) * 100.0f), 1.0f);
            }
        }
    }

    public MapModeManager() {
        this.MODE_DEFAULT = 0;
        this.MODE_DEFAULT_TERRAIN = -1;
        this.MODE_POPULATION = -1;
        this.MODE_ECONOMY = -1;
        this.MODE_PROVINCE_INCOME = -1;
        this.MODE_PROVINCE_INCOME_HOVER = -1;
        this.MODE_PROVINCE_EXPENSES_HOVER = -1;
        this.MODE_CIV_POPULATION_HOVER = -1;
        this.MODE_CIV_ECONOMY_HOVER = -1;
        this.MODE_PROVINCE_MANPOWER_HOVER_PLAYER = -1;
        this.MODE_PROVINCE_GROWTH_RATE_HOVER = -1;
        this.MODE_PROVINCE_MANPOWER_HOVER = -1;
        this.MODE_PROVINCE_ECONOMY_HOVER = -1;
        this.MODE_PROVINCE_TAX_EFFICIENCY_HOVER = -1;
        this.MODE_PROVINCE_POPULATION_HOVER = -1;
        this.MODE_PROVINCE_RELIGION_HOVER = -1;
        this.MODE_PROVINCE_FORTS_HOVER = -1;
        this.MODE_PROVINCE_PROVINCE_INCOME_HOVER = -1;
        this.MODE_PROVINCE_INFRASTRUCTURE_HOVER = -1;
        this.MODE_PROVINCE_LOOT_HOVER = -1;
        this.MODE_PROVINCE_PROVINCE_VALUE_HOVER = -1;
        this.MODE_PROVINCE_DEVASTATION_HOVER = -1;
        this.MODE_PROVINCE_UNREST_HOVER = -1;
        this.MODE_PROVINCE_TAX = -1;
        this.MODE_TERRAIN = -1;
        this.MODE_GOODS = -1;
        this.MODE_INFRASTRUCTURE = -1;
        this.MODE_WONDERS = -1;
        this.MODE_RELIGION = -1;
        this.MODE_GOVERNMENT = -1;
        this.MODE_DEVASTATION = -1;
        this.MODE_LOOT = -1;
        this.MODE_DEFENSE_LEVEL = -1;
        this.MODE_UNREST = -1;
        this.MODE_DISEASES = -1;
        this.MODE_WARS = -1;
        this.MODE_ALLIANCES = -1;
        this.MODE_DEFENSIVE_PACTS = -1;
        this.MODE_NON_AGGRESSION_PACTS = -1;
        this.MODE_RECRUIT_ARMY = -1;
        this.MODE_NEW_ARMY_CHOOSE_PROVINCE = -1;
        this.MODE_NUKE_CHOOSE_PROVINCE = -1;
        this.MODE_MERCENARIES_CHOOSE_PROVINCE = -1;
        this.MODE_INVEST_IN_ECONOMY = -1;
        this.MODE_INCREASE_TAX_EFFICIENCY = -1;
        this.MODE_INCREASE_MANPOWER = -1;
        this.MODE_MOVE_CAPITAL = -1;
        this.MODE_COLONIZE_CHOOSE_PROVINCE = -1;
        this.MODE_DEVELOP_INFRASTRUCTURE = -1;
        this.MODE_INCREASE_GROWTH_RATE = -1;
        this.MODE_CIV_STABILITY_HOVER = -1;
        this.MODE_BUILDING = -1;
        this.MODE_CONVERT_RELIGION = -1;
        this.MODE_CORE = -1;
        this.MODE_DIPLOMACY = -1;
        this.MODE_DIPLOMACY_IMPROVE_RELATIONS = -1;
        this.MODE_DIPLOMACY_DAMAGE_RELATIONS = -1;
        this.MODE_DECLARE_WAR = -1;
        this.MODE_FORM_CIV = -1;
        this.MODE_SPECIAL_ALLIANCE_VIEW = -1;
        this.MODE_WAR_VIEW = -1;
        this.MODE_PEACE_VIEW = -1;
        this.MODE_RELEASE_VASSAL = -1;
        this.MODE_DEFAULT = addMapMode(new AnonymousClass3(new AnonymousClass1(), new AnonymousClass2()));
        this.MODE_DIPLOMACY = addMapMode(new AnonymousClass6(new AnonymousClass4(), new AnonymousClass5()));
        this.MODE_DIPLOMACY_IMPROVE_RELATIONS = addMapMode(new AnonymousClass9(new AnonymousClass7(), new AnonymousClass8()));
        this.MODE_DIPLOMACY_DAMAGE_RELATIONS = addMapMode(new AnonymousClass12(new AnonymousClass10(), new AnonymousClass11()));
        this.MODE_DECLARE_WAR = addMapMode(new AnonymousClass15(new AnonymousClass13(), new AnonymousClass14()));
        this.MODE_WARS = addMapMode(new AnonymousClass18(new AnonymousClass16(), new AnonymousClass17()));
        this.MODE_ALLIANCES = addMapMode(new AnonymousClass21(new AnonymousClass19(), new AnonymousClass20()));
        this.MODE_DEFENSIVE_PACTS = addMapMode(new AnonymousClass24(new AnonymousClass22(), new AnonymousClass23()));
        this.MODE_NON_AGGRESSION_PACTS = addMapMode(new AnonymousClass27(new AnonymousClass25(), new AnonymousClass26()));
        this.MODE_NUKE_CHOOSE_PROVINCE = addMapMode(new AnonymousClass30(new AnonymousClass28(), new AnonymousClass29()));
        this.MODE_COLONIZE_CHOOSE_PROVINCE = addMapMode(new AnonymousClass33(new AnonymousClass31(), new AnonymousClass32()));
        this.MODE_FORM_CIV = addMapMode(new AnonymousClass36(new AnonymousClass34(), new AnonymousClass35()));
        this.MODE_SPECIAL_ALLIANCE_VIEW = addMapMode(new AnonymousClass39(new AnonymousClass37(), new AnonymousClass38()));
        this.MODE_WAR_VIEW = addMapMode(new AnonymousClass42(new AnonymousClass40(), new AnonymousClass41()));
        this.MODE_PEACE_VIEW = addMapMode(new AnonymousClass45(new AnonymousClass43(), new AnonymousClass44()));
        this.MODE_RELEASE_VASSAL = addMapMode(new AnonymousClass48(new AnonymousClass46(), new AnonymousClass47()));
        this.MODE_DEFAULT_TERRAIN = addMapMode(new AnonymousClass51(new AnonymousClass49(), new AnonymousClass50()));
        this.MODE_POPULATION = addMapMode(new AnonymousClass54(new AnonymousClass52(), new AnonymousClass53()));
        this.MODE_ECONOMY = addMapMode(new AnonymousClass57(new AnonymousClass55(), new AnonymousClass56()));
        this.MODE_UNREST = addMapMode(new AnonymousClass60(new AnonymousClass58(), new AnonymousClass59()));
        this.MODE_PROVINCE_TAX = addMapMode(new AnonymousClass63(new AnonymousClass61(), new AnonymousClass62()));
        this.MODE_DEVASTATION = addMapMode(new AnonymousClass66(new AnonymousClass64(), new AnonymousClass65()));
        this.MODE_LOOT = addMapMode(new AnonymousClass69(new AnonymousClass67(), new AnonymousClass68()));
        this.MODE_DEFENSE_LEVEL = addMapMode(new AnonymousClass72(new AnonymousClass70(), new AnonymousClass71()));
        this.MODE_DISEASES = addMapMode(new AnonymousClass75(new AnonymousClass73(), new AnonymousClass74()));
        this.MODE_INFRASTRUCTURE = addMapMode(new AnonymousClass78(new AnonymousClass76(), new AnonymousClass77()));
        this.MODE_GOVERNMENT = addMapMode(new AnonymousClass81(new AnonymousClass79(), new AnonymousClass80()));
        this.MODE_RELIGION = addMapMode(new AnonymousClass84(new AnonymousClass82(), new AnonymousClass83()));
        this.MODE_PROVINCE_INCOME_HOVER = addMapMode(new AnonymousClass87(new AnonymousClass85(), new AnonymousClass86()));
        this.MODE_PROVINCE_EXPENSES_HOVER = addMapMode(new AnonymousClass90(new AnonymousClass88(), new AnonymousClass89()));
        this.MODE_CIV_POPULATION_HOVER = addMapMode(new AnonymousClass93(new AnonymousClass91(), new AnonymousClass92()));
        this.MODE_CIV_ECONOMY_HOVER = addMapMode(new AnonymousClass96(new AnonymousClass94(), new AnonymousClass95()));
        this.MODE_PROVINCE_MANPOWER_HOVER_PLAYER = addMapMode(new AnonymousClass99(new AnonymousClass97(), new AnonymousClass98()));
        this.MODE_CIV_STABILITY_HOVER = addMapMode(new AnonymousClass102(new AnonymousClass100(), new AnonymousClass101()));
        this.MODE_PROVINCE_UNREST_HOVER = addMapMode(new AnonymousClass105(new AnonymousClass103(), new AnonymousClass104()));
        this.MODE_PROVINCE_MANPOWER_HOVER = addMapMode(new AnonymousClass108(new AnonymousClass106(), new AnonymousClass107()));
        this.MODE_PROVINCE_TAX_EFFICIENCY_HOVER = addMapMode(new AnonymousClass111(new AnonymousClass109(), new AnonymousClass110()));
        this.MODE_PROVINCE_ECONOMY_HOVER = addMapMode(new AnonymousClass114(new AnonymousClass112(), new AnonymousClass113()));
        this.MODE_PROVINCE_FORTS_HOVER = addMapMode(new AnonymousClass117(new AnonymousClass115(), new AnonymousClass116()));
        this.MODE_PROVINCE_PROVINCE_INCOME_HOVER = addMapMode(new AnonymousClass120(new AnonymousClass118(), new AnonymousClass119()));
        this.MODE_PROVINCE_INFRASTRUCTURE_HOVER = addMapMode(new AnonymousClass123(new AnonymousClass121(), new AnonymousClass122()));
        this.MODE_PROVINCE_PROVINCE_VALUE_HOVER = addMapMode(new AnonymousClass126(new AnonymousClass124(), new AnonymousClass125()));
        this.MODE_PROVINCE_LOOT_HOVER = addMapMode(new AnonymousClass129(new AnonymousClass127(), new AnonymousClass128()));
        this.MODE_PROVINCE_DEVASTATION_HOVER = addMapMode(new AnonymousClass132(new AnonymousClass130(), new AnonymousClass131()));
        this.MODE_PROVINCE_GROWTH_RATE_HOVER = addMapMode(new AnonymousClass135(new AnonymousClass133(), new AnonymousClass134()));
        this.MODE_PROVINCE_POPULATION_HOVER = addMapMode(new AnonymousClass138(new AnonymousClass136(), new AnonymousClass137()));
        this.MODE_PROVINCE_RELIGION_HOVER = addMapMode(new AnonymousClass141(new AnonymousClass139(), new AnonymousClass140()));
        this.MODE_PROVINCE_INCOME = addMapMode(new AnonymousClass144(new AnonymousClass142(), new AnonymousClass143()));
        this.MODE_NEW_ARMY_CHOOSE_PROVINCE = addMapMode(new AnonymousClass147(new AnonymousClass145(), new AnonymousClass146()));
        this.MODE_MERCENARIES_CHOOSE_PROVINCE = addMapMode(new AnonymousClass150(new AnonymousClass148(), new AnonymousClass149()));
        this.MODE_RECRUIT_ARMY = addMapMode(new AnonymousClass153(new AnonymousClass151(), new AnonymousClass152()));
        this.MODE_TERRAIN = addMapMode(new MapMode(new AnonymousClass154(), new AnonymousClass155()));
        this.MODE_GOODS = addMapMode(new AnonymousClass158(new AnonymousClass156(), new AnonymousClass157()));
        this.MODE_WONDERS = addMapMode(new AnonymousClass161(new AnonymousClass159(), new AnonymousClass160()));
        this.MODE_INVEST_IN_ECONOMY = addMapMode(new AnonymousClass164(new AnonymousClass162(), new AnonymousClass163()));
        this.MODE_DEVELOP_INFRASTRUCTURE = addMapMode(new AnonymousClass167(new AnonymousClass165(), new AnonymousClass166()));
        this.MODE_INCREASE_TAX_EFFICIENCY = addMapMode(new AnonymousClass170(new AnonymousClass168(), new AnonymousClass169()));
        this.MODE_INCREASE_GROWTH_RATE = addMapMode(new AnonymousClass173(new AnonymousClass171(), new AnonymousClass172()));
        this.MODE_INCREASE_MANPOWER = addMapMode(new AnonymousClass176(new AnonymousClass174(), new AnonymousClass175()));
        this.MODE_MOVE_CAPITAL = addMapMode(new AnonymousClass179(new AnonymousClass177(), new AnonymousClass178()));
        this.MODE_CONVERT_RELIGION = addMapMode(new AnonymousClass182(new AnonymousClass180(), new AnonymousClass181()));
        this.MODE_CORE = addMapMode(new AnonymousClass185(new AnonymousClass183(), new AnonymousClass184()));
        this.MODE_BUILDING = addMapMode(new AnonymousClass188(new AnonymousClass186(), new AnonymousClass187()));
    }

    private final int addMapMode(MapMode mapMode) {
        this.lMapModes.add(mapMode);
        return this.lMapModes.size() - 1;
    }

    public static void drawProvinces_DefaultHover(SpriteBatch spriteBatch) {
        int civID;
        try {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha();
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                Player player = Game.player;
                civID = player.iCivID;
            } else {
                civID = Game.getProvince(Game.iActiveProvince).getCivID();
            }
            int i = 0;
            if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
                for (int i2 = 0; i2 < Game.NUM_OF_PROVINCES_IN_VIEW; i2++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i2)).getCivID() != 0) {
                        if (Game.getProvince(Game.getProvinceInViewID(i2)).getCivID() == civID) {
                            Game.getProvince(Game.getProvinceInViewID(i2)).provinceColor.a = fAlphaAnimation * provinceAlpha;
                            spriteBatch.setColor(Game.getProvince(Game.getProvinceInViewID(i2)).provinceColor);
                            Game.getProvince(Game.getProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                        } else {
                            Game.getProvince(Game.getProvinceInViewID(i2)).fog_drawLandProvince.drawLandProvinceFog(spriteBatch, provinceAlpha);
                        }
                    }
                }
                while (i < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() != 0) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() == civID) {
                            Game.getProvince(Game.getExtraProvinceInViewID(i)).provinceColor.a = fAlphaAnimation * provinceAlpha;
                            spriteBatch.setColor(Game.getProvince(Game.getExtraProvinceInViewID(i)).provinceColor);
                            Game.getProvince(Game.getExtraProvinceInViewID(i)).drawLandProvince(spriteBatch);
                        } else {
                            Game.getProvince(Game.getExtraProvinceInViewID(i)).fog_drawLandProvince.drawLandProvinceFog(spriteBatch, provinceAlpha);
                        }
                    }
                    i++;
                }
            } else {
                for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i3)).getCivID() != 0) {
                        if (Game.getProvince(Game.getProvinceInViewID(i3)).getCivID() == civID) {
                            Game.getProvince(Game.getProvinceInViewID(i3)).provinceColor.a = fAlphaAnimation * provinceAlpha;
                            spriteBatch.setColor(Game.getProvince(Game.getProvinceInViewID(i3)).provinceColor);
                            Game.getProvince(Game.getProvinceInViewID(i3)).drawLandProvince(spriteBatch);
                        } else {
                            Game.getProvince(Game.getProvinceInViewID(i3)).drawLandProvince(spriteBatch, provinceAlpha);
                        }
                    }
                }
                while (i < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() != 0) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i)).getCivID() == civID) {
                            Game.getProvince(Game.getExtraProvinceInViewID(i)).provinceColor.a = fAlphaAnimation * provinceAlpha;
                            spriteBatch.setColor(Game.getProvince(Game.getExtraProvinceInViewID(i)).provinceColor);
                            Game.getProvince(Game.getExtraProvinceInViewID(i)).drawLandProvince(spriteBatch);
                        } else {
                            Game.getProvince(Game.getExtraProvinceInViewID(i)).drawLandProvince(spriteBatch, provinceAlpha);
                        }
                    }
                    i++;
                }
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        } catch (Exception e) {
            CFG.exceptionStack(e);
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
    }

    public static void drawProvinces_DefaultHover_Player(SpriteBatch spriteBatch) {
        try {
            float provinceAlpha = ProvinceDraw.getProvinceAlpha();
            ProvinceDraw.drawWastelandProvinces(spriteBatch);
            int i = Game.player.iCivID;
            int i2 = 0;
            if (Game.mapScale.getCurrentScale() >= Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
                for (int i3 = 0; i3 < Game.NUM_OF_PROVINCES_IN_VIEW; i3++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i3)).getCivID() != 0) {
                        if (Game.getProvince(Game.getProvinceInViewID(i3)).getCivID() == i) {
                            Game.getProvince(Game.getProvinceInViewID(i3)).provinceColor.a = fAlphaAnimation * provinceAlpha;
                            spriteBatch.setColor(Game.getProvince(Game.getProvinceInViewID(i3)).provinceColor);
                            Game.getProvince(Game.getProvinceInViewID(i3)).drawLandProvince(spriteBatch);
                        } else {
                            Game.getProvince(Game.getProvinceInViewID(i3)).fog_drawLandProvince.drawLandProvinceFog(spriteBatch, provinceAlpha);
                        }
                    }
                }
                while (i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == i) {
                            Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.a = fAlphaAnimation * provinceAlpha;
                            spriteBatch.setColor(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor);
                            Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                        } else {
                            Game.getProvince(Game.getExtraProvinceInViewID(i2)).fog_drawLandProvince.drawLandProvinceFog(spriteBatch, provinceAlpha);
                        }
                    }
                    i2++;
                }
            } else {
                for (int i4 = 0; i4 < Game.NUM_OF_PROVINCES_IN_VIEW; i4++) {
                    if (Game.getProvince(Game.getProvinceInViewID(i4)).getCivID() != 0) {
                        if (Game.getProvince(Game.getProvinceInViewID(i4)).getCivID() == i) {
                            Game.getProvince(Game.getProvinceInViewID(i4)).provinceColor.a = fAlphaAnimation * provinceAlpha;
                            spriteBatch.setColor(Game.getProvince(Game.getProvinceInViewID(i4)).provinceColor);
                            Game.getProvince(Game.getProvinceInViewID(i4)).drawLandProvince(spriteBatch);
                        } else {
                            Game.getProvince(Game.getProvinceInViewID(i4)).drawLandProvince(spriteBatch, provinceAlpha);
                        }
                    }
                }
                while (i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW) {
                    if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() != 0) {
                        if (Game.getProvince(Game.getExtraProvinceInViewID(i2)).getCivID() == i) {
                            Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor.a = fAlphaAnimation * provinceAlpha;
                            spriteBatch.setColor(Game.getProvince(Game.getExtraProvinceInViewID(i2)).provinceColor);
                            Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch);
                        } else {
                            Game.getProvince(Game.getExtraProvinceInViewID(i2)).drawLandProvince(spriteBatch, provinceAlpha);
                        }
                    }
                    i2++;
                }
            }
            ProvinceDraw.drawOccupiedProvinces(spriteBatch);
        } catch (Exception e) {
            CFG.exceptionStack(e);
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
    }

    public static MenuElement_Hover getProvinceHover_Default() {
        try {
            if (Game.iHoveredProvinceID < 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        } catch (Exception unused) {
            return null;
        }
    }

    public static final void updateAlpha() {
        if (lTime + 500 > CFG.currentTimeMillis) {
            fAlphaAnimation = Math.min(1.0f, (((CFG.currentTimeMillis - lTime) * 0.45f) / 500.0f) + 0.55f);
        } else {
            fAlphaAnimation = 1.0f;
        }
    }

    public static final void updateDiplomacyProvinceColor(boolean z) {
        if (Game.mapScale.getCurrentScale() == diplomacyScale && diplomacyColorsPosX == Game.mapCoords.getPosX() && diplomacyColorsPosY == Game.mapCoords.getPosY() && diplomacyActiveCivID == InGame_Civ.iActiveCivID) {
            return;
        }
        diplomacyColorsPosX = Game.mapCoords.getPosX();
        diplomacyColorsPosY = Game.mapCoords.getPosY();
        diplomacyScale = Game.mapScale.getCurrentScale();
        diplomacyActiveCivID = InGame_Civ.iActiveCivID;
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            if (Game.getProvince(Game.getProvinceInViewID(i)).getCivID() > 0) {
                int civID = Game.getProvince(Game.getProvinceInViewID(i)).getCivID();
                int i2 = diplomacyActiveCivID;
                if (civID == i2) {
                    if (z) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getColor(1.0f);
                    }
                } else if (DiplomacyManager.isAtWar(i2, Game.getProvince(Game.getProvinceInViewID(i)).getCivID())) {
                    Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_AT_WAR;
                } else {
                    int puppetOfCivID = Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).getPuppetOfCivID();
                    int i3 = diplomacyActiveCivID;
                    if (puppetOfCivID == i3) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_VASSAL;
                    } else if (Game.getCiv(i3).getPuppetOfCivID() == Game.getProvince(Game.getProvinceInViewID(i)).getCivID()) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_VASSAL;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.alliance.containsKey(Integer.valueOf(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()))) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_ALLIANCE;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.defensivePact.containsKey(Integer.valueOf(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()))) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_DEFENSIVE_PACT;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.truce.containsKey(Integer.valueOf(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()))) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_TRUCE;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.guarantee.containsKey(Integer.valueOf(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()))) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_INDEPENDENCE;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.guaranteeByCivID.containsKey(Integer.valueOf(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()))) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_INDEPENDENCE2;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.nonAggressionPact.containsKey(Integer.valueOf(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()))) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_PACT;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.militaryAccess.containsKey(Integer.valueOf(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()))) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_MILITARY_ACCESS;
                    } else if (Game.getCiv(Game.getProvince(Game.getProvinceInViewID(i)).getCivID()).diplomacy.militaryAccess.containsKey(Integer.valueOf(diplomacyActiveCivID))) {
                        Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_MILITARY_ACCESS;
                    } else {
                        int relation = (int) Game.getCiv(diplomacyActiveCivID).diplomacy.getRelation(Game.getProvince(Game.getProvinceInViewID(i)).getCivID());
                        if (relation == 0) {
                            Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_NEUTRAL_GREEN;
                            Game.getProvince(Game.getProvinceInViewID(i)).provinceColor.a = 0.33f;
                        } else if (relation > 0) {
                            Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = CFG.getColorStep(ProvinceDraw.PROVINCE_DIPLOMACY_GREEN, ProvinceDraw.PROVINCE_DIPLOMACY_GREEN2, -relation, (int) (-GameValues.diplomacy.DIPLOMACY_RELATIONS_MAX), 1.0f);
                        } else {
                            Game.getProvince(Game.getProvinceInViewID(i)).provinceColor = CFG.getColorStep(ProvinceDraw.PROVINCE_DIPLOMACY_RED, ProvinceDraw.PROVINCE_DIPLOMACY_RED2, -relation, (int) (-GameValues.diplomacy.DIPLOMACY_RELATIONS_MIN), 1.0f);
                        }
                    }
                }
            }
        }
        for (int i4 = 0; i4 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i4++) {
            if (Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID() > 0) {
                int civID2 = Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID();
                int i5 = diplomacyActiveCivID;
                if (civID2 == i5) {
                    Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()).getColor(1.0f);
                } else if (DiplomacyManager.isAtWar(i5, Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID())) {
                    Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_AT_WAR;
                } else {
                    int puppetOfCivID2 = Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()).getPuppetOfCivID();
                    int i6 = diplomacyActiveCivID;
                    if (puppetOfCivID2 == i6) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_VASSAL;
                    } else if (Game.getCiv(i6).getPuppetOfCivID() == Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_VASSAL;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.alliance.containsKey(Integer.valueOf(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()))) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_ALLIANCE;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.defensivePact.containsKey(Integer.valueOf(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()))) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_DEFENSIVE_PACT;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.truce.containsKey(Integer.valueOf(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()))) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_TRUCE;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.guarantee.containsKey(Integer.valueOf(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()))) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_INDEPENDENCE;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.guaranteeByCivID.containsKey(Integer.valueOf(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()))) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_INDEPENDENCE2;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.nonAggressionPact.containsKey(Integer.valueOf(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()))) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_PACT;
                    } else if (Game.getCiv(diplomacyActiveCivID).diplomacy.militaryAccess.containsKey(Integer.valueOf(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()))) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_MILITARY_ACCESS;
                    } else if (Game.getCiv(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID()).diplomacy.militaryAccess.containsKey(Integer.valueOf(diplomacyActiveCivID))) {
                        Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_MILITARY_ACCESS;
                    } else {
                        int relation2 = (int) Game.getCiv(diplomacyActiveCivID).diplomacy.getRelation(Game.getProvince(Game.getExtraProvinceInViewID(i4)).getCivID());
                        if (relation2 == 0) {
                            Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = ProvinceDraw.PROVINCE_DIPLOMACY_NEUTRAL_GREEN;
                            Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor.a = 0.33f;
                        } else if (relation2 > 0) {
                            Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = CFG.getColorStep(ProvinceDraw.PROVINCE_DIPLOMACY_GREEN, ProvinceDraw.PROVINCE_DIPLOMACY_GREEN2, -relation2, (int) (-GameValues.diplomacy.DIPLOMACY_RELATIONS_MAX), 1.0f);
                        } else {
                            Game.getProvince(Game.getExtraProvinceInViewID(i4)).provinceColor = CFG.getColorStep(ProvinceDraw.PROVINCE_DIPLOMACY_RED, ProvinceDraw.PROVINCE_DIPLOMACY_RED2, -relation2, (int) (-GameValues.diplomacy.DIPLOMACY_RELATIONS_MIN), 1.0f);
                        }
                    }
                }
            }
        }
    }

    public static final void updateRightMenu() {
        if (!InGame_Right.stateVisible) {
            Game.menuManager.setVisibleInGame_Right(false);
        } else {
            Game.menuManager.rebuildInGame_Right();
            InGame_Right.lTime = 0L;
        }
    }

    public final void disableAllViews() {
        int i = this.iActiveMapModeID;
        if (i != 0) {
            this.iActiveMapModeID = 0;
            this.lMapModes.get(i).disableViewAction();
        }
        updateViews();
    }

    public final void setActiveViewID(int i) {
        try {
            int i2 = this.iActiveMapModeID;
            if (i2 == 0 && i == 0) {
                return;
            }
            if (i2 == i) {
                this.iActiveMapModeID = 0;
                this.lMapModes.get(i2).disableViewAction();
            } else {
                this.iActiveMapModeID = i;
                lTime = CFG.currentTimeMillis;
                this.lMapModes.get(i2).disableViewAction();
                this.lMapModes.get(i).enableViewAction();
            }
            InGame.updateDrawOver();
            ProvinceDraw.updateDrawExtraDetails();
            ProvinceTouchExtraAction.updateExtraAction();
        } catch (Exception unused) {
            this.iActiveMapModeID = 0;
        }
        updateViews();
    }

    public final void updateCurrentWarsView() {
        Game.getCiv(0).warView_ParticipatesInWar = false;
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).warView_ParticipatesInWar = Game.getCiv(i).diplomacy.isAtWar();
        }
    }

    public final void updateMaxEconomy() {
        this.ECONOMY_MAX = 1.0f;
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i).getEconomyWithBonuses() > this.ECONOMY_MAX) {
                this.ECONOMY_MAX = Game.getProvince(i).getEconomyWithBonuses();
            }
        }
        this.ECONOMY_MAX *= 0.95f;
    }

    public final void updateMaxPopulation() {
        this.POPULATION_MAX = 1;
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i).getPopulationTotal() > this.POPULATION_MAX) {
                this.POPULATION_MAX = Game.getProvince(i).getPopulationTotal();
            }
        }
        this.POPULATION_MAX = (int) (this.POPULATION_MAX * 0.95f);
    }

    public final void updateMaxProvinceIncome() {
        this.PROVINCE_INCOME_MAX = 0.15f;
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i).getProvinceIncome() > this.PROVINCE_INCOME_MAX) {
                this.PROVINCE_INCOME_MAX = Game.getProvince(i).getProvinceIncome();
            }
        }
        this.PROVINCE_INCOME_MAX *= 0.95f;
    }

    public final void updateMaxTax() {
        this.TAX_MAX = 1.0f;
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (!Game.getProvince(i).getSeaProvince() && Game.getProvince(i).getTaxEfficiencyWithBonuses() > this.TAX_MAX) {
                this.TAX_MAX = (int) Game.getProvince(i).getTaxEfficiencyWithBonuses();
            }
        }
        this.TAX_MAX = (int) (this.TAX_MAX * 0.95f);
    }

    public final void updatePeaceView(String str) {
        int i = 0;
        for (int i2 = 0; i2 < Game.getCivsSize(); i2++) {
            Game.getCiv(i2).warView_ParticipatesInWar = false;
        }
        try {
            if (WarManager.lWars.containsKey(str)) {
                if (WarManager.lWars.get(str).isDefender(Game.player.iCivID)) {
                    int i3 = 1;
                    while (i3 < Game.getCivsSize()) {
                        if (WarManager.lWars.get(str).isAggressor(i3)) {
                            Game.getCiv(i3).warView_ParticipatesInWar = true;
                            if (GameValues.peace.PEACE_TAKE_PROVINCES_FROM_ALLIES) {
                                Game.getCiv(i3).warView_IsAggressor = !WarManager.lWars.get(str).isAggressor(i3);
                            } else {
                                Game.getCiv(i3).warView_IsAggressor = WarManager.lWars.get(str).lAggressors.get(0).iCivID != i3;
                            }
                        } else if (WarManager.lWars.get(str).isDefender(i3)) {
                            Game.getCiv(i3).warView_ParticipatesInWar = true;
                            Game.getCiv(i3).warView_IsAggressor = true;
                        }
                        i3++;
                    }
                } else {
                    int i4 = 1;
                    while (i4 < Game.getCivsSize()) {
                        if (WarManager.lWars.get(str).isAggressor(i4)) {
                            Game.getCiv(i4).warView_ParticipatesInWar = true;
                            Game.getCiv(i4).warView_IsAggressor = true;
                        } else if (WarManager.lWars.get(str).isDefender(i4)) {
                            Game.getCiv(i4).warView_ParticipatesInWar = true;
                            if (GameValues.peace.PEACE_TAKE_PROVINCES_FROM_ALLIES) {
                                Game.getCiv(i4).warView_IsAggressor = !WarManager.lWars.get(str).isDefender(i4);
                            } else {
                                Game.getCiv(i4).warView_IsAggressor = WarManager.lWars.get(str).lDefenders.get(0).iCivID != i4;
                            }
                        }
                        i4++;
                    }
                }
                if (GameValues.peace.PEACE_TAKE_PROVINCES_FROM_ALLIES) {
                    while (i < Game.getProvincesSize()) {
                        if (Game.getProvince(i).getCivID() > 0 && Game.getCiv(Game.getProvince(i).getCivID()).warView_ParticipatesInWar && !Game.getCiv(Game.getProvince(i).getCivID()).warView_IsAggressor) {
                            Game.getProvince(i).peaceTreatyIsToTake = true;
                        }
                        i++;
                    }
                    return;
                }
                int i5 = WarManager.lWars.get(str).lAggressors.get(0).iCivID;
                int i6 = WarManager.lWars.get(str).lDefenders.get(0).iCivID;
                while (i < Game.getProvincesSize()) {
                    if (Game.getProvince(i).getCivID() > 0 && Game.getCiv(Game.getProvince(i).getCivID()).warView_ParticipatesInWar && !Game.getCiv(Game.getProvince(i).getCivID()).warView_IsAggressor && (Game.getProvince(i).getCivID() == i5 || Game.getProvince(i).getCivID() == i6)) {
                        Game.getProvince(i).peaceTreatyIsToTake = true;
                    }
                    i++;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateSpecialAllianceView() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).warView_ParticipatesInWar = false;
            Game.getCiv(i).warView_IsAggressor = false;
        }
        try {
            Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).warView_ParticipatesInWar = true;
            Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).iLeaderCivID).warView_IsAggressor = true;
            for (int size = Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).firstTier.size() - 1; size >= 0; size--) {
                Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).firstTier.get(size).intValue()).warView_ParticipatesInWar = true;
            }
            for (int size2 = Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).secondTier.size() - 1; size2 >= 0; size2--) {
                Game.getCiv(Game.alliancesSpecial.get(InGame_AllianceSpecial.allianceID).secondTier.get(size2).intValue()).warView_ParticipatesInWar = true;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateViews() {
        ProvinceDraw.updateDrawProvinces();
        ProvinceHover.updateProvinceHoverBuild();
    }

    public final void updateWarView(String str) {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).warView_ParticipatesInWar = false;
        }
        try {
            if (WarManager.lWars.containsKey(str)) {
                ProvinceDraw.buildBiggestCitiesLines_Province(Game.getCiv(WarManager.lWars.get(str).lAggressors.get(0).iCivID).getCapitalProvinceID(), Game.getCiv(WarManager.lWars.get(str).lDefenders.get(0).iCivID).getCapitalProvinceID());
                if (WarManager.lWars.get(str).isDefender(Game.player.iCivID)) {
                    for (int i2 = 1; i2 < Game.getCivsSize(); i2++) {
                        if (WarManager.lWars.get(str).isAggressor(i2)) {
                            Game.getCiv(i2).warView_ParticipatesInWar = true;
                            Game.getCiv(i2).warView_IsAggressor = false;
                        } else if (WarManager.lWars.get(str).isDefender(i2)) {
                            Game.getCiv(i2).warView_ParticipatesInWar = true;
                            Game.getCiv(i2).warView_IsAggressor = true;
                        }
                    }
                    return;
                }
                for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
                    if (WarManager.lWars.get(str).isAggressor(i3)) {
                        Game.getCiv(i3).warView_ParticipatesInWar = true;
                        Game.getCiv(i3).warView_IsAggressor = true;
                    } else if (WarManager.lWars.get(str).isDefender(i3)) {
                        Game.getCiv(i3).warView_ParticipatesInWar = true;
                        Game.getCiv(i3).warView_IsAggressor = false;
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
