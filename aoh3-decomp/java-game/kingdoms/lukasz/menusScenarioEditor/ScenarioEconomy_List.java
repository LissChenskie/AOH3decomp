package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioEconomy_List extends Menu {
    public static ListMode listMode = ListMode.ECONOMY;
    public static int modeID = 0;
    public String sDefault;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioEconomy_List$1, reason: invalid class name */
    class AnonymousClass1 extends Text_Title_Diplomacy {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (ScenarioEconomy_List.modeID == 0) {
                ScenarioEconomy_List.modeID = 1;
            } else {
                ScenarioEconomy_List.modeID = 0;
            }
            Game.menuManager.setViewIDWithoutAnimation(View.SCENARIO_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioEconomy_List$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Title_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (ScenarioEconomy_List.modeID == 0) {
                ScenarioEconomy_List.modeID = 1;
            } else {
                ScenarioEconomy_List.modeID = 0;
            }
            Game.menuManager.setViewIDWithoutAnimation(View.SCENARIO_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_Diplomacy, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.outliner, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getTab();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioEconomy_List$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (ScenarioEconomy_List.listMode == ListMode.ECONOMY) {
                ScenarioPopulation_List.iCivID = getCurrent();
                ScenarioPopulation_List.sPopulation = "" + Game.getCiv(getCurrent()).scenarioEditorData.Economy;
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CIV_ECONOMY, ScenarioPopulation_List.sPopulation);
                return;
            }
            if (ScenarioEconomy_List.listMode == ListMode.TAX_EFFICIENCY) {
                ScenarioPopulation_List.iCivID = getCurrent();
                ScenarioPopulation_List.sPopulation = "" + Game.getCiv(getCurrent()).scenarioEditorData.TaxEff;
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CIV_TAX_EFFICIENCY, ScenarioPopulation_List.sPopulation);
                return;
            }
            if (ScenarioEconomy_List.listMode == ListMode.MANPOWER) {
                ScenarioPopulation_List.iCivID = getCurrent();
                ScenarioPopulation_List.sPopulation = "" + Game.getCiv(getCurrent()).scenarioEditorData.Manpower;
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CIV_MANPOWER, ScenarioPopulation_List.sPopulation);
                return;
            }
            if (ScenarioEconomy_List.listMode == ListMode.GOLD) {
                ScenarioPopulation_List.iCivID = getCurrent();
                ScenarioPopulation_List.sPopulation = "" + Game.getCiv(getCurrent()).scenarioEditorData.Gold;
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CIV_GOLD, ScenarioPopulation_List.sPopulation);
                return;
            }
            if (ScenarioEconomy_List.listMode == ListMode.LEGACY) {
                ScenarioPopulation_List.iCivID = getCurrent();
                ScenarioPopulation_List.sPopulation = "" + Game.getCiv(getCurrent()).scenarioEditorData.Legacy;
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CIV_LEGACY, ScenarioPopulation_List.sPopulation);
            } else if (ScenarioEconomy_List.listMode == ListMode.AI_AGGRESSIVENESS) {
                ScenarioPopulation_List.iCivID = getCurrent();
                ScenarioPopulation_List.sPopulation = "" + Game.getCiv(getCurrent()).scenarioEditorData.v;
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CIV_AI_AGGRESSIVENESS, ScenarioPopulation_List.sPopulation);
            } else if (ScenarioEconomy_List.listMode == ListMode.NUKES) {
                ScenarioPopulation_List.iCivID = getCurrent();
                ScenarioPopulation_List.sPopulation = "" + Game.getCiv(getCurrent()).scenarioEditorData.Nukes;
                Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CIV_NUKES, ScenarioPopulation_List.sPopulation);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            super.draw(spriteBatch, i, i2, z, z2);
            Game.getCiv(getCurrent()).getFlag().draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + (getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
            ImageManager.getImage(Images.flag_rect).draw(spriteBatch, ((getPosX() + (getTextPos() / 2)) - (CFG.CIV_FLAG_WIDTH / 2)) + i, ((getPosY() + (getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getIsHovered() {
            return super.getIsHovered() || ScenarioPopulation_List.iCivID == getCurrent();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (ScenarioEconomy_List.listMode == ListMode.ECONOMY) {
                return super.getTextToDraw() + ": " + (Game.getCiv(getCurrent()).scenarioEditorData.Economy == 0 ? ScenarioEconomy_List.this.sDefault : Integer.valueOf(Game.getCiv(getCurrent()).scenarioEditorData.Economy));
            }
            if (ScenarioEconomy_List.listMode == ListMode.TAX_EFFICIENCY) {
                return super.getTextToDraw() + ": " + (Game.getCiv(getCurrent()).scenarioEditorData.TaxEff == 0 ? ScenarioEconomy_List.this.sDefault : Integer.valueOf(Game.getCiv(getCurrent()).scenarioEditorData.TaxEff));
            }
            if (ScenarioEconomy_List.listMode == ListMode.MANPOWER) {
                return super.getTextToDraw() + ": " + (Game.getCiv(getCurrent()).scenarioEditorData.Manpower == 0 ? ScenarioEconomy_List.this.sDefault : Integer.valueOf(Game.getCiv(getCurrent()).scenarioEditorData.Manpower));
            }
            if (ScenarioEconomy_List.listMode == ListMode.AI_AGGRESSIVENESS) {
                return super.getTextToDraw() + ": " + (Game.getCiv(getCurrent()).scenarioEditorData.v == 0 ? ScenarioEconomy_List.this.sDefault : Integer.valueOf(Game.getCiv(getCurrent()).scenarioEditorData.v));
            }
            if (ScenarioEconomy_List.listMode == ListMode.GOLD) {
                return super.getTextToDraw() + ": " + (Game.getCiv(getCurrent()).scenarioEditorData.Gold == MapScenarios.DEFAULT_VALUE ? ScenarioEconomy_List.this.sDefault : Integer.valueOf(Game.getCiv(getCurrent()).scenarioEditorData.Gold));
            }
            if (ScenarioEconomy_List.listMode == ListMode.LEGACY) {
                return super.getTextToDraw() + ": " + (Game.getCiv(getCurrent()).scenarioEditorData.Legacy == MapScenarios.DEFAULT_VALUE ? ScenarioEconomy_List.this.sDefault : Integer.valueOf(Game.getCiv(getCurrent()).scenarioEditorData.Legacy));
            }
            if (ScenarioEconomy_List.listMode == ListMode.NUKES) {
                return super.getTextToDraw() + ": " + (Game.getCiv(getCurrent()).scenarioEditorData.Nukes == 0 ? ScenarioEconomy_List.this.sDefault : Integer.valueOf(Game.getCiv(getCurrent()).scenarioEditorData.Nukes));
            }
            return super.getTextToDraw() + ": " + (Game.getCiv(getCurrent()).scenarioEditorData.Economy == 0 ? ScenarioEconomy_List.this.sDefault : Integer.valueOf(Game.getCiv(getCurrent()).scenarioEditorData.Economy));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioEconomy_List$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (ScenarioEconomy_List.listMode == ListMode.MANPOWER) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumManpower") + ": ", CFG.FONT_BOLD));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MonthlyIncome") + ": ", CFG.FONT_BOLD));
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_BOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public enum ListMode {
        ECONOMY,
        TAX_EFFICIENCY,
        MANPOWER,
        GOLD,
        LEGACY,
        NUKES,
        AI_AGGRESSIVENESS
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0262  */
    /* JADX WARN: Code duplicated, block: B:54:0x0278  */
    public ScenarioEconomy_List() {
        LanguageManager languageManager;
        String str;
        int i;
        int i2;
        int i3;
        ArrayList arrayList;
        String precision2;
        ArrayList arrayList2 = new ArrayList();
        int i4 = CFG.PADDING * 2;
        int i5 = CFG.BUTTON_HEIGHT;
        int i6 = CFG.PADDING * 4;
        int i7 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 4) + Images.boxTitleBORDERWIDTH;
        int i8 = CFG.PADDING * 2;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int i9 = CFG.PADDING;
        int i10 = 1;
        arrayList2.add(new AnonymousClass1(Game.lang.get("Name"), Images.boxTitleBORDERWIDTH, 0, (width - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, modeID == 0));
        if (listMode == ListMode.MANPOWER) {
            languageManager = Game.lang;
            str = "MaximumManpower";
        } else {
            languageManager = Game.lang;
            str = ALZmnpZHj.pDcaYX;
        }
        arrayList2.add(new AnonymousClass2(languageManager.get(str), Images.boxTitleBORDERWIDTH + ((width - (Images.boxTitleBORDERWIDTH * 2)) / 2), 0, (width - (Images.boxTitleBORDERWIDTH * 2)) / 2, CFG.BUTTON_HEIGHT4, modeID == 1));
        int height = arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING + 0;
        ScenarioPopulation_List.iCivID = -1;
        this.sDefault = Game.lang.get("Default");
        ArrayList arrayList3 = new ArrayList();
        for (int i11 = 0; i11 < Game.getCivsSize(); i11++) {
            arrayList3.add(Integer.valueOf(i11));
        }
        int height2 = height;
        while (arrayList3.size() > 0) {
            if (modeID == 0) {
                int size = arrayList3.size();
                i2 = 0;
                for (int i12 = i10; i12 < size; i12++) {
                    for (int i13 = 0; i13 < Math.min(Game.getCiv(((Integer) arrayList3.get(i2)).intValue()).getCivName().length(), Game.getCiv(((Integer) arrayList3.get(i12)).intValue()).getCivName().length()); i13++) {
                        if (Game.getCiv(((Integer) arrayList3.get(i2)).intValue()).getCivName().charAt(i13) > Game.getCiv(((Integer) arrayList3.get(i12)).intValue()).getCivName().charAt(i13)) {
                            i2 = i12;
                            break;
                        } else {
                            if (Game.getCiv(((Integer) arrayList3.get(i2)).intValue()).getCivName().charAt(i13) < Game.getCiv(((Integer) arrayList3.get(i12)).intValue()).getCivName().charAt(i13)) {
                                break;
                            }
                        }
                    }
                }
            } else {
                if (listMode == ListMode.MANPOWER) {
                    int size2 = arrayList3.size();
                    int i14 = i10;
                    i2 = 0;
                    while (i14 < size2) {
                        int i15 = i7;
                        if (Game.getCiv(((Integer) arrayList3.get(i2)).intValue()).fManpowerMax < Game.getCiv(((Integer) arrayList3.get(i14)).intValue()).fManpowerMax) {
                            i2 = i14;
                        }
                        i14++;
                        i7 = i15;
                    }
                } else {
                    i = i7;
                    int size3 = arrayList3.size();
                    i2 = 0;
                    for (int i16 = 1; i16 < size3; i16++) {
                        if (Game.getCiv(((Integer) arrayList3.get(i2)).intValue()).fTotalIncomePerMonth < Game.getCiv(((Integer) arrayList3.get(i16)).intValue()).fTotalIncomePerMonth) {
                            i2 = i16;
                        }
                    }
                }
                i3 = i2;
                int i17 = i4 * 2;
                int i18 = height2;
                arrayList = arrayList3;
                arrayList2.add(new AnonymousClass3(Game.getCiv(((Integer) arrayList3.get(i3)).intValue()).getCivName(), 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i4, i18, (width - i17) - CFG.BUTTON_WIDTH, true));
                arrayList2.get(arrayList2.size() - 1).setCurrent(((Integer) arrayList.get(i3)).intValue());
                StringBuilder sb = new StringBuilder("");
                if (listMode == ListMode.MANPOWER) {
                    precision2 = CFG.getShortNumber((int) Game.getCiv(((Integer) arrayList.get(i3)).intValue()).fManpowerMax);
                } else {
                    precision2 = CFG.getPrecision2(Game.getCiv(((Integer) arrayList.get(i3)).intValue()).fTotalIncomePerMonth, 10);
                }
                arrayList2.add(new AnonymousClass4(sb.append(precision2).toString(), 1, -1, ((i4 + width) - i17) - CFG.BUTTON_WIDTH, i18, CFG.BUTTON_WIDTH, true));
                height2 = i18 + arrayList2.get(arrayList2.size() - 1).getHeight() + i8;
                arrayList.remove(i3);
                arrayList3 = arrayList;
                i10 = 1;
                i7 = i;
            }
            i = i7;
            i3 = i2;
            int i19 = i4 * 2;
            int i110 = height2;
            arrayList = arrayList3;
            arrayList2.add(new AnonymousClass3(Game.getCiv(((Integer) arrayList3.get(i3)).intValue()).getCivName(), 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i4, i110, (width - i19) - CFG.BUTTON_WIDTH, true));
            arrayList2.get(arrayList2.size() - 1).setCurrent(((Integer) arrayList.get(i3)).intValue());
            StringBuilder sb2 = new StringBuilder("");
            if (listMode == ListMode.MANPOWER) {
                precision2 = CFG.getShortNumber((int) Game.getCiv(((Integer) arrayList.get(i3)).intValue()).fManpowerMax);
            } else {
                precision2 = CFG.getPrecision2(Game.getCiv(((Integer) arrayList.get(i3)).intValue()).fTotalIncomePerMonth, 10);
            }
            arrayList2.add(new AnonymousClass4(sb2.append(precision2).toString(), 1, -1, ((i4 + width) - i19) - CFG.BUTTON_WIDTH, i110, CFG.BUTTON_WIDTH, true));
            height2 = i110 + arrayList2.get(arrayList2.size() - 1).getHeight() + i8;
            arrayList.remove(i3);
            arrayList3 = arrayList;
            i10 = 1;
            i7 = i;
        }
        int i20 = i7;
        initMenu(new MenuTitle("", 1.0f, i5, true, true), i6, i5 + i20, width, Math.min(height2, (CFG.GAME_HEIGHT - i5) - (i20 * 2)), arrayList2, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight(), i, i2);
        super.beginClip(spriteBatch, i, i2, z);
        super.drawMenu(spriteBatch, i, i2, z);
        super.endClip(spriteBatch, i, i2, z, status);
    }

    public final void drawEditorMenuBG(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i + i5;
        Renderer.drawBoxCorner(spriteBatch, i7, (i2 - getTitle().getHeight()) + i6, i3, getTitle().getHeight() + i4 + CFG.PADDING);
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.mainBox, i7, i2 + i6, i3, i4 + CFG.PADDING, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        if (listMode == ListMode.GOLD || listMode == ListMode.LEGACY) {
            getTitle().setText(Game.lang.get("Default") + MQYGMkZOAcS.nDYqcCHWOKGstEj + MapScenarios.DEFAULT_VALUE);
        } else {
            getTitle().setText(Game.lang.get("Default") + ": 0");
        }
    }
}
