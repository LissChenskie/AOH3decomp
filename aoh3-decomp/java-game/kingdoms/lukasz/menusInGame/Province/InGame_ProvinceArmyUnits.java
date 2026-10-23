package aoc.kingdoms.lukasz.menusInGame.Province;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.ColonizationManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmy;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Vertical;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ProvinceArmyUnits extends Menu {
    public static int iActiveID = 0;
    public static String key = "";
    public static int mPosX;
    public static int mPosY;
    public static int mWidth;
    public static int tDivID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyUnits$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Vertical {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            try {
                if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 51) {
                    Game.menuManager.setVisibleInGame_PopUp(false);
                } else {
                    InGame_Battlefield.armyDivision = Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmyUnits.iActiveID).iProvinceID).getArmy(Game.activeArmy.get(InGame_ProvinceArmyUnits.iActiveID).key);
                    if (InGame_Battlefield.armyDivision != null) {
                        Game.menuManager.rebuildInGame_Battlefield();
                    } else {
                        Game.menuManager.setVisibleInGame_PopUp(false);
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ArmyDeployment"), Colors.HOVER_GOLD));
            boolean z = false;
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battle, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmyUnits.iActiveID).iProvinceID).getArmy(InGame_ProvinceArmyUnits.tDivID).iArmyRegimentSize; i3++) {
                try {
                    if (!ArmyManager.lArmy.get(Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmyUnits.iActiveID).iProvinceID).getArmy(InGame_ProvinceArmyUnits.tDivID).lArmyRegiment.get(i3).uID).get(Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmyUnits.iActiveID).iProvinceID).getArmy(InGame_ProvinceArmyUnits.tDivID).lArmyRegiment.get(i3).aID).isSettler) {
                        if (ArmyManager.lUnitsTypes.get(Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmyUnits.iActiveID).iProvinceID).getArmy(InGame_ProvinceArmyUnits.tDivID).lArmyRegiment.get(i3).uID).Line < 2) {
                            i++;
                        } else if (ArmyManager.lUnitsTypes.get(Game.getProvince(Game.activeArmy.get(InGame_ProvinceArmyUnits.iActiveID).iProvinceID).getArmy(InGame_ProvinceArmyUnits.tDivID).lArmyRegiment.get(i3).uID).Line == 2) {
                            i2++;
                        }
                    }
                } catch (Exception unused) {
                }
            }
            int i4 = Game.activeArmy.get(InGame_ProvinceArmyUnits.iActiveID).iCivID;
            int battleWidth = BattleManager.getBattleWidth(i4);
            if (i >= battleWidth || i2 >= battleWidth) {
                if ((i < battleWidth || i2 - 4 >= battleWidth) && i2 >= battleWidth && i - 4 < battleWidth) {
                    z = true;
                }
            } else if (i2 > i - 3 || (i == 0 && i2 > 1)) {
                z = true;
            } else if (i2 == 0) {
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(QefTqRjwAJmEDy.qnZscrBtQLlQL) + ": ", "" + i, Game_Calendar.IMG_MANPOWER, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, z ? Colors.HOVER_NEGATIVE : Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("SecondLine") + ": ", "" + i2, Game_Calendar.IMG_MANPOWER, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, !z ? Colors.HOVER_NEGATIVE : Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BattleWidth") + ": ", "" + BattleManager.getBattleWidth(i4), Images.battleWidth, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine1"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("SecondLine3"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyUnits$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonArmy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int armyKeyID;
            if (this.iCivID == Game.player.iCivID) {
                if (!ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).isSettler) {
                    if (Game.findArmy_FullCheck(this.iCivID, InGame_ProvinceArmyUnits.key) != null) {
                        InGame_RecruitArmy.key = InGame_ProvinceArmyUnits.key;
                        Game.menuManager.setVisibleInGame_ProvinceArmy(false);
                        Game.menuManager.rebuildInGame_RecruitSameType();
                        return;
                    }
                    return;
                }
                int i = -1;
                for (int i2 = Game.activeArmySize - 1; i2 >= 0; i2--) {
                    if (Game.getProvince(Game.activeArmy.get(i2).iProvinceID).getCivID() == 0 && (armyKeyID = Game.getProvince(Game.activeArmy.get(i2).iProvinceID).getArmyKeyID(Game.activeArmy.get(i2).key)) >= 0 && Game.getProvince(Game.activeArmy.get(i2).iProvinceID).getArmy(armyKeyID).civID == Game.player.iCivID && ColonizationManager.establishSettlement(Game.player.iCivID, Game.activeArmy.get(i2).iProvinceID, 0)) {
                        Game.menuManager.setVisibleInGame_ProvinceArmy(false);
                        InGame_Info.iCivID = Game.player.iCivID;
                        InGame_Info.iCivID2 = 0;
                        Game.menuManager.rebuildInGame_Info(Game.lang.get("SettlementEstablished") + ": " + Game.getProvince(Game.activeArmy.get(i2).iProvinceID).getProvinceName(), Game.lang.get("Population") + ": " + CFG.getNumberWithSpaces("" + Game.getProvince(Game.activeArmy.get(i2).iProvinceID).getPopulationTotal()));
                        InGame_Info.imgID = Images.infoCrown;
                        i = Game.activeArmy.get(i2).iProvinceID;
                    }
                }
                if (i >= 0) {
                    Game.clearActiveArmy();
                    Game.setActiveProvinceID(i);
                    Game.menuManager.rebuildInGame_ProvinceInfo(true);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyUnits$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonArmy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int armyKeyID;
            if (this.iCivID == Game.player.iCivID) {
                if (!ArmyManager.lArmy.get(this.iUnitTypeID).get(this.iArmyID).isSettler) {
                    if (Game.findArmy_FullCheck(this.iCivID, InGame_ProvinceArmyUnits.key) != null) {
                        InGame_RecruitArmy.key = InGame_ProvinceArmyUnits.key;
                        Game.menuManager.setVisibleInGame_ProvinceArmy(false);
                        Game.menuManager.rebuildInGame_RecruitSameType();
                        return;
                    }
                    return;
                }
                int i = -1;
                for (int i2 = Game.activeArmySize - 1; i2 >= 0; i2--) {
                    if (Game.getProvince(Game.activeArmy.get(i2).iProvinceID).getCivID() == 0 && (armyKeyID = Game.getProvince(Game.activeArmy.get(i2).iProvinceID).getArmyKeyID(Game.activeArmy.get(i2).key)) >= 0 && Game.getProvince(Game.activeArmy.get(i2).iProvinceID).getArmy(armyKeyID).civID == Game.player.iCivID && ColonizationManager.establishSettlement(Game.player.iCivID, Game.activeArmy.get(i2).iProvinceID, 0)) {
                        Game.menuManager.setVisibleInGame_ProvinceArmy(false);
                        InGame_Info.iCivID = Game.player.iCivID;
                        InGame_Info.iCivID2 = 0;
                        Game.menuManager.rebuildInGame_Info(Game.lang.get(MQYGMkZOAcS.Oqnh) + ": " + Game.getProvince(Game.activeArmy.get(i2).iProvinceID).getProvinceName(), Game.lang.get("Population") + ": " + CFG.getNumberWithSpaces("" + Game.getProvince(Game.activeArmy.get(i2).iProvinceID).getPopulationTotal()));
                        InGame_Info.imgID = Images.infoCrown;
                        i = Game.activeArmy.get(i2).iProvinceID;
                    }
                }
                if (i >= 0) {
                    Game.clearActiveArmy();
                    Game.setActiveProvinceID(i);
                    Game.menuManager.rebuildInGame_ProvinceInfo(true);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0651  */
    /* JADX WARN: Code duplicated, block: B:50:0x019d  */
    /* JADX WARN: Code duplicated, block: B:55:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:61:0x01ef  */
    /* JADX WARN: Multi-variable type inference failed */
    public InGame_ProvinceArmyUnits() {
        int i;
        int i2;
        String str;
        float f;
        String str2;
        float f2;
        String str3;
        int i3;
        boolean z;
        ArrayList arrayList = new ArrayList();
        int width = CFG.PADDING;
        int i4 = CFG.PADDING;
        int width2 = CFG.PADDING;
        int i5 = CFG.PADDING;
        ImageManager.getImage(Images.generalFrame).getWidth();
        if (Game.activeArmySize > 0) {
            try {
                if (tDivID >= Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmySize()) {
                    tDivID = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmyKeyID(Game.activeArmy.get(iActiveID).key);
                }
                if (tDivID >= 0) {
                    try {
                        if (GameValues.info.ENABLE_PROVINCE_ARMY_COMPOSITION_INFO && Game_Calendar.TURN_ID < GameValues.info.ENABLE_PROVINCE_ARMY_COMPOSITION_INFO_UNTIL_TURN_ID && (i3 = Game.activeArmy.get(iActiveID).iCivID) == Game.player.iCivID) {
                            int i6 = 0;
                            int i7 = 0;
                            for (int i8 = 0; i8 < Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).iArmyRegimentSize; i8++) {
                                if (!ArmyManager.lArmy.get(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i8).uID).get(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i8).aID).isSettler) {
                                    if (ArmyManager.lUnitsTypes.get(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i8).uID).Line < 2) {
                                        i6++;
                                    } else if (ArmyManager.lUnitsTypes.get(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i8).uID).Line == 2) {
                                        i7++;
                                    }
                                }
                            }
                            int battleWidth = BattleManager.getBattleWidth(i3);
                            if (i6 >= battleWidth || i7 >= battleWidth) {
                                int i9 = i6;
                                if ((i9 < battleWidth || i7 - 4 >= battleWidth) && (i7 < battleWidth || i9 - 4 >= battleWidth)) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                            } else {
                                double d = i7;
                                double d2 = i6;
                                int i10 = i6;
                                if (d <= Math.max(3.0d, Math.ceil(Math.max(i6, i7) * 0.2f)) + d2 && d2 <= d + Math.max(3.0d, Math.ceil(Math.max(i10, i7) * 0.2f)) && ((i10 != 0 || i7 <= 3) && (i7 != 0 || i10 <= 3))) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                            }
                            if (z) {
                                try {
                                    arrayList.add(new AnonymousClass1(Game.lang.get("ArmyComposition"), Images.information, 0, 0, i4, CFG.TEXT_HEIGHT + (CFG.PADDING * 2), (ButtonArmy.getButtonHeight() * 2) + CFG.PADDING));
                                    i = 0;
                                    width = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + 0;
                                    width2 = width;
                                } catch (Exception e) {
                                    e = e;
                                    i = 0;
                                    width = 0;
                                    width2 = 0;
                                    try {
                                        CFG.exceptionStack(e);
                                    } catch (Exception e2) {
                                        e = e2;
                                        CFG.exceptionStack(e);
                                    }
                                }
                            } else {
                                i = 0;
                            }
                        } else {
                            i = 0;
                        }
                        while (true) {
                            int i11 = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).iArmyRegimentSize;
                            str = IwYCCQBuFGwl.uFzP;
                            if (i2 >= i11) {
                                break;
                            }
                            if (ArmyManager.lUnitsTypes.get(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i2).uID).Line < 2) {
                                int i12 = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i2).num;
                                int i13 = 1;
                                for (int i14 = i2 + 1; i14 < Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).iArmyRegimentSize && Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i2).uID == Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i14).uID && Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i2).aID == Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i14).aID; i14++) {
                                    i2++;
                                    i13++;
                                    i12 += Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i2).num;
                                }
                                int i15 = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).civID;
                                if (!Game.FOG_OF_WAR || !GameValues.fog.HIDE_MANPOWER || i15 == Game.player.iCivID || DiplomacyManager.isAlly(i15, Game.player.iCivID)) {
                                    f2 = i12 / (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * i13);
                                    str3 = str + i12;
                                } else {
                                    str3 = GameValues.fog.TEXT_UNKNOWN_MANPOWER;
                                    f2 = -1.0f;
                                }
                                arrayList.add(new AnonymousClass2(str3, i13, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).civID, width, i4, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i2).uID, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i2).aID, i2, Game.activeArmy.get(iActiveID).iProvinceID, f2));
                                width += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                            }
                            i2++;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        i = 0;
                    }
                    i2 = i;
                    int buttonHeight = i4 + ButtonArmy.getButtonHeight() + CFG.PADDING;
                    int i16 = i;
                    while (i16 < Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).iArmyRegimentSize) {
                        if (ArmyManager.lUnitsTypes.get(Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i16).uID).Line >= 2) {
                            int i17 = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i16).num;
                            int i18 = 1;
                            for (int i19 = i16 + 1; i19 < Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).iArmyRegimentSize && Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i16).uID == Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i19).uID && Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i16).aID == Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i19).aID; i19++) {
                                i16++;
                                i18++;
                                i17 += Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i16).num;
                            }
                            int i20 = Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).civID;
                            if (!Game.FOG_OF_WAR || !GameValues.fog.HIDE_MANPOWER || i20 == Game.player.iCivID || DiplomacyManager.isAlly(i20, Game.player.iCivID)) {
                                f = i17 / (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE * i18);
                                str2 = str + i17;
                            } else {
                                str2 = GameValues.fog.TEXT_UNKNOWN_MANPOWER;
                                f = -1.0f;
                            }
                            arrayList.add(new AnonymousClass3(str2, i18, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).civID, width2, buttonHeight, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i16).uID, Game.getProvince(Game.activeArmy.get(iActiveID).iProvinceID).getArmy(tDivID).lArmyRegiment.get(i16).aID, i16, Game.activeArmy.get(iActiveID).iProvinceID, f));
                            width2 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        }
                        i16++;
                    }
                } else {
                    i = 0;
                }
            } catch (Exception e4) {
                e = e4;
                i = 0;
            }
        } else {
            i = 0;
        }
        int size = arrayList.size();
        int i21 = i;
        int posY = i21;
        while (i21 < size) {
            if (posY < arrayList.get(i21).getPosY() + arrayList.get(i21).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i21).getPosY() + arrayList.get(i21).getHeight() + CFG.PADDING;
            }
            i21++;
        }
        initMenu(null, mPosX, mPosY, mWidth, Math.max(CFG.PADDING, posY), arrayList, false);
        this.drawScrollPositionAlways = i;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosX() {
        return super.getMenuPosX() + InGame_ProvinceArmy.nTranslateX;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosY() {
        return super.getMenuPosY() + InGame_ProvinceArmy.nTranslateY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosX() {
        return super.getPosX() + InGame_ProvinceArmy.nTranslateX;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosY() {
        return super.getPosY() + InGame_ProvinceArmy.nTranslateY + InGame_ProvinceArmy.chooseProvinceExtraY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameProvinceArmy();
    }
}
