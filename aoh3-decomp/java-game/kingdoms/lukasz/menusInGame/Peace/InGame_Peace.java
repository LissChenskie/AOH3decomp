package aoc.kingdoms.lukasz.menusInGame.Peace;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.AI.AI_PeaceTreaty;
import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.PeaceTreaty;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation;
import aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy_Cost;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_ImageSparks;
import aoc.kingdoms.lukasz.menu_element.button.ButtonIcon;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Value;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect_Active;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStats_Score;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusIdeology;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusReligion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Peace extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static boolean brushModeDemand;
    public static long lTime;
    public int activeMapModeID;
    public int iCivID;
    public int iNumOfProvinces_Prov = 0;
    public int iNumOfProvinces_Pop = 0;
    public float iAggressiveExpansion = 0.0f;
    public float iAggressiveExpansion2 = 0.0f;
    public boolean enforceDemandsConfirm = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonFlag_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonIcon {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Peace.this.activeMapModeID == 1) {
                InGame_Peace.this.activeMapModeID = 0;
                Renderer.drawArmyInProvince = true;
            } else {
                InGame_Peace.this.activeMapModeID = 1;
                Renderer.drawArmyInProvince = false;
                ProvinceDrawDetails.updateDrawProvinceDetails_PeaceVictoryPoints();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(cIUGJCqyPXfp.ijJzzzqh), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.victoryPoints, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_Peace.this.activeMapModeID == 1;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonIcon {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Peace.this.activeMapModeID == 2) {
                InGame_Peace.this.activeMapModeID = 0;
                Renderer.drawArmyInProvince = true;
            } else {
                InGame_Peace.this.activeMapModeID = 2;
                Renderer.drawArmyInProvince = false;
                ProvinceDrawDetails.updateDrawProvinceDetails_PeacePopulation();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Population"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_Peace.this.activeMapModeID == 2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonIcon {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Peace.this.activeMapModeID == 3) {
                InGame_Peace.this.activeMapModeID = 0;
                Renderer.drawArmyInProvince = true;
            } else {
                InGame_Peace.this.activeMapModeID = 3;
                Renderer.drawArmyInProvince = false;
                ProvinceDrawDetails.updateDrawProvinceDetails_PeaceEconomy();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Economy"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_Peace.this.activeMapModeID == 3;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonIcon {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Peace.this.activeMapModeID == 4) {
                InGame_Peace.this.activeMapModeID = 0;
                Renderer.drawArmyInProvince = true;
            } else {
                InGame_Peace.this.activeMapModeID = 4;
                Renderer.drawArmyInProvince = false;
                ProvinceDrawDetails.updateDrawProvinceDetails_PeaceGoods();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Resources"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_Peace.this.activeMapModeID == 4;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonIcon {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Peace.this.activeMapModeID == 5) {
                InGame_Peace.this.activeMapModeID = 0;
                Renderer.drawArmyInProvince = true;
            } else {
                InGame_Peace.this.activeMapModeID = 5;
                Renderer.drawArmyInProvince = false;
                ProvinceDrawDetails.updateDrawProvinceDetails_PeaceReligion();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(PZBvyl.rCxOlOenXwWdR), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_Peace.this.activeMapModeID == 5;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonStats_Score {
        AnonymousClass15(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Score") + ": ", this.sText2, Images.victoryPoints, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("PointsUsedToClaimDemandsInAPeaceTreaty"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonStatsRectIMG_Bonuses {
        public int lastValue;

        AnonymousClass16(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.lastValue = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.player.peaceTreaty.demandGold) {
                setText2((Game.player.peaceTreaty.demandGold > 0 ? "+" : "") + CFG.getPrecision2(Game.player.peaceTreaty.getGold_PerDemand(), 100));
                this.lastValue = Game.player.peaceTreaty.demandGold;
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonStatsRect_Active {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.demandGold_Cancel();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonStatsRect_Active {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.demandGold();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Gold"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.player.peaceTreaty.getScore_DemandGold(), 100), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", CFG.getPrecision2(Game.player.peaceTreaty.getGold_PerDemand_One(), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(Game.player.peaceTreaty.iCivID2).getCivName(), "", Game.player.peaceTreaty.iCivID2, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonDiplomacy {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!CFG.brushTool) {
                CFG.brushTool = true;
                InGame_Peace.brushModeDemand = true;
                setText(Game.lang.get("Brush") + " " + Game.lang.get("DemandProvinces"));
            } else if (InGame_Peace.brushModeDemand) {
                InGame_Peace.brushModeDemand = false;
                setText(Game.lang.get("Brush") + " " + Game.lang.get("Cancel"));
            } else {
                CFG.brushTool = false;
                setText(Game.lang.get("Brush"));
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Brush"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.brush, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        protected void drawButtonSparks(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            if (CFG.brushTool) {
                return InGame_Peace.brushModeDemand ? new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.15f) : new Color(Colors.COLOR_TEXT_MODIFIER_NEGATIVE.r, Colors.COLOR_TEXT_MODIFIER_NEGATIVE.g, Colors.COLOR_TEXT_MODIFIER_NEGATIVE.b, 0.15f);
            }
            return new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            if (CFG.brushTool) {
                return InGame_Peace.brushModeDemand ? new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.5f) : new Color(Colors.COLOR_TEXT_MODIFIER_NEGATIVE.r, Colors.COLOR_TEXT_MODIFIER_NEGATIVE.g, Colors.COLOR_TEXT_MODIFIER_NEGATIVE.b, 0.5f);
            }
            return new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || CFG.brushTool;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonFlag_Diplomacy {
        AnonymousClass2(int i, int i2, int i3, boolean z) {
            super(i, i2, i3, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$20, reason: invalid class name */
    class AnonymousClass20 extends ButtonDiplomacy_Cost {
        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.demandWarReparations();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("WarReparations"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.player.peaceTreaty.getScore_DemandWarReparations(), 100), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(Game.player.peaceTreaty.iCivID2).getCivName(), "", Game.player.peaceTreaty.iCivID2, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", CFG.getPrecision2(PeaceTreaty.getWarReparationsPerMonth(Game.player.peaceTreaty.iCivID2), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + GameValues.peace.PEACE_WAR_REPARATIONS_TURNS), "", Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        protected void drawButtonSparks(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || Game.player.peaceTreaty.demandWarReparations;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonDiplomacy_Cost {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.demandVassalization();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game_Ages.getDemandVassalization()), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.player.peaceTreaty.getScore_DemandVassalization(), 100), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(Game.player.peaceTreaty.iCivID2).getCivName(), "", Game.player.peaceTreaty.iCivID2, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        protected void drawButtonSparks(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || Game.player.peaceTreaty.demandVassalization;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$22, reason: invalid class name */
    class AnonymousClass22 extends ButtonDiplomacy_Cost {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.demandGovernmentChange();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("GovernmentChange"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.player.peaceTreaty.getScore_DemandGovernmentChange(), 100), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(Game.player.peaceTreaty.iCivID2).getCivName(), "", Game.player.peaceTreaty.iCivID2, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusIdeology(Game.ideologiesManager.getIdeology(Game.getCiv(Game.player.peaceTreaty.iCivID2).getIdeologyID()).Name, "", Game.getCiv(Game.player.peaceTreaty.iCivID2).getIdeologyID(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        protected void drawButtonSparks(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || Game.player.peaceTreaty.demandGovernmentChange;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$23, reason: invalid class name */
    class AnonymousClass23 extends ButtonDiplomacy_Cost {
        AnonymousClass23(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.demandReligionConversion();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DemandReligionConversion"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.player.peaceTreaty.getScore_DemandReligionConversion(), 100), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(Game.player.peaceTreaty.iCivID2).getCivName(), "", Game.player.peaceTreaty.iCivID2, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusReligion(Game.religionManager.getReligion(Game.getCiv(Game.player.peaceTreaty.iCivID2).getReligionID()).Name, "", Game.getCiv(Game.player.peaceTreaty.iCivID2).getReligionID(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        protected void drawButtonSparks(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || Game.player.peaceTreaty.demandReligionConversion;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$24, reason: invalid class name */
    class AnonymousClass24 extends ButtonDiplomacy_Cost {
        AnonymousClass24(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.demandHumiliate();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Humiliate"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.insult, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.player.peaceTreaty.getScore_DemandHumiliate(), 100), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(Game.player.peaceTreaty.iCivID2).getCivName(), "", Game.player.peaceTreaty.iCivID2, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Legacy") + ": ", (GameValues.peace.PEACE_HUMILIATE_LEGACY_GAIN > 0.0f ? "+" : "") + CFG.getPrecision2(GameValues.peace.PEACE_HUMILIATE_LEGACY_GAIN, 100), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (GameValues.peace.PEACE_HUMILIATE_AGGRESSIVE_EXPANSION_GAIN != 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AggressiveExpansion") + ": ", (GameValues.peace.PEACE_HUMILIATE_AGGRESSIVE_EXPANSION_GAIN <= 0.0f ? "" : "+") + CFG.getPrecision2(GameValues.peace.PEACE_HUMILIATE_AGGRESSIVE_EXPANSION_GAIN, 100), Images.aggressiveExpansion, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_NEGATIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        protected void drawButtonSparks(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE.r, Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE.g, Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE.r, Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE.g, Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || Game.player.peaceTreaty.demandHumiliate;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$25, reason: invalid class name */
    class AnonymousClass25 extends ButtonDiplomacy_Cost {
        AnonymousClass25(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            super(str, i, i2, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.demandMilitaryAccess();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DemandMilitaryAccess"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.militaryAccess, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.player.peaceTreaty.getScore_DemandMilitaryAccess(), 100), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(Game.player.peaceTreaty.iCivID2).getCivName(), "", Game.player.peaceTreaty.iCivID2, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        protected void drawButtonSparks(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover1() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.15f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonDiplomacy
        public Color getColorHover2() {
            return new Color(Colors.COLOR_TEXT_MODIFIER_POSITIVE.r, Colors.COLOR_TEXT_MODIFIER_POSITIVE.g, Colors.COLOR_TEXT_MODIFIER_POSITIVE.b, 0.5f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || Game.player.peaceTreaty.demandMilitaryAccess;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$26, reason: invalid class name */
    class AnonymousClass26 extends ButtonCurrentSituation {
        AnonymousClass26(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                try {
                    arrayList2.add(Integer.valueOf(Game.getProvince(i).getCivID()));
                    arrayList3.add(0);
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            for (int i2 = 0; i2 < Game.getCiv(InGame_Peace.this.iCivID).getNumOfProvinces(); i2++) {
                arrayList.add(Integer.valueOf(Game.getCiv(InGame_Peace.this.iCivID).getProvinceID(i2)));
                arrayList3.set(Game.getCiv(InGame_Peace.this.iCivID).getProvinceID(i2), Integer.valueOf(AI_PeaceTreaty.buildProvinceScore_Player(arrayList2, Game.player.iCivID, Game.getCiv(InGame_Peace.this.iCivID).getProvinceID(i2))));
            }
            while (Game.player.peaceTreaty.fScore > 0.0f && arrayList.size() > 0) {
                int i3 = 0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((Integer) arrayList3.get(((Integer) arrayList.get(i3)).intValue())).intValue() < ((Integer) arrayList3.get(((Integer) arrayList.get(size)).intValue())).intValue()) {
                        i3 = size;
                    }
                }
                if (!Game.player.peaceTreaty.addProvince(((Integer) arrayList.get(i3)).intValue())) {
                    break;
                }
                arrayList2.set(((Integer) arrayList.get(i3)).intValue(), Integer.valueOf(Game.player.iCivID));
                Game.getProvince(((Integer) arrayList.get(i3)).intValue()).peaceTreatyIsTaken = true;
                for (int i4 = 0; i4 < Game.getProvince(((Integer) arrayList.get(i3)).intValue()).getNeighboringProvincesSize(); i4++) {
                    arrayList3.set(Game.getProvince(((Integer) arrayList.get(i3)).intValue()).getNeighboringProvinces(i4), Integer.valueOf(AI_PeaceTreaty.buildProvinceScore_Player(arrayList2, Game.player.iCivID, Game.getProvince(((Integer) arrayList.get(i3)).intValue()).getNeighboringProvinces(i4))));
                }
                arrayList.remove(i3);
            }
            Game.player.peaceTreaty.buildAggressiveExpansion();
            arrayList2.clear();
            arrayList3.clear();
            arrayList.clear();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Suggest") + ": " + Game.lang.get("Provinces"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$27, reason: invalid class name */
    class AnonymousClass27 extends ButtonCurrentSituation {
        AnonymousClass27(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.resetProvinces();
            Game.menuManager.addToastGold(Game.lang.get("Done"), Images.provinces);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Reset") + ": " + Game.lang.get("Provinces"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$28, reason: invalid class name */
    class AnonymousClass28 extends Text_StaticBG_ID_Flag {
        AnonymousClass28(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.demandSubjectTransfer(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() >= 0) {
                Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(getCurrent()).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Provinces") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getNumOfProvinces()), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getCiv(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getCiv(getCurrent()).getEconomyTotal(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.player.peaceTreaty.getScore_SubjectTransfer(getCurrent()), 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag
        public int getFlagID() {
            return Game.player.peaceTreaty.lSubjectTransfer.contains(Integer.valueOf(getCurrent())) ? Game.player.iCivID : getCurrent();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$29, reason: invalid class name */
    class AnonymousClass29 extends ButtonStatsRectIMG_Active_Value {
        AnonymousClass29(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$3, reason: invalid class name */
    class AnonymousClass3 extends TextIcon_Diplomacy {
        AnonymousClass3(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return Game.getCiv(InGame_Peace.this.iCivID).getColor(1.0f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$30, reason: invalid class name */
    class AnonymousClass30 extends Text_StaticBG_ID_Flag {
        AnonymousClass30(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.demandLiberateCiv(InGame_Peace.this.iCivID, getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (Game.getCiv(getCurrent()).getCapitalProvinceID() >= 0) {
                Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getCiv(getCurrent()).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Provinces"));
            String str = uNBYrZVGzy.WiURJLBLe;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(sbAppend.append(str).toString(), CFG.getNumberWithSpaces("" + PeaceTreaty.getLiberateCivProvinces(InGame_Peace.this.iCivID, getCurrent())), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + str, CFG.getNumberWithSpaces("" + PeaceTreaty.getLiberateCivPopulation(InGame_Peace.this.iCivID, getCurrent())), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + str, CFG.getPrecision2(PeaceTreaty.getLiberateCivEconomy(InGame_Peace.this.iCivID, getCurrent()), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Legacy") + str, (GameValues.peace.PEACE_LIBERATE_CIV_LEGACY > 0.0f ? "+" : "") + CFG.getPrecision2(GameValues.peace.PEACE_LIBERATE_CIV_LEGACY, 100), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, GameValues.peace.PEACE_LIBERATE_CIV_LEGACY >= 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + str, CFG.getPrecision2(Game.player.peaceTreaty.getScore_LiberateCiv(InGame_Peace.this.iCivID, getCurrent()), 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag
        public int getFlagID() {
            return Game.player.peaceTreaty.lLiberateCiv.contains(Integer.valueOf(getCurrent())) ? Game.player.iCivID : getCurrent();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$31, reason: invalid class name */
    class AnonymousClass31 extends ButtonStatsRectIMG_Active_Value {
        AnonymousClass31(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$32, reason: invalid class name */
    class AnonymousClass32 extends Text_StaticBG_ID_Flag {
        AnonymousClass32(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, i7, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.peaceTreaty.takeProvince(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.getProvince(getCurrent()).getProvinceName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Cost") + ": ", CFG.getPrecision2(Game.getProvince(getCurrent()).fProvinceValue, 10), Images.victoryPoints, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_Flag
        public int getFlagID() {
            return Game.getProvince(getCurrent()).peaceTreatyIsTaken ? Game.player.iCivID : super.getFlagID();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$33, reason: invalid class name */
    class AnonymousClass33 extends ButtonStatsRectIMG_Active_Value {
        AnonymousClass33(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$34, reason: invalid class name */
    class AnonymousClass34 extends MenuTitleIMG_DoubleText {
        AnonymousClass34(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Peace.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("Annexation"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(getText(), this.sText2, this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("NonCoreProvince"), CFG.FONT_BOLD, Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", "" + CFG.getPrecision2(Math.ceil((1.0f - GameValues.peace.PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE) * 100.0f) * (-1.0d), 1) + "%", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, GameValues.peace.PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE < 1.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", "" + CFG.getPrecision2(Math.ceil((1.0f - GameValues.peace.PEACE_ANNEX_PROVINCE_TAX_CHANGE) * 100.0f) * (-1.0d), 1) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, GameValues.peace.PEACE_ANNEX_PROVINCE_TAX_CHANGE < 1.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LocalManpower") + ": ", "" + CFG.getPrecision2(((int) ((1.0f - GameValues.peace.PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE) * 100.0f)) * (-1), 1) + "%", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, GameValues.peace.PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE < 1.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GrowthRate") + ": ", "" + CFG.getPrecision2(((int) ((1.0f - GameValues.peace.PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE) * 100.0f)) * (-1), 1) + "%", Images.populationGrowth, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, GameValues.peace.PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE < 1.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.HOVER_GOLD;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (Game.player.peaceTreaty.lProvinces.size() != InGame_Peace.this.iNumOfProvinces_Prov) {
                this.sText2 = "" + Game.player.peaceTreaty.lProvinces.size();
                Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID2), this.sText2);
                this.iTextBonusW = (int) Renderer.glyphLayout.width;
                InGame_Peace.this.iNumOfProvinces_Prov = Game.player.peaceTreaty.lProvinces.size();
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (Game.player.peaceTreaty.lProvinces.size() != InGame_Peace.this.iNumOfProvinces_Pop) {
                this.sText2 = "" + CFG.getShortNumber(Game.player.peaceTreaty.getPopulation());
                Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID2), this.sText2);
                this.iTextBonusW = (int) Renderer.glyphLayout.width;
                InGame_Peace.this.iNumOfProvinces_Pop = Game.player.peaceTreaty.lProvinces.size();
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass6(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PeaceTreaty"), CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.peace, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(getText(), "min(" + CFG.getPrecision2(Game.player.peaceTreaty.fAggressiveExpansion, 100) + ", " + CFG.getPrecision2(GameValues.aggressiveExpansion.PEACE_TREATY_AE_FROM_WAR_LIMIT, 100) + ")", this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AggressiveExpansion") + " > " + CFG.getPrecision2(GameValues.aggressiveExpansion.START_COALITION_IF_AE_OVER, 10) + fTNtCctcBZcqKK.WQDhZxGmp, Game.lang.get("Coalition"), Images.alliance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (Game.player.peaceTreaty.fAggressiveExpansion != InGame_Peace.this.iAggressiveExpansion) {
                StringBuilder sb = new StringBuilder();
                float f = Game.player.peaceTreaty.fAggressiveExpansion;
                this.sText2 = sb.append("").append(CFG.getPrecision2(Game.player.peaceTreaty.fAggressiveExpansion, 100)).toString();
                Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID2), this.sText2);
                this.iTextBonusW = (int) Renderer.glyphLayout.width;
                InGame_Peace.this.iAggressiveExpansion = Game.player.peaceTreaty.fAggressiveExpansion;
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass7(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.player.iCivID, Game.lang.get("AggressiveExpansion")));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AggressiveExpansion") + ": ", this.sText2, this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AggressiveExpansion") + " > " + CFG.getPrecision2(GameValues.aggressiveExpansion.START_COALITION_IF_AE_OVER, 10) + " = ", Game.lang.get("Coalition"), Images.alliance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (Game.player.peaceTreaty.fAggressiveExpansion != InGame_Peace.this.iAggressiveExpansion2) {
                this.sText2 = CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getAggressiveExpansion() + Game.player.peaceTreaty.fAggressiveExpansion, 10);
                Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID2), this.sText2);
                this.iTextBonusW = (int) Renderer.glyphLayout.width;
                InGame_Peace.this.iAggressiveExpansion2 = Game.player.peaceTreaty.fAggressiveExpansion;
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame_ImageSparks {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7) {
            super(str, i, i2, i3, i4, i5, i6, z, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_Peace.this.enforceDemandsConfirm) {
                InGame_Peace.this.enforceDemandsConfirm = true;
                setText(Game.lang.get("EnforceDemands") + ": " + Game.lang.get(uiwPYaNhJS.BAZ));
                return;
            }
            int i = Game.player.peaceTreaty.iCivID;
            int i2 = Game.player.peaceTreaty.iCivID2;
            if (Game.player.peaceTreaty.enforceDemands(true)) {
                Game.menuManager.setVisibleInGame_Peace(false);
                Game.menuManager.rebuildInGame_Wars();
                InGame_Info.iCivID = i;
                InGame_Info.iCivID2 = i2;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("PeaceTreaty"), Game_Calendar.getCurrentDate());
                InGame_Info.imgID = Images.infoDiplomacy;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (InGame_Peace.this.enforceDemandsConfirm) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SignPeaceTreaty") + ": " + Game.lang.get(CoLRpi.sCntkJWCCdKCvTp), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.warPeace, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SignPeaceTreaty"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.warPeace, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return InGame_Peace.this.enforceDemandsConfirm ? Colors.HOVER_GOLD : super.getColor(z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || InGame_Peace.this.enforceDemandsConfirm;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonIcon {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = true;
            InGame_Peace.this.activeMapModeID = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("None"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mapModesCivs, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonIcon
        public boolean isActive() {
            return InGame_Peace.this.activeMapModeID == 0;
        }
    }

    public InGame_Peace() {
        int i;
        int height;
        int i2;
        String str;
        String str2;
        int i3;
        String str3;
        int height2;
        int i4;
        String str4;
        int height3;
        this.iCivID = 1;
        this.activeMapModeID = 0;
        ArrayList arrayList = new ArrayList();
        int i5 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height4 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title500).getHeight();
        int i6 = CFG.PADDING;
        if (CFG.isDesktop()) {
            int i7 = CFG.BUTTON_HEIGHT2;
        } else {
            int i8 = CFG.BUTTON_HEIGHT;
        }
        InGame_Civ.updateMaxIconH();
        this.activeMapModeID = 0;
        brushModeDemand = false;
        int width2 = ImageManager.getImage(Images.warPeaceBig).getWidth() + (CFG.PADDING * 4);
        int i9 = CFG.PADDING;
        int height5 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i9 * 2);
        int i10 = width / 2;
        int i11 = width2 / 2;
        int width3 = (((i10 - i5) - (CFG.PADDING * 2)) - i11) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        if (Game.player.peaceTreaty == null || !WarManager.lWars.containsKey(Game.player.peaceTreaty.warKey)) {
            i = width;
            arrayList.add(new Text_StaticBG(Game.lang.get("Error"), CFG.FONT_REGULAR, -1, i5, i6, i - (i5 * 2), CFG.BUTTON_HEIGHT2));
            height = i6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        } else {
            if (WarManager.lWars.get(Game.player.peaceTreaty.warKey).isAggressor(Game.player.iCivID)) {
                this.iCivID = WarManager.lWars.get(Game.player.peaceTreaty.warKey).lDefenders.get(0).iCivID;
            } else {
                this.iCivID = WarManager.lWars.get(Game.player.peaceTreaty.warKey).lAggressors.get(0).iCivID;
            }
            int i12 = i6 + i9;
            arrayList.add(new AnonymousClass1(Game.player.iCivID, ((i10 - i11) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i12, true));
            int i13 = i10 + i11;
            arrayList.add(new AnonymousClass2(this.iCivID, i13 + (CFG.PADDING * 2), i12, true));
            int i14 = this.iCivID;
            arrayList.add(new Text_Static_ID(i14, Game.getCiv(i14).getCivName(), CFG.FONT_REGULAR, -1, i13 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i6, width3, height5));
            int i15 = width;
            arrayList.add(new Text_Static_ID(Game.player.iCivID, Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_REGULAR, -1, i5, i6, width3, height5));
            int i16 = i15 - (i5 * 2);
            arrayList.add(new AnonymousClass3(Images.warPeaceBig, i5, i6, i16, height5, width2));
            int height6 = i6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i17 = CFG.BUTTON_HEIGHT3;
            int i18 = (i16 - (CFG.PADDING * 3)) / 4;
            int i19 = (int) (i18 * 1.1f);
            arrayList.add(new AnonymousClass4(Game.lang.get("Provinces") + ": ", "" + Game.player.peaceTreaty.lProvinces.size(), Images.provinces, i5, height6, (i16 - CFG.PADDING) / 2, i17, ImageManager.getImage(Images.gold).getWidth()));
            arrayList.add(new AnonymousClass5(Game.lang.get("Population") + ": ", "" + CFG.getShortNumber(Game.player.peaceTreaty.getPopulation()), Images.population, CFG.PADDING + i5 + ((i16 - CFG.PADDING) / 2), height6, (i16 - CFG.PADDING) / 2, i17, ImageManager.getImage(Images.gold).getWidth()));
            int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i20 = ((i16 - CFG.PADDING) * 3) / 4;
            int i21 = ((i16 - CFG.PADDING) * 1) / 4;
            arrayList.add(new AnonymousClass6(Game.lang.get("AggressiveExpansion") + ": ", "" + CFG.getPrecision2(Game.player.peaceTreaty.fAggressiveExpansion, 100), Images.aggressiveExpansion, i5, height7, i20, i17, ImageManager.getImage(Images.gold).getWidth()));
            arrayList.add(new AnonymousClass7("", "" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getAggressiveExpansion() + Game.player.peaceTreaty.fAggressiveExpansion, 10), Images.aggressiveExpansion, CFG.PADDING + i5 + i20, height7, i21, i17, ImageManager.getImage(Images.gold).getWidth()));
            int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass8(Game.lang.get("EnforceDemands"), CFG.FONT_REGULAR, -1, i5, height8, i16, CFG.BUTTON_HEIGHT2, true, Images.warDemands));
            int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new Text_Title_v2(Game.lang.get("MapMode"), CFG.FONT_REGULAR_SMALL, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height9, i15 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int height11 = ImageManager.getImage(Images.provinces).getHeight() + (CFG.PADDING * 4);
            int i22 = (i16 - (CFG.PADDING * 5)) / 6;
            arrayList.add(new AnonymousClass9("", Images.mapModesCivs, i5, height10, i22, height11));
            int width4 = i5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass10("", Images.victoryPoints, width4, height10, i22, height11));
            int width5 = width4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass11("", Images.population, width5, height10, i22, height11));
            int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass12(kfGnwGN.YbzLSf, Game_Calendar.IMG_ECONOMY, width6, height10, i22, height11));
            int width7 = width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass13("", Images.goods, width7, height10, i22, height11));
            arrayList.add(new AnonymousClass14("", Images.religion, width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height10, i22, height11));
            int height12 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new Text_Title_v2(Game.lang.get("Demands"), CFG.FONT_REGULAR_SMALL, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height12, i15 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height13 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            arrayList.add(new AnonymousClass15(Game.lang.get("Score") + ": ", i5, height13, i16, i17));
            int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i23 = (int) ((i16 - (CFG.PADDING * 2)) * 0.6f);
            int i24 = (int) ((i16 - (CFG.PADDING * 2)) * 0.2f);
            int i25 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
            String str5 = "";
            arrayList.add(new AnonymousClass16(Game.lang.get("Gold") + ": ", (Game.player.peaceTreaty.demandGold > 0 ? "+" : "") + CFG.getPrecision2(Game.player.peaceTreaty.getGold_PerDemand(), 100), Images.gold, i5, height14, i23, i25, ImageManager.getImage(Images.gold).getWidth()));
            int width8 = i5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            arrayList.add(new AnonymousClass17("-", width8, height14, i24, i25, CFG.FONT_BOLD));
            arrayList.add(new AnonymousClass18("+", width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height14, i24, i25, CFG.FONT_BOLD));
            int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new AnonymousClass19(Game.lang.get("Brush"), Images.brush, i5, height15, i18, i19));
            float score_DemandWarReparations = Game.player.peaceTreaty.getScore_DemandWarReparations();
            arrayList2.add(new AnonymousClass20(Game.lang.get("WarReparations"), Images.gold, i5, height15, i18, i19, CFG.getPrecision2(score_DemandWarReparations, score_DemandWarReparations < 10.0f ? 100 : score_DemandWarReparations < 100.0f ? 10 : 1)));
            float score_DemandVassalization = Game.player.peaceTreaty.getScore_DemandVassalization();
            arrayList2.add(new AnonymousClass21(Game.lang.get(Game_Ages.getDemandVassalization()), Images.vassal, i5, height15, i18, i19, CFG.getPrecision2(score_DemandVassalization, score_DemandVassalization < 10.0f ? 100 : score_DemandVassalization < 100.0f ? 10 : 1)));
            float score_DemandGovernmentChange = Game.player.peaceTreaty.getScore_DemandGovernmentChange();
            arrayList2.add(new AnonymousClass22(Game.lang.get("GovernmentChange"), Images.government, i5, height15, i18, i19, CFG.getPrecision2(score_DemandGovernmentChange, score_DemandGovernmentChange < 10.0f ? 100 : score_DemandGovernmentChange < 100.0f ? 10 : 1)));
            float score_DemandReligionConversion = Game.player.peaceTreaty.getScore_DemandReligionConversion();
            arrayList2.add(new AnonymousClass23(Game.lang.get("DemandReligionConversion"), Images.religion, i5, height15, i18, i19, CFG.getPrecision2(score_DemandReligionConversion, score_DemandReligionConversion < 10.0f ? 100 : score_DemandReligionConversion < 100.0f ? 10 : 1)));
            float score_DemandHumiliate = Game.player.peaceTreaty.getScore_DemandHumiliate();
            arrayList2.add(new AnonymousClass24(Game.lang.get("Humiliate"), Images.insult, i5, height15, i18, i19, CFG.getPrecision2(score_DemandHumiliate, score_DemandHumiliate < 10.0f ? 100 : score_DemandHumiliate < 100.0f ? 10 : 1)));
            float score_DemandMilitaryAccess = Game.player.peaceTreaty.getScore_DemandMilitaryAccess();
            arrayList2.add(new AnonymousClass25(Game.lang.get("DemandMilitaryAccess"), Images.militaryAccess, i5, height15, i18, i19, CFG.getPrecision2(score_DemandMilitaryAccess, score_DemandMilitaryAccess < 10.0f ? 100 : score_DemandMilitaryAccess < 100.0f ? 10 : 1)));
            int size = arrayList2.size();
            int width9 = i5;
            int height16 = height15;
            int i26 = 0;
            while (i26 < size) {
                ((MenuElement) arrayList2.get(i26)).setPosX(width9);
                ((MenuElement) arrayList2.get(i26)).setPosY(height16);
                width9 += ((MenuElement) arrayList2.get(i26)).getWidth() + CFG.PADDING;
                arrayList.add((MenuElement) arrayList2.get(i26));
                int i27 = i26 + 1;
                if (i27 % 4 == 0 || i26 == size - 1) {
                    height16 += ((MenuElement) arrayList2.get(i26)).getHeight() + CFG.PADDING;
                    width9 = i5;
                }
                i26 = i27;
            }
            arrayList2.clear();
            String str6 = "DemandProvinces";
            arrayList.add(new Text_Title_v2(Game.lang.get("DemandProvinces"), CFG.FONT_REGULAR_SMALL, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height16, i15 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i28 = width9;
            arrayList.add(new AnonymousClass26(Game.lang.get("Suggest"), Images.provinces, i5, height17, (i16 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
            arrayList.add(new AnonymousClass27(Game.lang.get("Reset"), Images.provinces, CFG.PADDING + i5 + ((i16 - CFG.PADDING) / 2), height17, (i16 - CFG.PADDING) / 2, CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
            int height18 = height17 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i29 = Images.boxTitleBORDERWIDTH;
            int i30 = (int) ((i15 - Images.boxTitleBORDERWIDTH) * 0.25f);
            int i31 = (int) ((i16 - CFG.PADDING) * 0.75f);
            int i32 = CFG.PADDING;
            int i33 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
            arrayList.add(new Text_Title_v2(Game.lang.get("DemandSubjectTransfer"), CFG.FONT_REGULAR_SMALL, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height18, i15 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            ArrayList arrayList3 = new ArrayList();
            for (int i34 = 0; i34 < Game.getCiv(this.iCivID).diplomacy.iVassalsSize; i34++) {
                if (Game.getCiv(Game.getCiv(this.iCivID).diplomacy.lVassals.get(i34).c).getNumOfProvinces() > 0) {
                    arrayList3.add(Integer.valueOf(Game.getCiv(this.iCivID).diplomacy.lVassals.get(i34).c));
                }
            }
            String str7 = "None";
            if (arrayList3.size() > 0) {
                int i35 = i28;
                int height20 = height19;
                while (arrayList3.size() > 0) {
                    int size2 = arrayList3.size();
                    int i36 = 0;
                    for (int i37 = 1; i37 < size2; i37++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(((Integer) arrayList3.get(i36)).intValue()).getCivName(), Game.getCiv(((Integer) arrayList3.get(i37)).intValue()).getCivName())) {
                            i36 = i37;
                        }
                    }
                    ArrayList arrayList4 = arrayList3;
                    int i38 = i31;
                    String str8 = str6;
                    int i39 = i36;
                    arrayList.add(new AnonymousClass28(Game.getCiv(((Integer) arrayList3.get(i36)).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i35, height20, i31, i33, ((Integer) arrayList3.get(i36)).intValue(), false));
                    String str9 = str5;
                    arrayList.add(new AnonymousClass29(str9 + CFG.getPrecision2(Game.player.peaceTreaty.getScore_SubjectTransfer(((Integer) arrayList4.get(i39)).intValue()), 10), Images.victoryPoints, i35 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height20, i30, i33, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList4.get(i39)).intValue()));
                    height20 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    arrayList4.remove(i39);
                    arrayList3 = arrayList4;
                    i35 = i5;
                    str6 = str8;
                    i30 = i30;
                    i31 = i38;
                    str7 = str7;
                    str5 = str9;
                }
                i2 = i31;
                str = str6;
                str2 = str5;
                i3 = i30;
                str3 = str7;
                height2 = height20;
                i28 = i35;
            } else {
                i2 = i31;
                str = "DemandProvinces";
                str2 = str5;
                i3 = i30;
                str3 = "None";
                arrayList.add(new Text_StaticBG(Game.lang.get(str3), CFG.FONT_REGULAR, -1, i5, height19, i16, CFG.BUTTON_HEIGHT2));
                height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + height19;
            }
            arrayList.add(new Text_Title_v2(Game.lang.get("LiberateCivilization"), CFG.FONT_REGULAR_SMALL, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height2, i15 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            int height21 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + height2;
            List<Integer> civsPossibleToLiberate = PeaceTreaty.getCivsPossibleToLiberate(this.iCivID);
            if (civsPossibleToLiberate.size() > 0) {
                height3 = height21;
                while (civsPossibleToLiberate.size() > 0) {
                    int size3 = civsPossibleToLiberate.size();
                    int i40 = 0;
                    for (int i41 = 1; i41 < size3; i41++) {
                        if (CFG.compareAlphabetic_TwoString(Game.getCiv(civsPossibleToLiberate.get(i40).intValue()).getCivName(), Game.getCiv(civsPossibleToLiberate.get(i41).intValue()).getCivName())) {
                            i40 = i41;
                        }
                    }
                    int i42 = i15;
                    int i43 = i40;
                    int i44 = i5;
                    List<Integer> list = civsPossibleToLiberate;
                    arrayList.add(new AnonymousClass30(Game.getCiv(civsPossibleToLiberate.get(i40).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i28, height3, i2, i33, civsPossibleToLiberate.get(i40).intValue(), false));
                    String str10 = str2;
                    arrayList.add(new AnonymousClass31(str10 + CFG.getPrecision2(Game.player.peaceTreaty.getScore_LiberateCiv(this.iCivID, list.get(i43).intValue()), 10), Images.victoryPoints, i28 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height3, i3, i33, ImageManager.getImage(Images.gold).getWidth(), list.get(i43).intValue()));
                    height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    list.remove(i43);
                    civsPossibleToLiberate = list;
                    i5 = i44;
                    i28 = i5;
                    i15 = i42;
                    str2 = str10;
                }
                i = i15;
                i4 = i5;
                str4 = str2;
            } else {
                i = i15;
                i4 = i5;
                str4 = str2;
                arrayList.add(new Text_StaticBG(Game.lang.get(str3), CFG.FONT_REGULAR, -1, i4, height21, i16, CFG.BUTTON_HEIGHT2));
                height3 = height21 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            arrayList.add(new Text_Title_v2(Game.lang.get(str), CFG.FONT_REGULAR_SMALL, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
            height = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            ArrayList arrayList5 = new ArrayList();
            for (int i45 = 0; i45 < Game.getCiv(this.iCivID).getNumOfProvinces(); i45++) {
                arrayList5.add(Integer.valueOf(Game.getCiv(this.iCivID).getProvinceID(i45)));
            }
            while (arrayList5.size() > 0) {
                int size4 = arrayList5.size();
                int i46 = 0;
                for (int i47 = 1; i47 < size4; i47++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList5.get(i46)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList5.get(i47)).intValue()).getProvinceName())) {
                        i46 = i47;
                    }
                }
                arrayList.add(new AnonymousClass32(Game.getProvince(((Integer) arrayList5.get(i46)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i28, height, i2, i33, ((Integer) arrayList5.get(i46)).intValue(), false));
                arrayList.add(new AnonymousClass33(str4 + CFG.getPrecision2(Game.getProvince(((Integer) arrayList5.get(i46)).intValue()).fProvinceValue, 10), Images.victoryPoints, i28 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height, i3, i33, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList5.get(i46)).intValue()));
                height += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList5.remove(i46);
                i28 = i4;
            }
        }
        int iMin = Math.min(height, (CFG.GAME_HEIGHT - height4) - (CFG.PADDING * 3));
        int i48 = i;
        arrayList.add(new Empty(0, 0, i48, Math.max(height, iMin)));
        initMenu(new AnonymousClass34(Game.lang.get("PeaceTreaty"), Game.lang.get("MakeDemands"), false, false, Images.title500), otherMenuPosX_2, height4, i48, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        CFG.brushTool = false;
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PEACE_VIEW) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        if (!z) {
            CFG.brushTool = false;
        }
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PEACE_VIEW) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
    }
}
