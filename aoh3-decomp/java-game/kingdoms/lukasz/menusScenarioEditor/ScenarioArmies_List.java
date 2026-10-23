package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Style_NewArmy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonUnit_02;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDiplomacy;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioArmies_List extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List$1, reason: invalid class name */
    class AnonymousClass1 extends Text_StaticBG {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getProvince(Game.iActiveProvince).clearArmies_ScenarioEditor();
            if (ScenarioDiplomacy.goBackTo != View.IN_GAME || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            Game.gameThread.addCivUpdateArmyMaintenance(Game.getProvince(Game.iActiveProvince).getCivID());
            Game.gameThread.addCivUpdateTotalIncomePerMonth(Game.getProvince(Game.iActiveProvince).getCivID());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonGame_Style_NewArmy {
        AnonymousClass10(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!AA_KeyManager.CTRL_HOLD && !AA_KeyManager.SHIFT_HOLD) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                    if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                        Game.getProvince(Game.iActiveProvince).removeArmy(0);
                        return;
                    }
                    return;
                }
                return;
            }
            for (int i = 0; i < 5; i++) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                    if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                        Game.getProvince(Game.iActiveProvince).removeArmy(0);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonUnit_02 {
        AnonymousClass2(int i, int i2, int i3, int i4, int i5, boolean z) {
            super(i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                for (int i = 0; i < 5; i++) {
                    if (Game.getProvince(Game.iActiveProvince).getArmySize() == 0) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new ArmyRegiment(getValue1(), getValue2()));
                        Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList));
                    } else {
                        Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
                    }
                }
            } else if (Game.getProvince(Game.iActiveProvince).getArmySize() == 0) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new ArmyRegiment(getValue1(), getValue2()));
                Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList2));
            } else {
                Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
            }
            if (ScenarioDiplomacy.goBackTo != View.IN_GAME || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            Game.gameThread.addCivUpdateArmyMaintenance(Game.getProvince(Game.iActiveProvince).getCivID());
            Game.gameThread.addCivUpdateTotalIncomePerMonth(Game.getProvince(Game.iActiveProvince).getCivID());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                for (int i = 0; i < 5; i++) {
                    if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                        Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                        if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                            Game.getProvince(Game.iActiveProvince).removeArmy(0);
                        }
                    }
                }
            } else if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                    Game.getProvince(Game.iActiveProvince).removeArmy(0);
                }
            }
            if (ScenarioDiplomacy.goBackTo != View.IN_GAME || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            Game.gameThread.addCivUpdateArmyMaintenance(Game.getProvince(Game.iActiveProvince).getCivID());
            Game.gameThread.addCivUpdateTotalIncomePerMonth(Game.getProvince(Game.iActiveProvince).getCivID());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonUnit_02, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            int i3;
            super.draw(spriteBatch, i, i2, z, z2);
            try {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    int i4 = 0;
                    for (int i5 = Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize - 1; i5 >= 0; i5--) {
                        if (Game.getProvince(Game.iActiveProvince).getArmy(0).lArmyRegiment.get(i5).uID == getValue1() && Game.getProvince(Game.iActiveProvince).getArmy(0).lArmyRegiment.get(i5).aID == getValue2()) {
                            i4++;
                        }
                    }
                    i3 = i4;
                } else {
                    i3 = 0;
                }
                if (i3 > 0) {
                    Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "" + i3);
                    int i6 = (int) Renderer.glyphLayout.width;
                    spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.75f));
                    Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + CFG.PADDING + i2, (CFG.PADDING * 4) + i6, (CFG.PADDING * 2) + CFG.TEXT_HEIGHT, 1.0f);
                    spriteBatch.setColor(Color.WHITE);
                    Renderer.drawText(spriteBatch, CFG.FONT_BOLD, "" + i3, getPosX() + (CFG.PADDING * 3) + i, getPosY() + (CFG.PADDING * 2) + i2, Colors.HOVER_GOLD);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame_Style_NewArmy {
        AnonymousClass3(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                for (int i = 0; i < 5; i++) {
                    if (Game.getProvince(Game.iActiveProvince).getArmySize() == 0) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new ArmyRegiment(getValue1(), getValue2()));
                        Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList));
                    } else {
                        Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
                    }
                }
            } else if (Game.getProvince(Game.iActiveProvince).getArmySize() == 0) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new ArmyRegiment(getValue1(), getValue2()));
                Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList2));
            } else {
                Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
            }
            if (ScenarioDiplomacy.goBackTo != View.IN_GAME || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            Game.gameThread.addCivUpdateArmyMaintenance(Game.getProvince(Game.iActiveProvince).getCivID());
            Game.gameThread.addCivUpdateTotalIncomePerMonth(Game.getProvince(Game.iActiveProvince).getCivID());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame_Style_NewArmy {
        AnonymousClass4(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                for (int i = 0; i < 5; i++) {
                    if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                        Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                        if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                            Game.getProvince(Game.iActiveProvince).removeArmy(0);
                        }
                    }
                }
            } else if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                    Game.getProvince(Game.iActiveProvince).removeArmy(0);
                }
            }
            if (ScenarioDiplomacy.goBackTo != View.IN_GAME || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            Game.gameThread.addCivUpdateArmyMaintenance(Game.getProvince(Game.iActiveProvince).getCivID());
            Game.gameThread.addCivUpdateTotalIncomePerMonth(Game.getProvince(Game.iActiveProvince).getCivID());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonUnit_02 {
        AnonymousClass5(int i, int i2, int i3, int i4, int i5, boolean z) {
            super(i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!AA_KeyManager.CTRL_HOLD && !AA_KeyManager.SHIFT_HOLD) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() != 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new ArmyRegiment(getValue1(), getValue2()));
                Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList));
                return;
            }
            for (int i = 0; i < 5; i++) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() == 0) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new ArmyRegiment(getValue1(), getValue2()));
                    Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList2));
                } else {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (!AA_KeyManager.CTRL_HOLD && !AA_KeyManager.SHIFT_HOLD) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                    if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                        Game.getProvince(Game.iActiveProvince).removeArmy(0);
                        return;
                    }
                    return;
                }
                return;
            }
            for (int i = 0; i < 5; i++) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                    if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                        Game.getProvince(Game.iActiveProvince).removeArmy(0);
                    }
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonUnit_02, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            int i3;
            super.draw(spriteBatch, i, i2, z, z2);
            try {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    int i4 = 0;
                    for (int i5 = Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize - 1; i5 >= 0; i5--) {
                        if (Game.getProvince(Game.iActiveProvince).getArmy(0).lArmyRegiment.get(i5).uID == getValue1() && Game.getProvince(Game.iActiveProvince).getArmy(0).lArmyRegiment.get(i5).aID == getValue2()) {
                            i4++;
                        }
                    }
                    i3 = i4;
                } else {
                    i3 = 0;
                }
                if (i3 > 0) {
                    Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "" + i3);
                    int i6 = (int) Renderer.glyphLayout.width;
                    spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.75f));
                    Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + CFG.PADDING + i2, (CFG.PADDING * 4) + i6, (CFG.PADDING * 2) + CFG.TEXT_HEIGHT, 1.0f);
                    spriteBatch.setColor(Color.WHITE);
                    Renderer.drawText(spriteBatch, CFG.FONT_BOLD, "" + i3, getPosX() + (CFG.PADDING * 3) + i, getPosY() + (CFG.PADDING * 2) + i2, Colors.HOVER_GOLD);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame_Style_NewArmy {
        AnonymousClass6(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!AA_KeyManager.CTRL_HOLD && !AA_KeyManager.SHIFT_HOLD) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() != 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new ArmyRegiment(getValue1(), getValue2()));
                Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList));
                return;
            }
            for (int i = 0; i < 5; i++) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() == 0) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new ArmyRegiment(getValue1(), getValue2()));
                    Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList2));
                } else {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame_Style_NewArmy {
        AnonymousClass7(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!AA_KeyManager.CTRL_HOLD && !AA_KeyManager.SHIFT_HOLD) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                    if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                        Game.getProvince(Game.iActiveProvince).removeArmy(0);
                        return;
                    }
                    return;
                }
                return;
            }
            for (int i = 0; i < 5; i++) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                    if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                        Game.getProvince(Game.iActiveProvince).removeArmy(0);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonUnit_02 {
        AnonymousClass8(int i, int i2, int i3, int i4, int i5, boolean z) {
            super(i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!AA_KeyManager.CTRL_HOLD && !AA_KeyManager.SHIFT_HOLD) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() != 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new ArmyRegiment(getValue1(), getValue2()));
                Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList));
                return;
            }
            for (int i = 0; i < 5; i++) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() == 0) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new ArmyRegiment(getValue1(), getValue2()));
                    Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList2));
                } else {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (!AA_KeyManager.CTRL_HOLD && !AA_KeyManager.SHIFT_HOLD) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                    if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                        Game.getProvince(Game.iActiveProvince).removeArmy(0);
                        return;
                    }
                    return;
                }
                return;
            }
            for (int i = 0; i < 5; i++) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).removeRegiment_ScenarioEditor(getValue1(), getValue2());
                    if (Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize == 0) {
                        Game.getProvince(Game.iActiveProvince).removeArmy(0);
                    }
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonUnit_02, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            int i3;
            super.draw(spriteBatch, i, i2, z, z2);
            try {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() > 0) {
                    int i4 = 0;
                    for (int i5 = Game.getProvince(Game.iActiveProvince).getArmy(0).iArmyRegimentSize - 1; i5 >= 0; i5--) {
                        if (Game.getProvince(Game.iActiveProvince).getArmy(0).lArmyRegiment.get(i5).uID == getValue1() && Game.getProvince(Game.iActiveProvince).getArmy(0).lArmyRegiment.get(i5).aID == getValue2()) {
                            i4++;
                        }
                    }
                    i3 = i4;
                } else {
                    i3 = 0;
                }
                if (i3 > 0) {
                    Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), "" + i3);
                    int i6 = (int) Renderer.glyphLayout.width;
                    spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.75f));
                    Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + CFG.PADDING + i, getPosY() + CFG.PADDING + i2, (CFG.PADDING * 4) + i6, (CFG.PADDING * 2) + CFG.TEXT_HEIGHT, 1.0f);
                    spriteBatch.setColor(Color.WHITE);
                    Renderer.drawText(spriteBatch, CFG.FONT_BOLD, "" + i3, getPosX() + (CFG.PADDING * 3) + i, getPosY() + (CFG.PADDING * 2) + i2, Colors.HOVER_GOLD);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonGame_Style_NewArmy {
        AnonymousClass9(int i, int i2, boolean z, String str, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
            super(i, i2, z, str, i3, i4, i5, i6, i7, i8, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!AA_KeyManager.CTRL_HOLD && !AA_KeyManager.SHIFT_HOLD) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() != 0) {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new ArmyRegiment(getValue1(), getValue2()));
                Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList));
                return;
            }
            for (int i = 0; i < 5; i++) {
                if (Game.getProvince(Game.iActiveProvince).getArmySize() == 0) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new ArmyRegiment(getValue1(), getValue2()));
                    Game.getProvince(Game.iActiveProvince).addArmy(new ArmyDivision(Game.getProvince(Game.iActiveProvince).getCivID(), Game.iActiveProvince, arrayList2));
                } else {
                    Game.getProvince(Game.iActiveProvince).getArmy(0).addRegiment(new ArmyRegiment(getValue1(), getValue2()));
                }
            }
        }
    }

    public ScenarioArmies_List() {
        int i;
        int i2;
        int i3;
        ArrayList arrayList = new ArrayList();
        int i4 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int i5 = CFG.PADDING * 2;
        int height = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i6 = CFG.PADDING * 2;
        int i7 = CFG.PADDING;
        int iMax = Math.max((ImageManager.getImage(Images.battleArmy0).getHeight() * 2) + (CFG.PADDING * 3), CFG.TEXT_HEIGHT + (CFG.PADDING * 6));
        if (CFG.isDesktop()) {
            int i8 = CFG.BUTTON_HEIGHT3;
        } else {
            int i9 = CFG.BUTTON_HEIGHT2;
        }
        int i10 = width - (i4 * 2);
        int i11 = CFG.PADDING;
        int i12 = Images.boxTitleBORDERWIDTH;
        int i13 = iMax;
        arrayList.add(new AnonymousClass1(Game.lang.get("Clear"), CFG.FONT_REGULAR, -1, i4, i7, i10, CFG.BUTTON_HEIGHT2));
        int height2 = i7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(InGame_RecruitArmy.getTitleFirstLine(height2, width, i13));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
        int i14 = 0;
        int civID = Game.iActiveProvince >= 0 ? Game.getProvince(Game.iActiveProvince).getCivID() : 0;
        int i15 = 0;
        int i16 = 0;
        while (i16 < ArmyManager.iUnitsTypesSize) {
            int i17 = i14;
            while (i17 < ArmyManager.lArmySize.get(i16).intValue()) {
                if (ArmyManager.lUnitsTypes.get(i16).Line == 0 && Game.getCiv(civID).isUnitBest(i16, i17)) {
                    i2 = i17;
                    i3 = i16;
                    arrayList.add(new AnonymousClass2(i16, i17, i4, height3, i10 - CFG.BUTTON_HEIGHT, true));
                    arrayList.add(new AnonymousClass3(i3, i2, true, "+", CFG.FONT_REGULAR, -1, (i10 - CFG.BUTTON_HEIGHT) + i4 + CFG.PADDING, height3, CFG.BUTTON_HEIGHT - CFG.PADDING, (ImageManager.getImage(Images.unitsFrame).getHeight() - CFG.PADDING) / 2, true));
                    arrayList.add(new AnonymousClass4(i3, i2, false, "-", CFG.FONT_REGULAR, -1, (i10 - CFG.BUTTON_HEIGHT) + i4 + CFG.PADDING, ((ImageManager.getImage(Images.unitsFrame).getHeight() - CFG.PADDING) / 2) + height3 + CFG.PADDING, CFG.BUTTON_HEIGHT - CFG.PADDING, (ImageManager.getImage(Images.unitsFrame).getHeight() - CFG.PADDING) / 2, true));
                    height3 += ImageManager.getImage(Images.unitsFrame).getHeight() + i6;
                    i15++;
                } else {
                    i2 = i17;
                    i3 = i16;
                }
                i17 = i2 + 1;
                i16 = i3;
            }
            i16++;
            i14 = 0;
        }
        if (i15 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i4, height3, i10, CFG.BUTTON_HEIGHT2));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(InGame_RecruitArmy.getTitleFirstLineSide(height3, width, i13));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
        int i18 = 0;
        int i19 = 0;
        while (i18 < ArmyManager.iUnitsTypesSize) {
            int i20 = i19;
            int i21 = 0;
            while (i21 < ArmyManager.lArmySize.get(i18).intValue()) {
                if (ArmyManager.lUnitsTypes.get(i18).Line == 1 && Game.getCiv(civID).isUnitBest(i18, i21)) {
                    i = i21;
                    arrayList.add(new AnonymousClass5(i18, i21, i4, height4, i10 - CFG.BUTTON_HEIGHT, true));
                    int i22 = i18;
                    arrayList.add(new AnonymousClass6(i22, i, true, "+", CFG.FONT_REGULAR, -1, (i10 - CFG.BUTTON_HEIGHT) + i4 + CFG.PADDING, height4, CFG.BUTTON_HEIGHT - CFG.PADDING, (ImageManager.getImage(Images.unitsFrame).getHeight() - CFG.PADDING) / 2, true));
                    arrayList.add(new AnonymousClass7(i22, i, false, "-", CFG.FONT_REGULAR, -1, (i10 - CFG.BUTTON_HEIGHT) + i4 + CFG.PADDING, ((ImageManager.getImage(Images.unitsFrame).getHeight() - CFG.PADDING) / 2) + height4 + CFG.PADDING, CFG.BUTTON_HEIGHT - CFG.PADDING, (ImageManager.getImage(Images.unitsFrame).getHeight() - CFG.PADDING) / 2, true));
                    height4 += ImageManager.getImage(Images.unitsFrame).getHeight() + i6;
                    i20++;
                } else {
                    i = i21;
                }
                i21 = i + 1;
                i13 = i13;
            }
            i18++;
            i19 = i20;
        }
        int i23 = i13;
        if (i19 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i4, height4, i10, CFG.BUTTON_HEIGHT2));
            height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(InGame_RecruitArmy.getTitleSecondLine(height4, width, i23));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
        int i24 = 0;
        for (int i25 = 0; i25 < ArmyManager.iUnitsTypesSize; i25++) {
            int i26 = 0;
            while (i26 < ArmyManager.lArmySize.get(i25).intValue()) {
                if (ArmyManager.lUnitsTypes.get(i25).Line > 1 && Game.getCiv(civID).isUnitBest(i25, i26)) {
                    arrayList.add(new AnonymousClass8(i25, i26, i4, height5, i10 - CFG.BUTTON_HEIGHT, true));
                    int i27 = i25;
                    int i28 = i26;
                    arrayList.add(new AnonymousClass9(i27, i28, true, "+", CFG.FONT_REGULAR, -1, (i10 - CFG.BUTTON_HEIGHT) + i4 + CFG.PADDING, height5, CFG.BUTTON_HEIGHT - CFG.PADDING, (ImageManager.getImage(Images.unitsFrame).getHeight() - CFG.PADDING) / 2, true));
                    arrayList.add(new AnonymousClass10(i27, i28, false, "-", CFG.FONT_REGULAR, -1, (i10 - CFG.BUTTON_HEIGHT) + i4 + CFG.PADDING, ((ImageManager.getImage(Images.unitsFrame).getHeight() - CFG.PADDING) / 2) + height5 + CFG.PADDING, CFG.BUTTON_HEIGHT - CFG.PADDING, (ImageManager.getImage(Images.unitsFrame).getHeight() - CFG.PADDING) / 2, true));
                    height5 += ImageManager.getImage(Images.unitsFrame).getHeight() + i6;
                    i24++;
                }
                i26++;
                width = width;
            }
        }
        int i29 = width;
        if (i24 == 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i4, height5, i10, CFG.BUTTON_HEIGHT2));
            height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int iMin = Math.min(height5, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, i29, Math.max(height5, iMin)));
        initMenu(new MenuTitleIMG("", false, false, Images.title1Red), i5, height, i29, iMin, arrayList, true, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.recruitArmyOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.recruitArmyOver).getWidth() / 2)) + i, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.recruitArmyOver).getHeight()));
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText((Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) ? Game.lang.get("LandUnits") : Game.getProvince(Game.iActiveProvince).getProvinceName());
    }
}
