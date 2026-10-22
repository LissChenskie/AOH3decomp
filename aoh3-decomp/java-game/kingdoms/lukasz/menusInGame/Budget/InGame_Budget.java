package aoc.kingdoms.lukasz.menusInGame.Budget;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.allianceHRE.HREManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Balance;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Balance_Spy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2;
import aoc.kingdoms.lukasz.menu_element.graph.Graph;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Graph;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Resource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.HttpResponseHeader;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Budget extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public int iActiveCivID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Title_Diplomacy {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_BudgetBalanceProvinces();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsBudget {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_BudgetIncomeTaxation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MonthlyIncomeTaxation"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.tax, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsBudget_Right2 {
        AnonymousClass11(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float incomeTaxation = Game.getCiv(InGame_Budget.this.iActiveCivID).getIncomeTaxation();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeTaxation") + ": ", (incomeTaxation > 0.0f ? "+" : "") + CFG.getPrecision2(incomeTaxation, 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                arrayList3.add(InGame_Budget.this.new ProvValue(Game.getCiv(Game.player.iCivID).getProvinceID(i), Game.getIncomePopulationTaxation(Game.getCiv(Game.player.iCivID).getProvinceID(i))));
            }
            int i2 = 0;
            while (arrayList3.size() > 0) {
                int i3 = i2 + 1;
                if (i2 >= 10) {
                    break;
                }
                int i4 = 0;
                for (int size = arrayList3.size() - 1; size > 0; size--) {
                    if (((ProvValue) arrayList3.get(size)).fValue > ((ProvValue) arrayList3.get(i4)).fValue) {
                        i4 = size;
                    }
                }
                if (((ProvValue) arrayList3.get(i4)).fValue == 0.0f) {
                    break;
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i3 + ". ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(((ProvValue) arrayList3.get(i4)).iProvinceID).getProvinceName() + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text((((ProvValue) arrayList3.get(i4)).fValue > 0.0f ? "+" : "") + CFG.getPrecision2(((ProvValue) arrayList3.get(i4)).fValue, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList3.remove(i4);
                i2 = i3;
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).getIncomeTaxation()) {
                float incomeTaxation = Game.getCiv(Game.player.iCivID).getIncomeTaxation();
                if (incomeTaxation >= 1000.0f) {
                    setText((incomeTaxation <= 0.0f ? "" : "+") + CFG.getNumberWithSpaces("" + ((int) incomeTaxation)));
                } else {
                    setText((incomeTaxation <= 0.0f ? "" : "+") + CFG.getPrecision2(incomeTaxation, 100));
                }
                this.lastValue = incomeTaxation;
                if (incomeTaxation == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (incomeTaxation > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsBudget {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_BudgetIncomeEconomy();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MonthlyIncomeEconomy"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonStatsBudget_Right2 {
        AnonymousClass13(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            int i;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float incomeEconomy = Game.getCiv(InGame_Budget.this.iActiveCivID).getIncomeEconomy();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", (incomeEconomy > 0.0f ? "+" : "") + CFG.getPrecision2(incomeEconomy, 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            ArrayList arrayList3 = new ArrayList();
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i2++) {
                arrayList3.add(InGame_Budget.this.new ProvValue(Game.getCiv(Game.player.iCivID).getProvinceID(i2), Game.getIncomeFromEconomy(Game.getCiv(Game.player.iCivID).getProvinceID(i2))));
            }
            int i3 = 0;
            while (true) {
                if (arrayList3.size() <= 0) {
                    i = 100;
                    break;
                }
                int i4 = i3 + 1;
                if (i3 < 10) {
                    int i5 = 0;
                    for (int size = arrayList3.size() - 1; size > 0; size--) {
                        if (((ProvValue) arrayList3.get(size)).fValue > ((ProvValue) arrayList3.get(i5)).fValue) {
                            i5 = size;
                        }
                    }
                    if (((ProvValue) arrayList3.get(i5)).fValue != 0.0f) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i4 + ". ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(((ProvValue) arrayList3.get(i5)).iProvinceID).getProvinceName() + ": ", CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text((((ProvValue) arrayList3.get(i5)).fValue > 0.0f ? "+" : "") + CFG.getPrecision2(((ProvValue) arrayList3.get(i5)).fValue, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        arrayList3.remove(i5);
                        i3 = i4;
                    }
                }
                i = 100;
                i3 = i4;
                break;
            }
            if (i3 > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProsperityTier") + ": ", CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fProsperity_AverageEconomy, i), Images.goldPositive, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).getIncomeEconomy()) {
                float incomeEconomy = Game.getCiv(Game.player.iCivID).getIncomeEconomy();
                if (incomeEconomy >= 1000.0f) {
                    setText((incomeEconomy <= 0.0f ? "" : "+") + CFG.getNumberWithSpaces("" + ((int) incomeEconomy)));
                } else {
                    setText((incomeEconomy <= 0.0f ? "" : "+") + CFG.getPrecision2(incomeEconomy, 100));
                }
                this.lastValue = incomeEconomy;
                if (incomeEconomy == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (incomeEconomy > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonStatsBudget {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_BudgetIncomeProduction();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("IncomeProduction"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonStatsBudget_Right2 {
        AnonymousClass15(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float incomeProduction = Game.getCiv(InGame_Budget.this.iActiveCivID).getIncomeProduction();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncomeProduction") + ": ", (incomeProduction > 0.0f ? "+" : "") + CFG.getPrecision2(incomeProduction, 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getResourceID() >= 0) {
                    arrayList3.add(InGame_Budget.this.new ProvValue(Game.getCiv(Game.player.iCivID).getProvinceID(i), ResourcesManager.getMonthlyIncome(Game.getCiv(Game.player.iCivID).getProvinceID(i), Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getResourceID())));
                }
            }
            if (arrayList3.size() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            int i2 = 0;
            while (arrayList3.size() > 0) {
                int i3 = i2 + 1;
                if (i2 >= 10) {
                    break;
                }
                int i4 = 0;
                for (int size = arrayList3.size() - 1; size > 0; size--) {
                    if (((ProvValue) arrayList3.get(size)).fValue > ((ProvValue) arrayList3.get(i4)).fValue) {
                        i4 = size;
                    }
                }
                if (((ProvValue) arrayList3.get(i4)).fValue == 0.0f) {
                    break;
                }
                if (Game.getProvince(((ProvValue) arrayList3.get(i4)).iProvinceID).getResourceID() >= 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i3 + ". ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(((ProvValue) arrayList3.get(i4)).iProvinceID).getProvinceName() + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text((((ProvValue) arrayList3.get(i4)).fValue > 0.0f ? "+" : "") + CFG.getPrecision2(((ProvValue) arrayList3.get(i4)).fValue, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, CFG.PADDING));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.getResourceName(Game.getProvince(((ProvValue) arrayList3.get(i4)).iProvinceID).getResourceID()), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Resource(Game.getProvince(((ProvValue) arrayList3.get(i4)).iProvinceID).getResourceID(), CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
                arrayList3.remove(i4);
                i2 = i3;
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).getIncomeProduction()) {
                float incomeProduction = Game.getCiv(Game.player.iCivID).getIncomeProduction();
                String str = TGqtTWl.tATahIlyn;
                if (incomeProduction >= 1000.0f) {
                    setText((incomeProduction <= 0.0f ? str : "+") + CFG.getNumberWithSpaces(str + ((int) incomeProduction)));
                } else {
                    setText((incomeProduction <= 0.0f ? str : "+") + CFG.getPrecision2(incomeProduction, 100));
                }
                this.lastValue = incomeProduction;
                if (incomeProduction == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (incomeProduction > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonStatsBudget {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_BudgetIncomeBuildings();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Income") + ": " + Game.lang.get("Buildings"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.buildings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonStatsBudget_Right2 {
        AnonymousClass17(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).getIncomeBuildings()) {
                float incomeBuildings = Game.getCiv(Game.player.iCivID).getIncomeBuildings();
                if (incomeBuildings >= 1000.0f) {
                    setText((incomeBuildings <= 0.0f ? "" : "+") + CFG.getNumberWithSpaces("" + ((int) incomeBuildings)));
                } else {
                    setText((incomeBuildings <= 0.0f ? "" : "+") + CFG.getPrecision2(incomeBuildings, 100));
                }
                this.lastValue = incomeBuildings;
                if (incomeBuildings == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (incomeBuildings > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonStatsBudget_Right2 {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, float f) {
            super(str, i, i2, i3, i4, f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", getText(), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (InGame_Budget.this.iActiveCivID == Game.getCiv(InGame_Budget.this.iActiveCivID).getPuppetOfCivID()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BaseValue") + ": ", CFG.getPrecision2(GameValues.civRank.CIV_BASE_INCOME[Game.getCiv(InGame_Budget.this.iActiveCivID).iCivRankID], 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Vassal") + ", " + Game.lang.get("BaseValue") + ": ", CFG.getPrecision2(GameValues.civRank.CIV_BASE_INCOME_VASSAL[Game.getCiv(InGame_Budget.this.iActiveCivID).iCivRankID], 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            }
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < Game.getCiv(InGame_Budget.this.iActiveCivID).getNumOfProvinces(); i++) {
                if (Game.getProvince(Game.getCiv(InGame_Budget.this.iActiveCivID).getProvinceID(i)).wonderID >= 0 && Game.getProvince(Game.getCiv(InGame_Budget.this.iActiveCivID).getProvinceID(i)).getWonderBuilt() && WondersManager.wonders.get(Game.getProvince(Game.getCiv(InGame_Budget.this.iActiveCivID).getProvinceID(i)).wonderID).MonthlyIncome != 0.0f) {
                    arrayList3.add(Integer.valueOf(Game.getCiv(InGame_Budget.this.iActiveCivID).getProvinceID(i)));
                }
            }
            if (arrayList3.size() != 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                    float f = WondersManager.wonders.get(Game.getProvince(((Integer) arrayList3.get(i2)).intValue()).wonderID).MonthlyIncome;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(WondersManager.wonders.get(Game.getProvince(((Integer) arrayList3.get(i2)).intValue()).wonderID).Name + ": ", CFG.FONT_BOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text((f > 0.0f ? "+" : "") + CFG.getPrecision2(f, 100), CFG.FONT_BOLD, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            try {
                if (Game.getCiv(InGame_Budget.this.iActiveCivID).ruler.rulerBonuses.MonthlyIncome != 0.0f) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.ideologiesManager.getIdeology(Game.getCiv(InGame_Budget.this.iActiveCivID).getIdeologyID()).RulerTitle + ", " + Game.lang.get("MonthlyIncome") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getCiv(InGame_Budget.this.iActiveCivID).ruler.rulerBonuses.MonthlyIncome > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(InGame_Budget.this.iActiveCivID).ruler.rulerBonuses.MonthlyIncome, 100), CFG.FONT_BOLD_SMALL, Game.getCiv(InGame_Budget.this.iActiveCivID).ruler.rulerBonuses.MonthlyIncome > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            if (Game.getCiv(InGame_Budget.this.iActiveCivID).fIncomeLord > 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game_Ages.getVassals()) + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getCiv(InGame_Budget.this.iActiveCivID).fIncomeLord > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(InGame_Budget.this.iActiveCivID).fIncomeLord, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            for (int i3 = 0; i3 < Game.getCiv(Game.player.iCivID).inAllianceSize; i3++) {
                if (Game.alliancesSpecial.get(Game.getCiv(Game.player.iCivID).inAlliance.get(i3).intValue()).iLeaderCivID == Game.player.iCivID && Game.alliancesSpecial.get(Game.getCiv(Game.player.iCivID).inAlliance.get(i3).intValue()).typeOfAlliance == 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game.alliancesSpecial.get(Game.getCiv(Game.player.iCivID).inAlliance.get(i3).intValue()).Name_Alliance) + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(HREManager.getIncome_Emperor(Game.getCiv(Game.player.iCivID).inAlliance.get(i3).intValue()), 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            if (Game.getCiv(InGame_Budget.this.iActiveCivID).getCapitalLevel() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(MQYGMkZOAcS.mTXjiY) + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getCapital_Income(InGame_Budget.this.iActiveCivID) <= 0.0f ? "" : "+") + CFG.getPrecision2(Game.getCapital_Income(InGame_Budget.this.iActiveCivID), 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonStatsBudget_Right2 {
        AnonymousClass19(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth) {
                float f = Game.getCiv(Game.player.iCivID).fTotalExpensesPerMonth;
                if (f >= 1000.0f) {
                    setText((f <= 0.0f ? "" : "-") + CFG.getNumberWithSpaces("" + ((int) f)));
                } else {
                    setText((f <= 0.0f ? "" : "-") + CFG.getPrecision2(f, 100));
                }
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Title_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_BudgetBalanceProvinces();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$20, reason: invalid class name */
    class AnonymousClass20 extends ButtonStatsBudget_Icon {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$20$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        AnonymousClass20(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(InGame_Budget.this.iActiveCivID).updateMilitaryLevel(0);
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Budget.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Budget.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            Color color2;
            Color color3;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DecreasedPay"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMaintenance") + ": ", "" + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_ARMY_MAINTENANCE[0] * 100.0f, 100) + "%", Images.armyMaintenance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str = Game.lang.get("ManpowerPerMonth") + ": ";
            String str2 = (GameValues.budget.MILITARY_LEVEL_MANPOWER[0] > 0.0f ? TGqtTWl.iwtlJQxdyibtzWL : "") + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_MANPOWER[0] * 100.0f, 100) + "%";
            int i = Images.armyMaintenance;
            int i2 = CFG.FONT_REGULAR_SMALL;
            int i3 = CFG.FONT_BOLD_SMALL;
            Color color4 = Colors.HOVER_LEFT;
            if (GameValues.budget.MILITARY_LEVEL_MANPOWER[0] == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = GameValues.budget.MILITARY_LEVEL_MANPOWER[0] > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color4, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str3 = Game.lang.get("MoraleOfArmy") + ": ";
            String str4 = "" + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_MORALE[0] * 100.0f, 100) + "%";
            int i4 = Images.morale;
            int i5 = CFG.FONT_REGULAR_SMALL;
            int i6 = CFG.FONT_BOLD_SMALL;
            Color color5 = Colors.HOVER_LEFT;
            if (GameValues.budget.MILITARY_LEVEL_MORALE[0] == 0.0f) {
                color2 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color2 = GameValues.budget.MILITARY_LEVEL_MORALE[0] > 0.99f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str3, str4, i4, i5, i6, color5, color2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str5 = Game.lang.get("ReinforcementSpeed") + ": ";
            String str6 = "" + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_REINFORCE_SPEED[0] * 100.0f, 100) + "%";
            int i7 = Game_Calendar.IMG_MANPOWER_TIME;
            int i8 = CFG.FONT_REGULAR_SMALL;
            int i9 = CFG.FONT_BOLD_SMALL;
            Color color6 = Colors.HOVER_LEFT;
            if (GameValues.budget.MILITARY_LEVEL_REINFORCE_SPEED[0] == 0.0f) {
                color3 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color3 = GameValues.budget.MILITARY_LEVEL_REINFORCE_SPEED[0] > 0.99f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str5, str6, i7, i8, i9, color6, color3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon
        public boolean isLeveLActive() {
            return Game.getCiv(InGame_Budget.this.iActiveCivID).getMilitaryLevel() == 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonStatsBudget_Icon {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$21$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        AnonymousClass21(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(InGame_Budget.this.iActiveCivID).updateMilitaryLevel(1);
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Budget.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Budget.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            Color color2;
            Color color3;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Default"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMaintenance") + ": ", "" + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_ARMY_MAINTENANCE[1] * 100.0f, 100) + "%", Images.armyMaintenance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str = Game.lang.get("ManpowerPerMonth") + ": ";
            String str2 = (GameValues.budget.MILITARY_LEVEL_MANPOWER[1] > 0.0f ? "+" : "") + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_MANPOWER[1] * 100.0f, 100) + "%";
            int i = Images.armyMaintenance;
            int i2 = CFG.FONT_REGULAR_SMALL;
            int i3 = CFG.FONT_BOLD_SMALL;
            Color color4 = Colors.HOVER_LEFT;
            if (GameValues.budget.MILITARY_LEVEL_MANPOWER[1] == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = GameValues.budget.MILITARY_LEVEL_MANPOWER[1] > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color4, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str3 = Game.lang.get("MoraleOfArmy") + ": ";
            String str4 = "" + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_MORALE[1] * 100.0f, 100) + "%";
            int i4 = Images.morale;
            int i5 = CFG.FONT_REGULAR_SMALL;
            int i6 = CFG.FONT_BOLD_SMALL;
            Color color5 = Colors.HOVER_LEFT;
            if (GameValues.budget.MILITARY_LEVEL_MORALE[1] == 0.0f) {
                color2 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color2 = GameValues.budget.MILITARY_LEVEL_MORALE[1] > 0.99f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str3, str4, i4, i5, i6, color5, color2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str5 = Game.lang.get("ReinforcementSpeed") + ": ";
            String str6 = "" + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_REINFORCE_SPEED[1] * 100.0f, 100) + "%";
            int i7 = Game_Calendar.IMG_MANPOWER_TIME;
            int i8 = CFG.FONT_REGULAR_SMALL;
            int i9 = CFG.FONT_BOLD_SMALL;
            Color color6 = Colors.HOVER_LEFT;
            if (GameValues.budget.MILITARY_LEVEL_REINFORCE_SPEED[1] == 0.0f) {
                color3 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color3 = GameValues.budget.MILITARY_LEVEL_REINFORCE_SPEED[1] > 0.99f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str5, str6, i7, i8, i9, color6, color3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_1;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon
        public boolean isLeveLActive() {
            return Game.getCiv(InGame_Budget.this.iActiveCivID).getMilitaryLevel() == 1;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$22, reason: invalid class name */
    class AnonymousClass22 extends ButtonStatsBudget_Icon {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$22$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return DiplomacyManager.COLOR_WAR;
            }
        }

        AnonymousClass22(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(InGame_Budget.this.iActiveCivID).updateMilitaryLevel(2);
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Budget.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Budget.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            Color color2;
            Color color3;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("IncreasedPay"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMaintenance") + ": ", "+" + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_ARMY_MAINTENANCE[2] * 100.0f, 100) + "%", Images.armyMaintenance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str = Game.lang.get("ManpowerPerMonth") + ": ";
            String str2 = (GameValues.budget.MILITARY_LEVEL_MANPOWER[2] <= 0.0f ? "" : "+") + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_MANPOWER[2] * 100.0f, 100) + "%";
            int i = Images.armyMaintenance;
            int i2 = CFG.FONT_REGULAR_SMALL;
            int i3 = CFG.FONT_BOLD_SMALL;
            Color color4 = Colors.HOVER_LEFT;
            if (GameValues.budget.MILITARY_LEVEL_MANPOWER[2] == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = GameValues.budget.MILITARY_LEVEL_MANPOWER[2] > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color4, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str3 = Game.lang.get("MoraleOfArmy") + ": ";
            String str4 = "" + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_MORALE[2] * 100.0f, 100) + "%";
            int i4 = Images.morale;
            int i5 = CFG.FONT_REGULAR_SMALL;
            int i6 = CFG.FONT_BOLD_SMALL;
            Color color5 = Colors.HOVER_LEFT;
            if (GameValues.budget.MILITARY_LEVEL_MORALE[2] == 0.0f) {
                color2 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color2 = GameValues.budget.MILITARY_LEVEL_MORALE[2] > 0.99f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str3, str4, i4, i5, i6, color5, color2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str5 = Game.lang.get("ReinforcementSpeed") + ": ";
            String str6 = "" + CFG.getPrecision2(GameValues.budget.MILITARY_LEVEL_REINFORCE_SPEED[2] * 100.0f, 100) + "%";
            int i7 = Game_Calendar.IMG_MANPOWER_TIME;
            int i8 = CFG.FONT_REGULAR_SMALL;
            int i9 = CFG.FONT_BOLD_SMALL;
            Color color6 = Colors.HOVER_LEFT;
            if (GameValues.budget.MILITARY_LEVEL_REINFORCE_SPEED[2] == 0.0f) {
                color3 = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color3 = GameValues.budget.MILITARY_LEVEL_REINFORCE_SPEED[2] > 0.99f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str5, str6, i7, i8, i9, color6, color3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            float f;
            if (!isLeveLActive()) {
                super.drawText(spriteBatch, i, i2, z);
                return;
            }
            if (isLeveLActive()) {
                f = 1.0f;
            } else {
                f = getIsHovered() ? 0.65f : 0.15f;
            }
            spriteBatch.setColor(1.0f, 1.0f, 1.0f, f);
            ImageManager.getImage(Images.morale).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.morale).getWidth() / 2)) + i, getPosY() + ((getHeight() - ImageManager.getImage(Images.morale).getHeight()) / 2) + i2, ImageManager.getImage(Images.morale).getWidth(), ImageManager.getImage(Images.morale).getHeight());
            spriteBatch.setColor(Color.WHITE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_2;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon
        public boolean isLeveLActive() {
            return Game.getCiv(InGame_Budget.this.iActiveCivID).getMilitaryLevel() == 2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$23, reason: invalid class name */
    class AnonymousClass23 extends ButtonStatsBudget_Icon {
        AnonymousClass23(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(InGame_Budget.this.iActiveCivID).updateResearchLevel(0);
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new ClickAnimation(getPosX() + (getWidth() / 2) + InGame_Budget.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Budget.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DecreasedPay"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Research") + ": ", "" + CFG.getPrecision2(GameValues.budget.RESEARCH_LEVEL_RESEARCH[0] * 100.0f, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchCost") + ": ", "" + CFG.getPrecision2(GameValues.budget.RESEARCH_LEVEL_COST[0] * 100.0f, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon
        public boolean isLeveLActive() {
            return Game.getCiv(InGame_Budget.this.iActiveCivID).getResearchLevel() == 0;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$24, reason: invalid class name */
    class AnonymousClass24 extends ButtonStatsBudget_Icon {
        AnonymousClass24(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(InGame_Budget.this.iActiveCivID).updateResearchLevel(1);
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new ClickAnimation(getPosX() + (getWidth() / 2) + InGame_Budget.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Budget.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Default"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(MQYGMkZOAcS.dtirKGgIrYeRmmG) + ": ", "+" + CFG.getPrecision2(GameValues.budget.RESEARCH_LEVEL_RESEARCH[1] * 100.0f, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchCost") + ": ", "+" + CFG.getPrecision2(GameValues.budget.RESEARCH_LEVEL_COST[1] * 100.0f, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_1;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon
        public boolean isLeveLActive() {
            return Game.getCiv(InGame_Budget.this.iActiveCivID).getResearchLevel() == 1;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$25, reason: invalid class name */
    class AnonymousClass25 extends ButtonStatsBudget_Icon {
        AnonymousClass25(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(InGame_Budget.this.iActiveCivID).updateResearchLevel(2);
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new ClickAnimation(getPosX() + (getWidth() / 2) + InGame_Budget.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Budget.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("IncreasedPay"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Research") + ": ", "+" + CFG.getPrecision2(GameValues.budget.RESEARCH_LEVEL_RESEARCH[2] * 100.0f, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchCost") + ": ", "+" + CFG.getPrecision2(GameValues.budget.RESEARCH_LEVEL_COST[2] * 100.0f, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            float f;
            if (!isLeveLActive()) {
                super.drawText(spriteBatch, i, i2, z);
                return;
            }
            if (isLeveLActive()) {
                f = 1.0f;
            } else {
                f = getIsHovered() ? 0.65f : 0.15f;
            }
            spriteBatch.setColor(1.0f, 1.0f, 1.0f, f);
            ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).getWidth() / 2)) + i, getPosY() + ((getHeight() - ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).getHeight()) / 2) + i2, ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).getWidth(), ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).getHeight());
            spriteBatch.setColor(Color.WHITE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_2;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon
        public boolean isLeveLActive() {
            return Game.getCiv(InGame_Budget.this.iActiveCivID).getResearchLevel() == 2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$26, reason: invalid class name */
    class AnonymousClass26 extends ButtonStatsBudget_Right2 {
        AnonymousClass26(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(InGame_Budget.this.iActiveCivID).fArmyMaintenance) {
                float f = Game.getCiv(InGame_Budget.this.iActiveCivID).fArmyMaintenance;
                if (f >= 1000.0f) {
                    setText((f <= 0.0f ? "" : "-") + CFG.getNumberWithSpaces("" + ((int) f)));
                } else {
                    setText((f <= 0.0f ? "" : "-") + CFG.getPrecision2(f, 100));
                }
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$27, reason: invalid class name */
    class AnonymousClass27 extends ButtonStatsBudget_Right2 {
        AnonymousClass27(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ResearchCost") + ": ", CFG.getPrecision2(Game.getResearchCost(InGame_Budget.this.iActiveCivID), 100), Images.goldNegative, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(lOow.iFitYENO + Game.lang.get("ResearchPerMonth") + " * " + CFG.getPrecision2(GameValues.research.RESEARCH_MAINTENANCE_COST, 100), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2, false));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ResearchPerMonth") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(Game.getCiv(InGame_Budget.this.iActiveCivID).fResearchPerMonth, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getResearchCost(InGame_Budget.this.iActiveCivID)) {
                float researchCost = Game.getResearchCost(InGame_Budget.this.iActiveCivID);
                if (researchCost >= 1000.0f) {
                    setText((researchCost <= 0.0f ? "" : "-") + CFG.getNumberWithSpaces("" + ((int) researchCost)));
                } else {
                    setText((researchCost <= 0.0f ? "" : "-") + CFG.getPrecision2(researchCost, 100));
                }
                this.lastValue = researchCost;
                if (researchCost == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (researchCost > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$28, reason: invalid class name */
    class AnonymousClass28 extends ButtonStatsBudget {
        AnonymousClass28(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_BudgetExpensesMaintenance();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ProvinceMaintenance"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$29, reason: invalid class name */
    class AnonymousClass29 extends ButtonStatsBudget_Right2 {
        AnonymousClass29(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float provinceMaintenance = Game.getCiv(InGame_Budget.this.iActiveCivID).getProvinceMaintenance();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceMaintenance") + ": ", (provinceMaintenance > 0.0f ? "-" : "") + CFG.getPrecision2(provinceMaintenance, 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i++) {
                arrayList3.add(InGame_Budget.this.new ProvValue(Game.getCiv(Game.player.iCivID).getProvinceID(i), Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getProvinceMaintenance()));
            }
            int i2 = 0;
            while (arrayList3.size() > 0) {
                int i3 = i2 + 1;
                if (i2 >= 10) {
                    break;
                }
                int i4 = 0;
                for (int size = arrayList3.size() - 1; size > 0; size--) {
                    if (((ProvValue) arrayList3.get(size)).fValue > ((ProvValue) arrayList3.get(i4)).fValue) {
                        i4 = size;
                    }
                }
                if (((ProvValue) arrayList3.get(i4)).fValue == 0.0f) {
                    break;
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + i3 + ". ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(((ProvValue) arrayList3.get(i4)).iProvinceID).getProvinceName() + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text((((ProvValue) arrayList3.get(i4)).fValue > 0.0f ? "-" : "") + CFG.getPrecision2(((ProvValue) arrayList3.get(i4)).fValue, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList3.remove(i4);
                i2 = i3;
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(InGame_Budget.this.iActiveCivID).getProvinceMaintenance()) {
                float provinceMaintenance = Game.getCiv(InGame_Budget.this.iActiveCivID).getProvinceMaintenance();
                String str = uiwPYaNhJS.hfeVoCxf;
                if (provinceMaintenance >= 1000.0f) {
                    setText((provinceMaintenance <= 0.0f ? str : "-") + CFG.getNumberWithSpaces(str + ((int) provinceMaintenance)));
                } else {
                    setText((provinceMaintenance <= 0.0f ? str : "-") + CFG.getPrecision2(provinceMaintenance, 100));
                }
                this.lastValue = provinceMaintenance;
                if (provinceMaintenance == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (provinceMaintenance > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsBudget_Balance_Spy {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(InGame_Budget.this.iActiveCivID, CivilizationRanking.getCivilizationRank_Name(Game.getCiv(InGame_Budget.this.iActiveCivID).iCivRankID)));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float f = Game.getCiv(InGame_Budget.this.iActiveCivID).fGold;
            String str = Game.lang.get("Treasury") + ": ";
            String str2 = "" + CFG.getPrecision2(f, 100);
            int i = Images.gold;
            int i2 = CFG.FONT_REGULAR;
            int i3 = CFG.FONT_BOLD;
            Color color2 = Colors.HOVER_LEFT;
            if (f == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = f > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color2, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Balance
        public String getText2() {
            String precision2;
            if (this.lastValue != Game.getCiv(InGame_Budget.this.iActiveCivID).fGold) {
                float f = Game.getCiv(InGame_Budget.this.iActiveCivID).fGold;
                StringBuilder sb = new StringBuilder();
                if (f >= 100000.0f) {
                    precision2 = CFG.getShortNumber((int) f);
                } else if (f >= 1000.0f) {
                    precision2 = CFG.getNumberWithSpaces("" + ((int) f));
                } else {
                    precision2 = CFG.getPrecision2(f, f >= 100.0f ? 10 : 100);
                }
                setText2(sb.append(precision2).append(" / ").append(CFG.getNumberWithSpaces("" + CFG.getPrecision2(Game.getMaxAmountOfGold(Game.player.iCivID), 1))).toString());
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            }
            return this.sText2;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$30, reason: invalid class name */
    class AnonymousClass30 extends ButtonStatsBudget {
        AnonymousClass30(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_BudgetExpensesBuildingsMaintenance();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("BuildingsMaintenance"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.buildings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$31, reason: invalid class name */
    class AnonymousClass31 extends ButtonStatsBudget_Right2 {
        AnonymousClass31(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            float buildingsMaintenance = Game.getCiv(InGame_Budget.this.iActiveCivID).getBuildingsMaintenance();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BuildingsMaintenance") + ": ", (buildingsMaintenance > 0.0f ? "-" : "") + CFG.getPrecision2(buildingsMaintenance, 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).getBuildingsMaintenance()) {
                float buildingsMaintenance = Game.getCiv(Game.player.iCivID).getBuildingsMaintenance();
                if (buildingsMaintenance >= 1000.0f) {
                    setText((buildingsMaintenance <= 0.0f ? "" : "-") + CFG.getNumberWithSpaces("" + ((int) buildingsMaintenance)));
                } else {
                    setText((buildingsMaintenance <= 0.0f ? "" : "-") + CFG.getPrecision2(buildingsMaintenance, 100));
                }
                this.lastValue = buildingsMaintenance;
                if (buildingsMaintenance == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (buildingsMaintenance > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$32, reason: invalid class name */
    class AnonymousClass32 extends ButtonStatsBudget {
        AnonymousClass32(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_TakeLoanRepay()) {
                Game.menuManager.setVisibleInGame_TakeLoanRepay(false);
            } else {
                Game.menuManager.rebuildInGame_TakeLoanRepay();
                Game.menuManager.setVisibleInGame_TakeLoan(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Loans") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).iLoansSize, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MaximumNumberOfLoans") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getLoanMaxNumber(Game.player.iCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).iLoansSize > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                for (int i = 0; i < Game.getCiv(Game.player.iCivID).iLoansSize; i++) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Total") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).loans.get(i).getLoanValueLeft(), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).loans.get(i).fLoanValue, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.loan, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("EveryMonth") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).loans.get(i).fInterestPerMonth, 100), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(HttpResponseHeader.Expires) + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game_Calendar.getNumOfDates_ByTurnID(Game.getCiv(Game.player.iCivID).loans.get(i).iExpires_TurnID), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.time, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    if (i != Game.getCiv(Game.player.iCivID).iLoansSize - 1) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Line());
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                }
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$33, reason: invalid class name */
    class AnonymousClass33 extends ButtonStatsBudget_Right2 {
        AnonymousClass33(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).fLoansCost) {
                float f = Game.getCiv(Game.player.iCivID).fLoansCost;
                String str = QefTqRjwAJmEDy.MYWnlpLzdWlx;
                if (f >= 1000.0f) {
                    StringBuilder sb = new StringBuilder();
                    if (f <= 0.005f) {
                        str = "";
                    }
                    setText(sb.append(str).append(CFG.getNumberWithSpaces("" + ((int) f))).toString());
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    if (f <= 0.005f) {
                        str = "";
                    }
                    setText(sb2.append(str).append(CFG.getPrecision2(f, 100)).toString());
                }
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$34, reason: invalid class name */
    class AnonymousClass34 extends ButtonStatsBudget {
        AnonymousClass34(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("MilitaryAcademy"));
            String str = TGqtTWl.mzNWErbXIPdHOo;
            arrayList2.add(new MenuElement_HoverElement_Type_Text(sbAppend.append(str).toString(), CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getMilitaryAcademy_MaintenanceCost(InGame_Budget.this.iActiveCivID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MilitaryAcademyForGenerals") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getMilitaryAcademyForGenerals_MaintenanceCost(InGame_Budget.this.iActiveCivID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).fExpenseVassal > 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game_Ages.getLord()) + str, CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getCiv(Game.player.iCivID).fExpenseVassal > 0.0f ? TGqtTWl.xmOO : "") + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fExpenseVassal, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$35, reason: invalid class name */
    class AnonymousClass35 extends ButtonStatsBudget_Right2 {
        AnonymousClass35(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", getText(), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MilitaryAcademy") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getMilitaryAcademy_MaintenanceCost(InGame_Budget.this.iActiveCivID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(IwYCCQBuFGwl.ptggOcLftetTRy) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getMilitaryAcademyForGenerals_MaintenanceCost(InGame_Budget.this.iActiveCivID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getCiv(Game.player.iCivID).fExpenseVassal > 0.0f) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(Game_Ages.getLord()) + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text((Game.getCiv(Game.player.iCivID).fExpenseVassal > 0.0f ? "-" : "") + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fExpenseVassal, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).fLoansCost) {
                float additionalExpenses = Game.getCiv(InGame_Budget.this.iActiveCivID).getAdditionalExpenses();
                if (additionalExpenses >= 1000.0f) {
                    setText((additionalExpenses <= 0.005f ? "" : "-") + CFG.getNumberWithSpaces("" + ((int) additionalExpenses)));
                } else {
                    setText((additionalExpenses <= 0.005f ? "" : "-") + CFG.getPrecision2(additionalExpenses, 100));
                }
                this.lastValue = additionalExpenses;
                if (additionalExpenses == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (additionalExpenses > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$36, reason: invalid class name */
    class AnonymousClass36 extends ButtonStatsBudget {
        AnonymousClass36(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).reduceInflation()) {
                Game.player.currSituation.updateCurrentSituation();
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("InflationReduced"), Game.lang.get("Inflation") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getInflation() * 100.0f, 100) + "%");
                InGame_Info.imgID = Images.infoCrown;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Budget.getHoverInflation(InGame_Budget.this.iActiveCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$37, reason: invalid class name */
    class AnonymousClass37 extends ButtonStatsBudget_Right2 {
        AnonymousClass37(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).reduceInflation()) {
                Game.player.currSituation.updateCurrentSituation();
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("InflationReduced"), Game.lang.get("Inflation") + ": " + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getInflation() * 100.0f, 100) + "%");
                InGame_Info.imgID = Images.infoCrown;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Budget.getHoverInflation(InGame_Budget.this.iActiveCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).getInflation()) {
                float inflation = Game.getCiv(Game.player.iCivID).getInflation();
                setText((inflation > 0.0f ? "+" : "") + CFG.getPrecision2(100.0f * inflation, 100) + "%");
                this.lastValue = inflation;
                if (inflation == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (inflation > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$38, reason: invalid class name */
    class AnonymousClass38 extends Text_Title_v2_TextLR {
        AnonymousClass38(String str, int i, int i2, int i3, int i4, int i5, int i6, String str2) {
            super(str, i, i2, i3, i4, i5, i6, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Budget.this.getHoverProsperity(Game.player.iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR
        protected Color getColor2(boolean z) {
            return Colors.getEconomyColor((int) (Game.getCiv(Game.player.iCivID).fProsperity_AverageEconomy / GameValues.prosperity.PROSPERITY_INCOME), 1.0f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$39, reason: invalid class name */
    class AnonymousClass39 extends ButtonStatsBudget {
        AnonymousClass39(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Budget.this.getHoverProsperity(Game.player.iCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsBudget_Balance {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5) {
            super(str, str2, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_BudgetBalanceProvinces();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            Color color;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Balance") + ": " + Game.lang.get("Provinces"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            float balance = Game.getCiv(Game.player.iCivID).getBalance();
            String str = Game.lang.get("Balance") + ": ";
            String str2 = "" + (balance > 0.0f ? "+" : "") + CFG.getPrecision2(balance, 100);
            int i = Images.gold;
            int i2 = CFG.FONT_REGULAR;
            int i3 = CFG.FONT_BOLD;
            Color color2 = Colors.HOVER_LEFT;
            if (balance == 0.0f) {
                color = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
            } else {
                color = balance > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i, i2, i3, color2, color));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                arrayList2.add(new MenuElement_HoverElement_Type_Empty());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Graph(Game.lang.get("Balance"), Graph.GraphType.PLAYER_BALANCE, true));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$40, reason: invalid class name */
    class AnonymousClass40 extends ButtonStatsBudget_Right2 {
        AnonymousClass40(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Budget.this.getHoverProsperity(Game.player.iCivID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorPositive(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$41, reason: invalid class name */
    class AnonymousClass41 extends ButtonStatsBudget {
        AnonymousClass41(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Budget.actionTakeLoan();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("TakeLoan"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Loan") + ": ", CFG.getPrecision2(Game.getLoanValue(Game.player.iCivID), 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$42, reason: invalid class name */
    class AnonymousClass42 extends ButtonStatsBudget_Right2 {
        int currentNum;

        AnonymousClass42(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
            this.currentNum = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Budget.actionTakeLoan();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Right2, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("TakeLoan"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Loan") + ": ", CFG.getPrecision2(Game.getLoanValue(Game.player.iCivID), 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Loans") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).iLoansSize, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MaximumNumberOfLoans") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getLoanMaxNumber(Game.player.iCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.currentNum != Game.getCiv(Game.player.iCivID).iLoansSize) {
                this.currentNum = Game.getCiv(Game.player.iCivID).iLoansSize;
                setText("" + Game.getCiv(Game.player.iCivID).iLoansSize + " / " + Game.getLoanMaxNumber(Game.player.iCivID));
            }
            return super.getTextToDraw();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.currentNum = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$43, reason: invalid class name */
    class AnonymousClass43 extends ButtonGame {
        AnonymousClass43(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_TakeLoanRepay()) {
                Game.menuManager.setVisibleInGame_TakeLoanRepay(false);
            } else {
                Game.menuManager.rebuildInGame_TakeLoanRepay();
                Game.menuManager.setVisibleInGame_TakeLoan(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(IwYCCQBuFGwl.KHSzyqVoYIoL), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Loans") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).iLoansSize, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MaximumNumberOfLoans") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getLoanMaxNumber(Game.player.iCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$44, reason: invalid class name */
    class AnonymousClass44 extends ButtonGame {
        AnonymousClass44(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Budget.actionTakeLoan();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("TakeLoan"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Loan"));
            String str = lJxd.OlgtdvP;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(sbAppend.append(str).toString(), CFG.getPrecision2(Game.getLoanValue(Game.player.iCivID), 100), Images.gold, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Loans") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).iLoansSize, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("MaximumNumberOfLoans") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getLoanMaxNumber(Game.player.iCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$45, reason: invalid class name */
    class AnonymousClass45 extends MenuTitleIMG_FlagCenter {
        AnonymousClass45(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return InGame_Budget.this.iActiveCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Budget.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsBudget_Right2 {
        AnonymousClass5(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(InGame_Budget.this.iActiveCivID).civBonuses.MonthlyIncome) {
                float f = Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(InGame_Budget.this.iActiveCivID).civBonuses.MonthlyIncome;
                if (f >= 1000.0f) {
                    setText((f <= 0.0f ? "" : "+") + CFG.getNumberWithSpaces("" + ((int) f)));
                } else {
                    setText((f <= 0.0f ? "" : "+") + CFG.getPrecision2(f, 100));
                }
                this.lastValue = f;
                if (f == 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEUTRAL;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE;
                } else if (f > 0.0f) {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_POSITIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_POSITIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE;
                } else {
                    this.nColor = Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
                    this.nColorH = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_HOVER;
                    this.nColorA = Colors.COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE;
                }
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsBudget {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_BudgetIncomeProvinces();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Income") + ": " + Game.lang.get("Provinces"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsBudget_Icon {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$7$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_GOLD;
            }
        }

        AnonymousClass7(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).updateTaxationLevel(0);
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Budget.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Budget.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon
        public boolean isLeveLActive() {
            return this.iLevel == Game.getCiv(Game.player.iCivID).getTaxationLevel();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsBudget_Icon {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$8$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_GOLD;
            }
        }

        AnonymousClass8(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).updateTaxationLevel(1);
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Budget.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Budget.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_1;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon
        public boolean isLeveLActive() {
            return this.iLevel == Game.getCiv(Game.player.iCivID).getTaxationLevel();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsBudget_Icon {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget$9$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_GOLD;
            }
        }

        AnonymousClass9(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).updateTaxationLevel(2);
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Budget.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Budget.this.getMenuPosY(), getWidth(), getHeight()));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            float f;
            if (!isLeveLActive()) {
                super.drawText(spriteBatch, i, i2, z);
                return;
            }
            if (isLeveLActive()) {
                f = 1.0f;
            } else {
                f = getIsHovered() ? 0.65f : 0.15f;
            }
            spriteBatch.setColor(1.0f, 1.0f, 1.0f, f);
            ImageManager.getImage(Images.revolutionRisk).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.revolutionRisk).getWidth() / 2)) + i, getPosY() + ((getHeight() - ImageManager.getImage(Images.revolutionRisk).getHeight()) / 2) + i2, ImageManager.getImage(Images.revolutionRisk).getWidth(), ImageManager.getImage(Images.revolutionRisk).getHeight());
            spriteBatch.setColor(Color.WHITE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_GOLD_LEVEL_2;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget_Icon
        public boolean isLeveLActive() {
            return this.iLevel == Game.getCiv(Game.player.iCivID).getTaxationLevel();
        }
    }

    public class ProvValue {
        public float fValue;
        public int iProvinceID;

        public ProvValue(int i, float f) {
            this.iProvinceID = i;
            this.fValue = f;
        }
    }

    public InGame_Budget() {
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title500).getHeight();
        int i2 = CFG.PADDING;
        this.iActiveCivID = Game.player.iCivID;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i3 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        int i4 = (CFG.BUTTON_HEIGHT * 4) / 5;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "+999 999");
        int i5 = ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 4) + (CFG.PADDING / 2);
        int i6 = width - (i * 2);
        int i7 = (i6 - CFG.PADDING) - i5;
        arrayList.add(new AnonymousClass1(Game.lang.get("Budget"), Images.boxTitleBORDERWIDTH, 0, (width - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, true));
        arrayList.add(new AnonymousClass2(Game.lang.get("Provinces"), Images.boxTitleBORDERWIDTH + ((width - (Images.boxTitleBORDERWIDTH * 2)) / 2), 0, (width - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, false));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        arrayList.add(new AnonymousClass3(Game.lang.get("Treasury") + ": ", "" + CFG.getPrecision2(Game.getCiv(this.iActiveCivID).fGold, 100), Images.gold, i, height2, i6, Math.max(CFG.TEXT_HEIGHT, ImageManager.getImage(Images.gold).getHeight()) + (CFG.PADDING * 6)));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float balance = Game.getCiv(this.iActiveCivID).getBalance();
        arrayList.add(new AnonymousClass4(Game.lang.get("Balance") + ": ", (balance > 0.0f ? "+" : "") + CFG.getPrecision2(balance, 100), Images.gold, i, height3, i6, CFG.TEXT_HEIGHT + (CFG.PADDING * 10)));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i8 = i + i7;
        arrayList.add(new AnonymousClass5("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fTotalIncomePerMonth + Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome, 100), i8 + CFG.PADDING, height4 + 1 + ((int) Math.ceil(((CFG.TEXT_HEIGHT + (CFG.PADDING * 6)) - i3) / 2.0f)), i5, i3));
        arrayList.add(new Text_Title_v2(Game.lang.get("MonthlyIncome"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height4, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i9 = i4 * 3;
        arrayList.add(new AnonymousClass6(Game.lang.get("TaxationLevel"), Images.tax, i, height5, (i6 - (CFG.PADDING * 3)) - i9, i4, width2, true));
        int width3 = i + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass7(Images.gold, width3, height5, i4, i4, 0));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass8(Images.gold, width4, height5, i4, i4, 1));
        arrayList.add(new AnonymousClass9(Images.gold, width4 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height5, i4, i4, 2));
        arrayList.get(arrayList.size() - 1).getWidth();
        int i10 = CFG.PADDING;
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float incomeTaxation = Game.getCiv(this.iActiveCivID).getIncomeTaxation();
        arrayList.add(new AnonymousClass10(Game.lang.get("IncomeTaxation"), Images.tax, i, height6, i7, i3, width2, false));
        arrayList.add(new AnonymousClass11((incomeTaxation > 0.0f ? "+" : "") + CFG.getPrecision2(incomeTaxation, 100), i8 + CFG.PADDING, height6, i5, i3));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float incomeEconomy = Game.getCiv(this.iActiveCivID).getIncomeEconomy();
        arrayList.add(new AnonymousClass12(Game.lang.get("Economy"), Game_Calendar.IMG_ECONOMY, i, height7, i7, i3, width2, true));
        arrayList.add(new AnonymousClass13((incomeEconomy > 0.0f ? "+" : "") + CFG.getPrecision2(incomeEconomy, 100), i8 + CFG.PADDING, height7, i5, i3));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float incomeProduction = Game.getCiv(this.iActiveCivID).getIncomeProduction();
        arrayList.add(new AnonymousClass14(Game.lang.get("Production"), Images.goods, i, height8, i7, i3, width2, false));
        arrayList.add(new AnonymousClass15((incomeProduction > 0.0f ? "+" : "") + CFG.getPrecision2(incomeProduction, 100), i8 + CFG.PADDING, height8, i5, i3));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float incomeBuildings = Game.getCiv(this.iActiveCivID).getIncomeBuildings();
        arrayList.add(new AnonymousClass16(Game.lang.get("Buildings"), Images.buildings, i, height9, i7, i3, width2, true));
        arrayList.add(new AnonymousClass17((incomeBuildings > 0.0f ? "+" : "") + CFG.getPrecision2(incomeBuildings, 1000), i8 + CFG.PADDING, height9, i5, i3));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float income_Emperor = 0.0f;
        for (int i11 = 0; i11 < Game.getCiv(Game.player.iCivID).inAllianceSize; i11++) {
            if (Game.alliancesSpecial.get(Game.getCiv(Game.player.iCivID).inAlliance.get(i11).intValue()).iLeaderCivID == Game.player.iCivID && Game.alliancesSpecial.get(Game.getCiv(Game.player.iCivID).inAlliance.get(i11).intValue()).typeOfAlliance == 0) {
                income_Emperor += HREManager.getIncome_Emperor(Game.getCiv(Game.player.iCivID).inAlliance.get(i11).intValue());
            }
        }
        float f = Game.getCiv(this.iActiveCivID).civBonuses.MonthlyIncome + Game.getCiv(this.iActiveCivID).fIncomeLord;
        int i12 = this.iActiveCivID;
        float f2 = income_Emperor + f + (i12 == Game.getCiv(i12).getPuppetOfCivID() ? GameValues.civRank.CIV_BASE_INCOME[Game.getCiv(this.iActiveCivID).iCivRankID] : GameValues.civRank.CIV_BASE_INCOME_VASSAL[Game.getCiv(this.iActiveCivID).iCivRankID]);
        arrayList.add(new ButtonStatsBudget(Game.lang.get("AdditionalIncome"), Images.diplomacy, i, height10, i7, i3, width2, false));
        arrayList.add(new AnonymousClass18((f2 > 0.0f ? "+" : "") + CFG.getPrecision2(f2, 100), i8 + CFG.PADDING, height10, i5, i3, f2));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass19((f2 >= 0.0f ? "+" : "-") + CFG.getPrecision2(Game.getCiv(this.iActiveCivID).fTotalExpensesPerMonth, 100), i8 + CFG.PADDING, height11 + 1 + ((int) Math.ceil(((CFG.TEXT_HEIGHT + (CFG.PADDING * 6)) - i3) / 2.0f)), i5, i3));
        arrayList.add(new Text_Title_v2(Game.lang.get("MonthlyExpenses"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height11, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height12 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("ArmyMaintenance"), Images.armyMaintenance, i, height12, (i6 - (CFG.PADDING * 3)) - i9, i4, width2, true));
        int width5 = i + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass20(Images.gold, width5, height12, i4, i4, 0));
        int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass21(Images.gold, width6, height12, i4, i4, 1));
        arrayList.add(new AnonymousClass22(Images.gold, width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height12, i4, i4, 2));
        arrayList.get(arrayList.size() - 1).getWidth();
        int i13 = CFG.PADDING;
        int height13 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("ResearchExpenses"), Game_Calendar.IMG_TECHNOLOGY, i, height13, (i6 - (CFG.PADDING * 3)) - i9, i4, width2, false));
        int width7 = i + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass23(Images.gold, width7, height13, i4, i4, 0));
        int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        arrayList.add(new AnonymousClass24(Images.gold, width8, height13, i4, i4, 1));
        arrayList.add(new AnonymousClass25(Images.gold, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height13, i4, i4, 2));
        arrayList.get(arrayList.size() - 1).getWidth();
        int i14 = CFG.PADDING;
        int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float f3 = Game.getCiv(this.iActiveCivID).fArmyMaintenance;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("Military"), Game_Calendar.IMG_MANPOWER, i, height14, i7, i3, width2, true));
        arrayList.add(new AnonymousClass26((f3 > 0.0f ? "-" : "") + CFG.getPrecision2(f3, 100), i8 + CFG.PADDING, height14, i5, i3));
        int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new ButtonStatsBudget(Game.lang.get("ResearchCost"), Game_Calendar.IMG_TECHNOLOGY, i, height15, i7, i3, width2, false));
        arrayList.add(new AnonymousClass27("", i8 + CFG.PADDING, height15, i5, i3));
        int height16 = height15 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float provinceMaintenance = Game.getCiv(this.iActiveCivID).getProvinceMaintenance();
        arrayList.add(new AnonymousClass28(Game.lang.get(SwmJtrccN.xoMDvdYLGrmcXB), Images.provinces, i, height16, i7, i3, width2, true));
        arrayList.add(new AnonymousClass29((provinceMaintenance > 0.0f ? "-" : "") + CFG.getPrecision2(provinceMaintenance, 100), i8 + CFG.PADDING, height16, i5, i3));
        int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float buildingsMaintenance = Game.getCiv(this.iActiveCivID).getBuildingsMaintenance();
        arrayList.add(new AnonymousClass30(Game.lang.get("BuildingsMaintenance"), Images.buildings, i, height17, i7, i3, width2, false));
        arrayList.add(new AnonymousClass31((buildingsMaintenance > 0.0f ? "-" : "") + CFG.getPrecision2(buildingsMaintenance, 100), i8 + CFG.PADDING, height17, i5, i3));
        int height18 = height17 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass32(Game.lang.get("Interest"), Images.loan, i, height18, i7, i3, width2, true));
        arrayList.add(new AnonymousClass33("0", i8 + CFG.PADDING, height18, i5, i3));
        int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass34(Game.lang.get("AdditionalExpenses"), Images.diplomacy, i, height19, i7, i3, width2, false));
        arrayList.add(new AnonymousClass35("" + CFG.getPrecision2(-Game.getCiv(this.iActiveCivID).getAdditionalExpenses(), 100), i8 + CFG.PADDING, height19, i5, i3));
        int height20 = height19 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        float inflation = Game.getCiv(this.iActiveCivID).getInflation() * 100.0f;
        arrayList.add(new AnonymousClass36(Game.lang.get("Inflation"), Images.inflation, i, height20, i7, i3, width2, true));
        arrayList.add(new AnonymousClass37((inflation > 0.0f ? "+" : "") + CFG.getPrecision2(Game.getCiv(this.iActiveCivID).getInflation() * 100.0f, 100) + "%", i8 + CFG.PADDING, height20, i5, i3));
        int height21 = height20 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass38(Game.lang.get("ProsperityTier"), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height21, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6), Game.getProsperityLevel(Game.player.iCivID)));
        int height22 = height21 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass39(Game.lang.get("MonthlyIncomeEconomy"), Images.goldPositive, i, height22, i7, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), width2, false));
        arrayList.add(new AnonymousClass40("+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fProsperity_AverageEconomy * GameValues.prosperity.PROSPERITY_INCOME, 100) + "%", i8 + CFG.PADDING, height22, i5, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height23 = height22 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Loans"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height23, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height24 = height23 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass41(Game.lang.get("Loans"), Images.loan, i, height24, i7, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), width2, false));
        arrayList.add(new AnonymousClass42("" + Game.getCiv(Game.player.iCivID).iLoansSize + " / " + Game.getLoanMaxNumber(Game.player.iCivID), i8 + CFG.PADDING, height24, i5, CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        arrayList.get(arrayList.size() - 1).setCurrent(Game.getCiv(Game.player.iCivID).iLoansSize);
        int height25 = height24 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int i15 = i + CFG.PADDING;
        int i16 = width - (i15 * 2);
        arrayList.add(new AnonymousClass43(Game.lang.get("RepayLoans"), CFG.FONT_REGULAR, -1, i15, height25, (i16 - CFG.PADDING) / 2, true));
        arrayList.add(new AnonymousClass44(Game.lang.get("TakeLoan"), CFG.FONT_REGULAR, -1, i15 + CFG.PADDING + ((i16 - CFG.PADDING) / 2), height25, (i16 - CFG.PADDING) / 2, true));
        int height26 = height25 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2) + CFG.PADDING;
        int iMin = Math.min(height26, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(height26, iMin)));
        initMenu(new AnonymousClass45(Game.lang.get("Treasury"), Game.getCiv(this.iActiveCivID).getCivName(), false, false, Images.title500), otherMenuPosX_2, height, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void actionTakeLoan() {
        if (Game.menuManager.getVisibleInGame_TakeLoan()) {
            Game.menuManager.setVisibleInGame_TakeLoan(false);
        } else {
            Game.menuManager.rebuildInGame_TakeLoan();
            Game.menuManager.setVisibleInGame_TakeLoanRepay(false);
        }
    }

    public static MenuElement_Hover getHoverCorruption() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Corruption") + ": ", CFG.FONT_BOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getCorruption() * 100.0f, 100) + "%", CFG.FONT_BOLD, Game.getCiv(Game.player.iCivID).getCorruption() > 0.005f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.corruption, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ProvinceIncome") + ": ", CFG.FONT_REGULAR));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("-" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getCorruption() * 100.0f, 100) + "%", CFG.FONT_BOLD, Game.getCiv(Game.player.iCivID).getCorruption() > 0.005f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.gold, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() >= Game.getSupremeCourt_MaxLvl(Game.player.iCivID)) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SupremeCourt"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.stability, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UpgradeTheSupremeCourtLevelToReduceCorruption"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Level") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).getSupremeCourtLevel() + " / " + Game.getSupremeCourt_MaxLvl(Game.player.iCivID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.stability, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CorruptionPerLevel") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.supremeCourt.SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.corruption, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Corruption0"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Corruption1"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public static MenuElement_Hover getHoverInflation(int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        float inflation = Game.getCiv(i).getInflation() * 100.0f;
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Inflation") + ": ", CFG.getPrecision2(inflation, 100) + "%", Images.inflation, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionCost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(inflation, 100) + "%", CFG.FONT_BOLD_SMALL, inflation > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.construction, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InvestInEconomyCost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(inflation, 100) + "%", CFG.FONT_BOLD_SMALL, inflation > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY_UP, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(inflation, 100) + "%", CFG.FONT_BOLD_SMALL, inflation > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.taxUp, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CoreConstruction") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(inflation, 100) + "%", CFG.FONT_BOLD_SMALL, inflation > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.core, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ReligionConversionCost") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("+" + CFG.getPrecision2(inflation, 100) + "%", CFG.FONT_BOLD_SMALL, inflation > 0.0f ? Colors.COLOR_TEXT_MODIFIER_NEGATIVE : Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.religion, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(IlLkpaQxs.mZP), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.inflation, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getInflationReduceCost_Legacy(Game.player.iCivID), 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.budgetOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.budgetOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.budgetOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    public MenuElement_Hover getHoverProsperity(int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProsperityTier") + ": ", Game.getProsperityLevel(i), Images.goldPositive, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.getEconomyColor((int) (Game.getCiv(i).fProsperity_AverageEconomy / GameValues.prosperity.PROSPERITY_INCOME), 1.0f)));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncomeEconomy") + ": ", "+" + CFG.getPrecision2(Game.getCiv(i).fProsperity_AverageEconomy * GameValues.prosperity.PROSPERITY_INCOME, 100) + "%", Images.goldPositive, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_RIGHT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ProsperityTierReflectsTheAverageEconomyOfYourProvincesImpactingIncomeFromEconomy"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ProsperityTier") + " = " + Game.lang.get("AverageEconomybasedOnPopulationOfAllProvinces"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        arrayList.add(new MenuElement_HoverElement(arrayList2, false));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("Treasury"));
    }
}
