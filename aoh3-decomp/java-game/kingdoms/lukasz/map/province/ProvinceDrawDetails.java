package aoc.kingdoms.lukasz.map.province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.map.plague.PlagueManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.map.terrain.TerrainManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Disease;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Religion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Resource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDiplomacy;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceDrawDetails {
    public static final Color COLOR_DETAILS_YELLOW = new Color(0.8627451f, 0.78431374f, 0.27450982f, 1.0f);
    public static final Color COLOR_DETAILS = new Color(0.75686276f, 0.7372549f, 0.7176471f, 1.0f);
    public static int fontDetailsID = 0;
    public static int detailsImageID = 0;
    public static int detailsImageWidth = 0;
    public static int detailsImageHeight = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$1, reason: invalid class name */
    class AnonymousClass1 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GrowthRate") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + ((int) Game.getProvince(Game.iHoveredProvinceID).getGrowthRate()) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseEconomy") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + ((int) Game.getProvince(Game.iHoveredProvinceID).BaseDevelopment), CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$10, reason: invalid class name */
    class AnonymousClass10 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass10() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(Game.getProvince(Game.iHoveredProvinceID).getReligion()).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails_Image(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$11, reason: invalid class name */
    class AnonymousClass11 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass11() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(Game.getProvince(Game.iHoveredProvinceID).getReligion()).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$12, reason: invalid class name */
    class AnonymousClass12 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass12() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.mapScenarios.editorProvinceReligion.get(Game.iHoveredProvinceID).intValue() < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getReligionID()).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(Game.mapScenarios.editorProvinceReligion.get(Game.iHoveredProvinceID).intValue()).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT));
            }
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails_Image(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$13, reason: invalid class name */
    class AnonymousClass13 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass13() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.mapScenarios.editorProvinceReligion.get(Game.iHoveredProvinceID).intValue() < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getReligionID()).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(Game.mapScenarios.editorProvinceReligion.get(Game.iHoveredProvinceID).intValue()).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT));
            }
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$14, reason: invalid class name */
    class AnonymousClass14 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass14() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(Game.iHoveredProvinceID).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).fProvinceValue, 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails_Image(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$15, reason: invalid class name */
    class AnonymousClass15 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass15() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$16, reason: invalid class name */
    class AnonymousClass16 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        final /* synthetic */ int val$i;

        AnonymousClass16(int i) {
            this.val$i = i;
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(this.val$i).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).fProvinceValue, 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails_Image(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$17, reason: invalid class name */
    class AnonymousClass17 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass17() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$18, reason: invalid class name */
    class AnonymousClass18 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass18() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Religion") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(Game.getProvince(Game.iHoveredProvinceID).getReligion()).Name, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Religion(Game.getProvince(Game.iHoveredProvinceID).getReligion(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).fProvinceValue, 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.drawDetailsReligion(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$19, reason: invalid class name */
    class AnonymousClass19 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass19() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Religion") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(Game.getProvince(Game.iHoveredProvinceID).getReligion()).Name, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Religion(Game.getProvince(Game.iHoveredProvinceID).getReligion(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$2, reason: invalid class name */
    class AnonymousClass2 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GrowthRate") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + ((int) Game.getProvince(Game.iHoveredProvinceID).getGrowthRate()) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BaseEconomy") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + ((int) Game.getProvince(Game.iHoveredProvinceID).BaseDevelopment), CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$20, reason: invalid class name */
    class AnonymousClass20 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass20() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(Game.iHoveredProvinceID).getResourceID() >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Resource") + ": "));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.lResources.get(Game.getProvince(Game.iHoveredProvinceID).getResourceID()).Name, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Resource(Game.getProvince(Game.iHoveredProvinceID).getResourceID(), CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Resource") + ": "));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("None"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.resourceNone, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.drawDetailsGoods(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.drawDetailsGoods(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$21, reason: invalid class name */
    class AnonymousClass21 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass21() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            try {
                if (Game.iHoveredProvinceID < 0) {
                    Game.setCursorX();
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (Game.getProvince(Game.iHoveredProvinceID).getCivID() == Game.player.iCivID) {
                    if (Game.getCiv(Game.player.iCivID).fGold >= Game.getInvestCost(Game.iHoveredProvinceID) && Game.getCiv(Game.player.iCivID).fLegacy >= Game.getInvestCost_Legacy(Game.iHoveredProvinceID)) {
                        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ClickToInvestInEconomy"), Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    if (Game.getCiv(Game.player.iCivID).fGold < Game.getInvestCost(Game.iHoveredProvinceID)) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InsufficientGold") + ": ", Colors.HOVER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getInvestCost(Game.iHoveredProvinceID), 100), Colors.COLOR_TEXT_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(Game.iHoveredProvinceID)) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InsufficientLegacy") + ": ", Colors.HOVER_NEGATIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getInvestCost_Legacy(Game.iHoveredProvinceID), 100), Colors.COLOR_TEXT_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Economy") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).getEconomyWithBonuses(), 100), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (Game.canInvestInEconomy(Game.iHoveredProvinceID)) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumEconomy") + ": ", CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getMaxEconomy(Game.iHoveredProvinceID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    if (Game.getProvince(Game.iHoveredProvinceID).getResourceID() >= 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Resource") + ": "));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.getResourceName(Game.getProvince(Game.iHoveredProvinceID).getResourceID()), Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Resource(Game.getProvince(Game.iHoveredProvinceID).getResourceID(), CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    if (Game.getProvince(Game.iHoveredProvinceID).iProvinceInvestSize > 1) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        int i2 = 0;
                        for (int i3 = 0; i3 < Game.getProvince(Game.iHoveredProvinceID).iProvinceInvestSize; i3++) {
                            i2 += Game.getProvince(Game.iHoveredProvinceID).provinceInvestDaysLeft.get(i3).daysLeft;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InQueue") + ": ", CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + (Game.getProvince(Game.iHoveredProvinceID).iProvinceInvestSize - 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(" [" + Game.lang.get("DaysX", i2) + "]", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, CFG.PADDING));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                    if (CFG.isDesktop()) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ShiftClickToInvestXTimes", 5), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
                        arrayList2.clear();
                    }
                    Game.setCursorEconomy();
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.setCursorX();
                }
                return new MenuElement_Hover(arrayList);
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.drawDetailsGoods(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.drawDetailsGoods(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$22, reason: invalid class name */
    class AnonymousClass22 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass22() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(Game.iHoveredProvinceID).getResourceID() >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Resource") + ": "));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.lResources.get(Game.getProvince(Game.iHoveredProvinceID).getResourceID()).Name, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Resource(Game.getProvince(Game.iHoveredProvinceID).getResourceID(), CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Resource") + ": "));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("None"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.resourceNone, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).fProvinceValue, 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.drawDetailsGoods(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$23, reason: invalid class name */
    class AnonymousClass23 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass23() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(Game.iHoveredProvinceID).getResourceID() >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Resource") + ": "));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.lResources.get(Game.getProvince(Game.iHoveredProvinceID).getResourceID()).Name, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Resource(Game.getProvince(Game.iHoveredProvinceID).getResourceID(), CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Resource") + ": "));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("None"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.resourceNone, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$24, reason: invalid class name */
    class AnonymousClass24 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass24() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).wonderID < 0) {
                return null;
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
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.drawDetailsWonders(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.drawDetailsWonders(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$25, reason: invalid class name */
    class AnonymousClass25 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass25() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            try {
                if (Game.getProvince(Game.iHoveredProvinceID).provincePlague == null) {
                    return null;
                }
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
                return new MenuElement_Hover(arrayList);
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return null;
            }
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.drawDetailsDiseases(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.drawDetailsDiseases(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$26, reason: invalid class name */
    class AnonymousClass26 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass26() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (Game.getProvince(Game.iHoveredProvinceID).getProvinceName().length() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), CFG.FONT_BOLD_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
            }
            if (Game.getProvince(Game.iHoveredProvinceID).getLevelOfPort() >= -1) {
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LandProvince") + ": ", CFG.FONT_BOLD_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(Game.iHoveredProvinceID).getLevelOfPort(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
            } else if (Game.getProvince(Game.iHoveredProvinceID).getLevelOfPort() == -2) {
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SeaProvince") + ": ", CFG.FONT_BOLD_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(Game.iHoveredProvinceID).getLevelOfPort(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
            } else if (Game.getProvince(Game.iHoveredProvinceID).getLevelOfPort() == -3) {
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ClosedSeaLake") + ": ", CFG.FONT_BOLD_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(Game.iHoveredProvinceID).getLevelOfPort(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
            }
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$27, reason: invalid class name */
    class AnonymousClass27 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass27() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (Game.getProvince(Game.iHoveredProvinceID).getProvinceName().length() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), CFG.FONT_BOLD_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
            }
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Terrain") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.terrainManager.terrains.get(Game.getProvince(Game.iHoveredProvinceID).getTerrainID()).Name, CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            int detailsPosX = ProvinceDrawArmy.getDetailsPosX(i);
            int detailsPosY = ProvinceDrawArmy.getDetailsPosY(i);
            Renderer.clipView_Start(spriteBatch, detailsPosX - (ImageManager.getImage(Images.terrainSmall).getWidth() / 2), CFG.GAME_HEIGHT - (detailsPosY - (ImageManager.getImage(Images.terrainSmall).getHeight() / 2)), ImageManager.getImage(Images.terrainSmall).getWidth(), -ImageManager.getImage(Images.terrainSmall).getHeight());
            Game.terrainManager.terrainImages.get(Game.getProvince(i).getTerrainID()).get(i % Game.terrainManager.terrainImages.get(Game.getProvince(i).getTerrainID()).size()).draw(spriteBatch, detailsPosX - (TerrainManager.terrainSmallWidth / 2), detailsPosY - (TerrainManager.terrainSmallHeight / 2), TerrainManager.terrainSmallWidth, TerrainManager.terrainSmallHeight);
            Renderer.clipView_End(spriteBatch);
            ImageManager.getImage(Images.terrainSmall).draw(spriteBatch, detailsPosX - (ImageManager.getImage(Images.terrainSmall).getWidth() / 2), detailsPosY - (ImageManager.getImage(Images.terrainSmall).getHeight() / 2));
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$28, reason: invalid class name */
    class AnonymousClass28 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass28() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (Game.getProvince(Game.iHoveredProvinceID).getProvinceName().length() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), CFG.FONT_BOLD_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
            }
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Resource") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + ResourcesManager.lResources.get(Game.getProvince(Game.iHoveredProvinceID).getResourceID()).Name, CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            if (Game.getProvince(i).getResourceID() >= 0) {
                ResourcesManager.resourceImages.get(Game.getProvince(i).getResourceID()).draw(spriteBatch, ProvinceDrawArmy.getDetailsPosX_2(i) - (ResourcesManager.resourceImages.get(Game.getProvince(i).getResourceID()).getWidth() / 2), ProvinceDrawArmy.getDetailsPosY(i) - (ResourcesManager.resourceImages.get(Game.getProvince(i).getResourceID()).getHeight() / 2));
            }
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$29, reason: invalid class name */
    class AnonymousClass29 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass29() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (Game.getProvince(Game.iHoveredProvinceID).getProvinceName().length() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), CFG.FONT_BOLD_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
            }
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Continent") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.continents.lContinents.get(Game.getProvince(Game.iHoveredProvinceID).getContinent()).sName, CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$3, reason: invalid class name */
    class AnonymousClass3 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Province") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(Game.iHoveredProvinceID).getProvinceID(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$30, reason: invalid class name */
    class AnonymousClass30 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass30() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (Game.getProvince(Game.iHoveredProvinceID).getProvinceName().length() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), CFG.FONT_BOLD_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
            }
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Region") + SwmJtrccN.TiBFEDpCyoG, CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.geographicalRegions.lGeographicalRegions.get(Game.getProvince(Game.iHoveredProvinceID).getGeoRegion()).sName, CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$31, reason: invalid class name */
    class AnonymousClass31 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass31() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (Game.getProvince(Game.iHoveredProvinceID).getProvinceName().length() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName()));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
            }
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Region") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.regions.getRegionID(Game.iHoveredProvinceID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$4, reason: invalid class name */
    class AnonymousClass4 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Province") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(Game.iHoveredProvinceID).getProvinceID(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetailsActive(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$5, reason: invalid class name */
    class AnonymousClass5 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            String str;
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).getCivName()));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Technology") + ": ", CFG.FONT_BOLD_SMALL));
                StringBuilder sb = new StringBuilder("");
                if (Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).scenarioEditorData.TechnologyID == MapScenarios.DEFAULT_VALUE) {
                    str = Game.lang.get("Default");
                } else {
                    str = Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).scenarioEditorData.TechnologyID == -1 ? Game.lang.get("None") : TechnologyTree.lTechnology.get(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCivID()).scenarioEditorData.TechnologyID).Name;
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(sb.append(str).toString(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_IMPORTANT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            if (Game.getProvince(i).isCapital) {
                ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
            }
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
            if (Game.getProvince(i).isCapital) {
                ProvinceDrawDetails.defaultDrawDetails(spriteBatch, i);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$6, reason: invalid class name */
    class AnonymousClass6 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getProvince(Game.iHoveredProvinceID).fProvinceValue, 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails_Image(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$7, reason: invalid class name */
    class AnonymousClass7 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$8, reason: invalid class name */
    class AnonymousClass8 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i2 = 0; i2 < Game.getProvince(Game.iHoveredProvinceID).iCoresSize; i2++) {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCore(i2), 0, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(Game.iHoveredProvinceID).getCore(i2)).getCivName(), CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
            ProvinceDrawDetails.defaultDrawDetails_Image(spriteBatch, i);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails$9, reason: invalid class name */
    class AnonymousClass9 extends ProvinceDrawArmy.ProvinceDrawDetailsINT {
        AnonymousClass9() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public MenuElement_Hover buildHover(int i) {
            if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iHoveredProvinceID).getCivID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            return new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetails(SpriteBatch spriteBatch, int i) {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.ProvinceDrawDetailsINT
        public void drawDetailsSea(SpriteBatch spriteBatch, int i) {
        }
    }

    public static final void defaultDrawDetails(SpriteBatch spriteBatch, int i) {
        int detailsPosX = ProvinceDrawArmy.getDetailsPosX(i);
        int detailsPosY = ProvinceDrawArmy.getDetailsPosY(i);
        Renderer.drawBox(spriteBatch, Images.boxDetails, detailsPosX, detailsPosY, Game.getProvince(i).drawDetails.iWidth, Game.getProvince(i).drawDetails.iHeight, 1.0f);
        Renderer.drawText(spriteBatch, fontDetailsID, Game.getProvince(i).drawDetails.sText, detailsPosX + (CFG.PADDING * 2), detailsPosY + CFG.PADDING, COLOR_DETAILS_YELLOW);
    }

    public static final void defaultDrawDetailsActive(SpriteBatch spriteBatch, int i) {
        int detailsPosX = ProvinceDrawArmy.getDetailsPosX(i);
        int detailsPosY = ProvinceDrawArmy.getDetailsPosY(i);
        Renderer.drawBox(spriteBatch, Images.boxDetails, detailsPosX, detailsPosY, Game.getProvince(i).drawDetails.iWidth, Game.getProvince(i).drawDetails.iHeight, 1.0f);
        Renderer.drawText(spriteBatch, fontDetailsID, Game.getProvince(i).drawDetails.sText, detailsPosX + (CFG.PADDING * 2), detailsPosY + CFG.PADDING, COLOR_DETAILS);
    }

    public static final void defaultDrawDetails_Image(SpriteBatch spriteBatch, int i) {
        int detailsPosX = ProvinceDrawArmy.getDetailsPosX(i);
        int detailsPosY = ProvinceDrawArmy.getDetailsPosY(i);
        Renderer.drawBox(spriteBatch, Images.boxDetails, detailsPosX - ((detailsImageWidth + CFG.PADDING) / 2), detailsPosY, Game.getProvince(i).drawDetails.iWidth + detailsImageWidth + CFG.PADDING, Game.getProvince(i).drawDetails.iHeight, 1.0f);
        Renderer.drawText(spriteBatch, fontDetailsID, Game.getProvince(i).drawDetails.sText, ((CFG.PADDING * 2) + detailsPosX) - ((detailsImageWidth + CFG.PADDING) / 2), detailsPosY + CFG.PADDING, COLOR_DETAILS_YELLOW);
        Image image = ImageManager.getImage(detailsImageID);
        int i2 = ((detailsPosX + (CFG.PADDING * 2)) - ((detailsImageWidth + CFG.PADDING) / 2)) + CFG.PADDING + Game.getProvince(i).drawDetails.iTextWidth;
        int i3 = detailsPosY + (Game.getProvince(i).drawDetails.iHeight / 2);
        int i4 = detailsImageHeight;
        image.draw(spriteBatch, i2, i3 - (i4 / 2), detailsImageWidth, i4);
    }

    public static final void defaultUpdateDrawDetails_Text(int i) {
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(fontDetailsID), Game.getProvince(i).drawDetails.sText);
        Game.getProvince(i).drawDetails.iTextWidth = (int) glyphLayout_Game.width;
        Game.getProvince(i).drawDetails.iWidth = Game.getProvince(i).drawDetails.iTextWidth + (CFG.PADDING * 4);
        Game.getProvince(i).drawDetails.iHeight = CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
        Game.getProvince(i).drawDetails.iShiftX = (-Game.getProvince(i).drawDetails.iWidth) / 2;
        Game.getProvince(i).drawDetails.iShiftY = (-Game.getProvince(i).drawDetails.iHeight) / 2;
    }

    public static final void drawDetailsDiseases(SpriteBatch spriteBatch, int i) {
        try {
            int detailsPosX_2 = ProvinceDrawArmy.getDetailsPosX_2(i);
            int detailsPosY = ProvinceDrawArmy.getDetailsPosY(i);
            if (Game.getProvince(i).provincePlague != null) {
                PlagueManager.plagueImagesBig.get(PlagueManager.activePlagues.get(Game.getProvince(i).provincePlague.id).iImageID).draw(spriteBatch, detailsPosX_2 - (PlagueManager.plagueImagesBig.get(PlagueManager.activePlagues.get(Game.getProvince(i).provincePlague.id).iImageID).getWidth() / 2), detailsPosY - (PlagueManager.plagueImagesBig.get(PlagueManager.activePlagues.get(Game.getProvince(i).provincePlague.id).iImageID).getHeight() / 2));
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void drawDetailsGoods(SpriteBatch spriteBatch, int i) {
        int detailsPosX_2 = ProvinceDrawArmy.getDetailsPosX_2(i);
        int detailsPosY = ProvinceDrawArmy.getDetailsPosY(i);
        if (InGame_RightGoods.iActiveResID < 0) {
            if (Game.getProvince(i).getResourceID() >= 0) {
                ResourcesManager.resourceImages.get(Game.getProvince(i).getResourceID()).draw(spriteBatch, detailsPosX_2 - (ResourcesManager.resourceImages.get(Game.getProvince(i).getResourceID()).getWidth() / 2), detailsPosY - (ResourcesManager.resourceImages.get(Game.getProvince(i).getResourceID()).getHeight() / 2));
            }
        } else {
            if (Game.getProvince(i).getResourceID() == InGame_RightGoods.iActiveResID) {
                ResourcesManager.resourceImages.get(Game.getProvince(i).getResourceID()).draw(spriteBatch, detailsPosX_2 - (ResourcesManager.resourceImages.get(Game.getProvince(i).getResourceID()).getWidth() / 2), detailsPosY - (ResourcesManager.resourceImages.get(Game.getProvince(i).getResourceID()).getHeight() / 2));
            }
        }
    }

    public static final void drawDetailsReligion(SpriteBatch spriteBatch, int i) {
        Game.religionManager.religionImages.get(Game.getProvince(i).getReligion()).draw(spriteBatch, ProvinceDrawArmy.getDetailsPosX_2(i) - (Game.religionManager.religionImages.get(Game.getProvince(i).getReligion()).getWidth() / 2), ProvinceDrawArmy.getDetailsPosY(i) - (Game.religionManager.religionImages.get(Game.getProvince(i).getReligion()).getHeight() / 2));
    }

    public static final void drawDetailsWonders(SpriteBatch spriteBatch, int i) {
        try {
            int detailsPosX_2 = ProvinceDrawArmy.getDetailsPosX_2(i);
            int detailsPosY = ProvinceDrawArmy.getDetailsPosY(i);
            if (Game.getProvince(i).wonderID >= 0) {
                spriteBatch.setShader(Renderer.shaderAlpha);
                WondersManager.wonderImages.get(WondersManager.wonders.get(Game.getProvince(i).wonderID).ImageID).getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                ImageManager.getImage(Images.unitsFrameMapMask).draw(spriteBatch, detailsPosX_2 - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2), detailsPosY - (ImageManager.getImage(Images.unitsFrameMap).getHeight() / 2));
                spriteBatch.flush();
                spriteBatch.setShader(Renderer.shaderDefault);
                ImageManager.getImage(Images.unitsFrameMap).draw(spriteBatch, detailsPosX_2 - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2), detailsPosY - (ImageManager.getImage(Images.unitsFrameMap).getHeight() / 2));
                if (Game.getProvince(i).wonderConstruction != null) {
                    int width = (ImageManager.getImage(Images.progressBarFrame).getWidth() - ImageManager.getImage(Images.progressBarFrameMask).getWidth()) / 2;
                    int height = (ImageManager.getImage(Images.progressBarFrame).getHeight() - ImageManager.getImage(Images.progressBarFrameMask).getHeight()) / 2;
                    spriteBatch.setColor(new Color(ProvinceDraw.progressBarBG));
                    ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, (detailsPosX_2 - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2)) + width, (((detailsPosY - (ImageManager.getImage(Images.unitsFrameMap).getHeight() / 2)) + ImageManager.getImage(Images.unitsFrameMap).getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight()) + height);
                    spriteBatch.setColor(ProvinceDraw.progressBar);
                    ImageManager.getImage(Images.progressBarFrameMask).draw(spriteBatch, width + (detailsPosX_2 - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2)), height + (((detailsPosY - (ImageManager.getImage(Images.unitsFrameMap).getHeight() / 2)) + ImageManager.getImage(Images.unitsFrameMap).getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight()), (int) (ImageManager.getImage(Images.progressBarFrameMask).getWidth() * (1.0f - (Game.getProvince(i).wonderConstruction.daysLeft / Game.getProvince(i).wonderConstruction.investTime))), ImageManager.getImage(Images.progressBarFrameMask).getHeight());
                    spriteBatch.setColor(Color.WHITE);
                    ImageManager.getImage(Images.progressBarFrame).draw(spriteBatch, detailsPosX_2 - (ImageManager.getImage(Images.unitsFrameMap).getWidth() / 2), ((detailsPosY - (ImageManager.getImage(Images.unitsFrameMap).getHeight() / 2)) + ImageManager.getImage(Images.unitsFrameMap).getHeight()) - ImageManager.getImage(Images.progressBarFrame).getHeight());
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void setDetailsImageID(int i) {
        detailsImageID = i;
        float height = (CFG.TEXT_HEIGHT / ImageManager.getImage(detailsImageID).getHeight()) * 1.25f;
        detailsImageWidth = (int) (ImageManager.getImage(detailsImageID).getWidth() * height);
        detailsImageHeight = (int) (ImageManager.getImage(detailsImageID).getHeight() * height);
    }

    public static final void updateDrawProvinceDetails_Continent() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_Continent(i);
        }
    }

    public static final void updateDrawProvinceDetails_Continent(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass29();
    }

    public static final void updateDrawProvinceDetails_Diseases() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_Diseases(i);
        }
    }

    public static final void updateDrawProvinceDetails_Diseases(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass25();
        Game.getProvince(i).drawDetails.sText = "";
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_Economy() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_Economy(i);
        }
    }

    public static final void updateDrawProvinceDetails_Economy(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass2();
        Game.getProvince(i).drawDetails.sText = "" + ((int) Game.getProvince(i).BaseDevelopment);
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_GeoRegion() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_GeoRegion(i);
        }
    }

    public static final void updateDrawProvinceDetails_GeoRegion(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass30();
    }

    public static final void updateDrawProvinceDetails_Goods() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_Goods(i);
        }
    }

    public static final void updateDrawProvinceDetails_Goods(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass20();
        Game.getProvince(i).drawDetails.sText = "";
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_Goods_InvestInEconomy() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_Goods_InvestInEconomy(i);
        }
    }

    public static final void updateDrawProvinceDetails_Goods_InvestInEconomy(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass21();
        Game.getProvince(i).drawDetails.sText = "";
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_GrowthRate() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_GrowthRate(i);
        }
    }

    public static final void updateDrawProvinceDetails_GrowthRate(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass1();
        Game.getProvince(i).drawDetails.sText = ((int) Game.getProvince(i).getGrowthRate()) + "%";
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_OptimizationRegions() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_OptimizationRegions(i);
        }
    }

    public static final void updateDrawProvinceDetails_OptimizationRegions(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass31();
        Game.getProvince(i).drawDetails.sText = "" + Game.regions.getRegionID(i);
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_PeaceEconomy() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_PeaceEconomy(i);
        }
        setDetailsImageID(Game_Calendar.IMG_ECONOMY);
    }

    public static final void updateDrawProvinceDetails_PeaceEconomy(int i) {
        if (!Game.getCiv(Game.getProvince(i).getCivID()).warView_ParticipatesInWar || Game.getCiv(Game.getProvince(i).getCivID()).warView_IsAggressor) {
            Game.getProvince(i).drawDetails = new AnonymousClass17();
        } else {
            Game.getProvince(i).drawDetails = new AnonymousClass16(i);
        }
        Game.getProvince(i).drawDetails.sText = "" + CFG.getPrecision2(Game.getProvince(i).getEconomyWithBonuses(), 10);
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_PeaceGoods() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_PeaceGoods(i);
        }
    }

    public static final void updateDrawProvinceDetails_PeaceGoods(int i) {
        if (Game.getCiv(Game.getProvince(i).getCivID()).warView_ParticipatesInWar) {
            Game.getProvince(i).drawDetails = new AnonymousClass22();
        } else {
            Game.getProvince(i).drawDetails = new AnonymousClass23();
        }
        Game.getProvince(i).drawDetails.sText = "";
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_PeacePopulation() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_PeacePopulation(i);
        }
        setDetailsImageID(Images.population);
    }

    public static final void updateDrawProvinceDetails_PeacePopulation(int i) {
        if (!Game.getCiv(Game.getProvince(i).getCivID()).warView_ParticipatesInWar || Game.getCiv(Game.getProvince(i).getCivID()).warView_IsAggressor) {
            Game.getProvince(i).drawDetails = new AnonymousClass15();
        } else {
            Game.getProvince(i).drawDetails = new AnonymousClass14();
        }
        Game.getProvince(i).drawDetails.sText = "" + CFG.getShortNumber(Game.getProvince(i).getPopulationTotal());
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_PeaceReligion() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_PeaceReligion(i);
        }
    }

    public static final void updateDrawProvinceDetails_PeaceReligion(int i) {
        if (Game.getCiv(Game.getProvince(i).getCivID()).warView_ParticipatesInWar) {
            Game.getProvince(i).drawDetails = new AnonymousClass18();
        } else {
            Game.getProvince(i).drawDetails = new AnonymousClass19();
        }
        Game.getProvince(i).drawDetails.sText = "";
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_PeaceVictoryPoints() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_PeaceVictoryPoints(i);
        }
        setDetailsImageID(Images.victoryPoints);
    }

    public static final void updateDrawProvinceDetails_PeaceVictoryPoints(int i) {
        if (!Game.getCiv(Game.getProvince(i).getCivID()).warView_ParticipatesInWar || Game.getCiv(Game.getProvince(i).getCivID()).warView_IsAggressor) {
            Game.getProvince(i).drawDetails = new AnonymousClass7();
        } else {
            Game.getProvince(i).drawDetails = new AnonymousClass6();
        }
        Game.getProvince(i).drawDetails.sText = "" + CFG.getPrecision2(Game.getProvince(i).fProvinceValue, 10);
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_ProvinceID() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_ProvinceID(i);
        }
    }

    public static final void updateDrawProvinceDetails_ProvinceID(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass3();
        Game.getProvince(i).drawDetails.sText = "" + Game.getProvince(i).getProvinceID();
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_ProvinceID_Active(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass4();
        Game.getProvince(i).drawDetails.sText = "" + Game.getProvince(i).getProvinceID();
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_Resource() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_Resource(i);
        }
    }

    public static final void updateDrawProvinceDetails_Resource(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass28();
    }

    public static final void updateDrawProvinceDetails_ScenarioCores() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_ScenarioCores(i);
        }
        setDetailsImageID(Images.core);
    }

    public static final void updateDrawProvinceDetails_ScenarioCores(int i) {
        if ((Game.getProvince(i).iCoresSize > 1 || Game.getProvince(i).iCoresSize == 0 || !Game.getProvince(i).haveACore) && !Game.getProvince(i).getSeaProvince()) {
            Game.getProvince(i).drawDetails = new AnonymousClass8();
        } else {
            Game.getProvince(i).drawDetails = new AnonymousClass9();
        }
        Game.getProvince(i).drawDetails.sText = "" + CFG.getPrecision2(Game.getProvince(i).iCoresSize, 1);
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_ScenarioReligion() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_ScenarioReligion(i);
        }
        setDetailsImageID(Images.religion);
    }

    public static final void updateDrawProvinceDetails_ScenarioReligion(int i) {
        if (ScenarioDiplomacy.goBackTo == View.IN_GAME) {
            if (Game.getProvince(i).getSeaProvince() || Game.getProvince(i).getReligion() == Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()) {
                Game.getProvince(i).drawDetails = new AnonymousClass11();
            } else {
                Game.getProvince(i).drawDetails = new AnonymousClass10();
            }
            Game.getProvince(i).drawDetails.sText = "" + Game.religionManager.getReligion(Game.getProvince(i).getReligion()).Name;
            defaultUpdateDrawDetails_Text(i);
            return;
        }
        if (Game.getProvince(i).getSeaProvince() || Game.mapScenarios.editorProvinceReligion.get(i).intValue() < 0 || Game.mapScenarios.editorProvinceReligion.get(i).intValue() == Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()) {
            Game.getProvince(i).drawDetails = new AnonymousClass13();
        } else {
            Game.getProvince(i).drawDetails = new AnonymousClass12();
        }
        if (Game.mapScenarios.editorProvinceReligion.get(i).intValue() < 0) {
            Game.getProvince(i).drawDetails.sText = "" + Game.religionManager.getReligion(Game.getProvince(i).getReligion()).Name;
        } else {
            Game.getProvince(i).drawDetails.sText = "" + Game.religionManager.getReligion(Game.mapScenarios.editorProvinceReligion.get(i).intValue()).Name;
        }
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_SeaProvinces() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_SeaProvinces(i);
        }
    }

    public static final void updateDrawProvinceDetails_SeaProvinces(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass26();
        Game.getProvince(i).drawDetails.sText = "" + Game.getProvince(i).getLevelOfPort();
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_Technology() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_Technology(i);
        }
    }

    public static final void updateDrawProvinceDetails_Technology(int i) {
        String str;
        Game.getProvince(i).drawDetails = new AnonymousClass5();
        try {
            ProvinceDrawArmy.ProvinceDrawDetailsINT provinceDrawDetailsINT = Game.getProvince(i).drawDetails;
            StringBuilder sb = new StringBuilder("");
            if (Game.getCiv(Game.getProvince(i).getCivID()).scenarioEditorData.TechnologyID == MapScenarios.DEFAULT_VALUE) {
                str = Game.lang.get("Default") + " " + MapScenarios.scenarioEditorDetails.CivDefault_Technology;
            } else {
                str = Game.getCiv(Game.getProvince(i).getCivID()).scenarioEditorData.TechnologyID == -1 ? Game.lang.get("None") : TechnologyTree.lTechnology.get(Game.getCiv(Game.getProvince(i).getCivID()).scenarioEditorData.TechnologyID).Name + " " + Game.getCiv(Game.getProvince(i).getCivID()).scenarioEditorData.TechnologyID;
            }
            provinceDrawDetailsINT.sText = sb.append(str).toString();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        defaultUpdateDrawDetails_Text(i);
    }

    public static final void updateDrawProvinceDetails_Terrain() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_Terrain(i);
        }
    }

    public static final void updateDrawProvinceDetails_Terrain(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass27();
    }

    public static final void updateDrawProvinceDetails_Wonders() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            updateDrawProvinceDetails_Wonders(i);
        }
    }

    public static final void updateDrawProvinceDetails_Wonders(int i) {
        Game.getProvince(i).drawDetails = new AnonymousClass24();
        Game.getProvince(i).drawDetails.sText = "";
        defaultUpdateDrawDetails_Text(i);
    }
}
