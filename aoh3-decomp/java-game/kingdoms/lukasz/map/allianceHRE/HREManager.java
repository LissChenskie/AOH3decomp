package aoc.kingdoms.lukasz.map.allianceHRE;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamAchievementsManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationBonuses;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Texture;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class HREManager {
    public static final int TYPE_OF_ALLIANCE_HRE = 0;
    public static int numOfReforms = 15;
    public static List<Image> reformsIMG = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.allianceHRE.HREManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.getCiv(this.id).disposeFlag();
            Game.getCiv(this.id).loadFlag();
        }
    }

    public static List<Integer> getCivs(int i) {
        ArrayList arrayList = new ArrayList();
        for (int size = Game.alliancesSpecial.get(i).firstTier.size() - 1; size >= 0; size--) {
            arrayList.add(Game.alliancesSpecial.get(i).firstTier.get(size));
        }
        for (int size2 = Game.alliancesSpecial.get(i).secondTier.size() - 1; size2 >= 0; size2--) {
            arrayList.add(Game.alliancesSpecial.get(i).secondTier.get(size2));
        }
        return arrayList;
    }

    public static MenuElement_Hover getHoverReform(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Reform" + i2), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.hre, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (GameValues.hre.HRE_REFORM_COST_REQUIRED_TECH[i2] >= 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RequiredTechnology") + ": ", TechnologyTree.lTechnology.get(GameValues.hre.HRE_REFORM_COST_REQUIRED_TECH[i2]).Name, Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (GameValues.hre.HRE_REFORM_COST_GOLD[i2] > 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", CFG.getPrecision2(GameValues.hre.HRE_REFORM_COST_GOLD[i2], 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DiplomacyPoints") + ": ", CFG.getPrecision2(GameValues.hre.HRE_REFORM_COST_DIPLOMACY[i2], 10), Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("LegacyPoints") + ": ", CFG.getPrecision2(GameValues.hre.HRE_REFORM_COST_LEGACY[i2], 10), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (i2 == 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncomeEconomy") + ": ", CFG.getPrecision2(GameValues.hre.HRE_BONUS_R0 * 100.0f, 10) + "%", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", Game.lang.get("XDays", GameValues.hre.HRE_BONUS_R0_DAYS), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 1) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DevelopInfrastructure") + ": ", Game.lang.get("Provinces") + ": " + GameValues.hre.HRE_BONUS_R1, Images.infrastructure, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 2) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Opinion") + ": " + CFG.getPrecision2(GameValues.hre.HRE_BONUS_R2_OPINION, 10) + ": ", Game.lang.get("Civilizations") + ": " + GameValues.hre.HRE_BONUS_R2_CIVS, Images.relations, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 3) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", CFG.getPrecision2(GameValues.hre.HRE_BONUS_R3 * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", Game.lang.get("XDays", GameValues.hre.HRE_BONUS_R3_DAYS), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 4) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncomeEconomy") + ": ", CFG.getPrecision2(GameValues.hre.HRE_BONUS_R4 * 100.0f, 10) + "%", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", Game.lang.get("XDays", GameValues.hre.HRE_BONUS_R4_DAYS), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 5) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProductionEfficiency") + ": ", CFG.getPrecision2(GameValues.hre.HRE_BONUS_R5, 10) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", Game.lang.get("XDays", GameValues.hre.HRE_BONUS_R5_DAYS), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 7) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ImproveRelationsModifier") + ": ", "+" + CFG.getPrecision2(GameValues.hre.HRE_BONUS_R7, 10) + "%", Images.relations, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", Game.lang.get("XDays", GameValues.hre.HRE_BONUS_R7_DAYS), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 8) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", CFG.getPrecision2(GameValues.hre.HRE_BONUS_R8, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", Game.lang.get("XDays", GameValues.hre.HRE_BONUS_R8_DAYS), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 9) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", CFG.getPrecision2(GameValues.hre.HRE_BONUS_R9, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", Game.lang.get("XDays", GameValues.hre.HRE_BONUS_R9_DAYS), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 10) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsAttack") + ": ", CFG.getPrecision2(GameValues.hre.HRE_BONUS_R10, 1), Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", Game.lang.get("XDays", GameValues.hre.HRE_BONUS_R10_DAYS), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 11) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + ": ", CFG.getPrecision2(GameValues.hre.HRE_BONUS_R11, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", Game.lang.get("XDays", GameValues.hre.HRE_BONUS_R11_DAYS), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 == 12) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceMaintenance") + ": ", CFG.getPrecision2(GameValues.hre.HRE_BONUS_R12, 100) + "%", Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", Game.lang.get("XDays", GameValues.hre.HRE_BONUS_R12_DAYS), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i2 != 13 && i2 == 14) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("Reform14.d"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return new MenuElement_Hover(arrayList);
    }

    public static float getIncome_Emperor(int i) {
        return (Game.alliancesSpecial.get(i).getNumOfCivilizations_FirstTier() + Game.alliancesSpecial.get(i).getNumOfCivilizations_SecondTier()) * GameValues.hre.HRE_EMPEROR_INCOME;
    }

    public static int getManpower_Emperor(int i) {
        return (int) ((Game.alliancesSpecial.get(i).getNumOfCivilizations_FirstTier() + Game.alliancesSpecial.get(i).getNumOfCivilizations_SecondTier()) * GameValues.hre.HRE_EMPEROR_MANPOWER);
    }

    public static final void loadReformsImages() {
        for (int i = 0; i < numOfReforms; i++) {
            reformsIMG.add(new Image(ImageManager.loadTexture_RGB888(CFG.FILE_UI_PATH + CFG.getRescouresPath() + CFG.FILE_UI_HRE_PATH + i + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge));
        }
    }

    public static final boolean passReform(int i, int i2) {
        int i3 = 0;
        if (passReform_Diplomacy(i, i2) || passReform_Gold(i, i2) || passReform_Legacy(i, i2) || passReform_ReformsPassed(i, i2) || passReform_RequiredTech(i, i2)) {
            return false;
        }
        try {
            if (GameValues.hre.HRE_REFORM_COST_LEGACY[i2] > 0.0f) {
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).fLegacy -= GameValues.hre.HRE_REFORM_COST_LEGACY[i2];
            }
            if (GameValues.hre.HRE_REFORM_COST_DIPLOMACY[i2] > 0.0f) {
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).fDiplomacy -= GameValues.hre.HRE_REFORM_COST_DIPLOMACY[i2];
            }
            if (GameValues.hre.HRE_REFORM_COST_GOLD[i2] > 0.0f) {
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).fGold -= GameValues.hre.HRE_REFORM_COST_GOLD[i2];
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        try {
            if (i2 == 0) {
                CivilizationBonuses civilizationBonuses = new CivilizationBonuses();
                civilizationBonuses.IncomeEconomy = GameValues.hre.HRE_BONUS_R0;
                civilizationBonuses.TempTurnID = Game_Calendar.TURN_ID + GameValues.hre.HRE_BONUS_R0_DAYS;
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addCivilizationBonus_Temporary(civilizationBonuses);
            } else if (i2 == 1) {
                ArrayList arrayList = new ArrayList();
                for (int size = Game.alliancesSpecial.get(i).firstTier.size() - 1; size >= 0; size--) {
                    if (Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(size).intValue()).getCapitalProvinceID() >= 0 && Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(size).intValue()).getCapitalProvinceID()).getCivID() == Game.alliancesSpecial.get(i).firstTier.get(size).intValue()) {
                        arrayList.add(Integer.valueOf(Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(size).intValue()).getCapitalProvinceID()));
                    }
                }
                for (int size2 = Game.alliancesSpecial.get(i).secondTier.size() - 1; size2 >= 0; size2--) {
                    if (Game.getCiv(Game.alliancesSpecial.get(i).secondTier.get(size2).intValue()).getCapitalProvinceID() >= 0 && Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(i).secondTier.get(size2).intValue()).getCapitalProvinceID()).getCivID() == Game.alliancesSpecial.get(i).secondTier.get(size2).intValue()) {
                        arrayList.add(Integer.valueOf(Game.getCiv(Game.alliancesSpecial.get(i).secondTier.get(size2).intValue()).getCapitalProvinceID()));
                    }
                }
                if (arrayList.size() > 0) {
                    while (i3 < GameValues.hre.HRE_BONUS_R1) {
                        Game.getProvince(((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue()).addDevelopInfrastructure_Free();
                        i3++;
                    }
                }
            } else if (i2 == 2) {
                List<Integer> civs = getCivs(i);
                while (i3 < GameValues.hre.HRE_BONUS_R2_CIVS && civs.size() > 0) {
                    int iNextInt = Game.oR.nextInt(civs.size());
                    Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).diplomacy.setRelation(Game.alliancesSpecial.get(i).iLeaderCivID, civs.get(iNextInt).intValue(), Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).diplomacy.getRelation(civs.get(iNextInt).intValue()) + GameValues.hre.HRE_BONUS_R2_OPINION);
                    Game.getCiv(civs.get(iNextInt).intValue()).diplomacy.setRelation(civs.get(iNextInt).intValue(), Game.alliancesSpecial.get(i).iLeaderCivID, Game.getCiv(civs.get(iNextInt).intValue()).diplomacy.getRelation(Game.alliancesSpecial.get(i).iLeaderCivID) + GameValues.hre.HRE_BONUS_R2_OPINION);
                    civs.remove(iNextInt);
                    i3++;
                }
            } else if (i2 == 3) {
                CivilizationBonuses civilizationBonuses2 = new CivilizationBonuses();
                civilizationBonuses2.MaxManpower_Percentage = GameValues.hre.HRE_BONUS_R3;
                civilizationBonuses2.TempTurnID = Game_Calendar.TURN_ID + GameValues.hre.HRE_BONUS_R3_DAYS;
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addCivilizationBonus_Temporary(civilizationBonuses2);
            } else if (i2 == 4) {
                CivilizationBonuses civilizationBonuses3 = new CivilizationBonuses();
                civilizationBonuses3.IncomeEconomy = GameValues.hre.HRE_BONUS_R4;
                civilizationBonuses3.TempTurnID = Game_Calendar.TURN_ID + GameValues.hre.HRE_BONUS_R4_DAYS;
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addCivilizationBonus_Temporary(civilizationBonuses3);
            } else if (i2 == 5) {
                CivilizationBonuses civilizationBonuses4 = new CivilizationBonuses();
                civilizationBonuses4.ProductionEfficiency = GameValues.hre.HRE_BONUS_R5;
                civilizationBonuses4.TempTurnID = Game_Calendar.TURN_ID + GameValues.hre.HRE_BONUS_R5_DAYS;
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addCivilizationBonus_Temporary(civilizationBonuses4);
            } else if (i2 == 7) {
                CivilizationBonuses civilizationBonuses5 = new CivilizationBonuses();
                civilizationBonuses5.ImproveRelationsModifier = GameValues.hre.HRE_BONUS_R7;
                civilizationBonuses5.TempTurnID = Game_Calendar.TURN_ID + GameValues.hre.HRE_BONUS_R7_DAYS;
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addCivilizationBonus_Temporary(civilizationBonuses5);
            } else if (i2 == 8) {
                CivilizationBonuses civilizationBonuses6 = new CivilizationBonuses();
                civilizationBonuses6.MonthlyIncome = GameValues.hre.HRE_BONUS_R8;
                civilizationBonuses6.TempTurnID = Game_Calendar.TURN_ID + GameValues.hre.HRE_BONUS_R8_DAYS;
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addCivilizationBonus_Temporary(civilizationBonuses6);
            } else if (i2 == 9) {
                CivilizationBonuses civilizationBonuses7 = new CivilizationBonuses();
                civilizationBonuses7.MonthlyLegacy = GameValues.hre.HRE_BONUS_R9;
                civilizationBonuses7.TempTurnID = Game_Calendar.TURN_ID + GameValues.hre.HRE_BONUS_R9_DAYS;
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addCivilizationBonus_Temporary(civilizationBonuses7);
            } else if (i2 == 10) {
                CivilizationBonuses civilizationBonuses8 = new CivilizationBonuses();
                civilizationBonuses8.GeneralAttack = (int) GameValues.hre.HRE_BONUS_R10;
                civilizationBonuses8.TempTurnID = Game_Calendar.TURN_ID + GameValues.hre.HRE_BONUS_R10_DAYS;
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addCivilizationBonus_Temporary(civilizationBonuses8);
            } else if (i2 == 11) {
                CivilizationBonuses civilizationBonuses9 = new CivilizationBonuses();
                civilizationBonuses9.MonthlyIncome = GameValues.hre.HRE_BONUS_R11;
                civilizationBonuses9.TempTurnID = Game_Calendar.TURN_ID + GameValues.hre.HRE_BONUS_R11_DAYS;
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addCivilizationBonus_Temporary(civilizationBonuses9);
            } else if (i2 == 12) {
                CivilizationBonuses civilizationBonuses10 = new CivilizationBonuses();
                civilizationBonuses10.ProvinceMaintenance = GameValues.hre.HRE_BONUS_R12;
                civilizationBonuses10.TempTurnID = Game_Calendar.TURN_ID + GameValues.hre.HRE_BONUS_R12_DAYS;
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).addCivilizationBonus_Temporary(civilizationBonuses10);
            } else if (i2 == 13) {
                while (i3 < Game.alliancesSpecial.get(i).firstTier.size()) {
                    float f = -(GameValues.hre.HRE_BONUS_R13_OPINION_MIN + Game.oR.nextInt(GameValues.hre.HRE_BONUS_R13_OPINION_RANDOM));
                    Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).diplomacy.setRelation(Game.alliancesSpecial.get(i).iLeaderCivID, Game.alliancesSpecial.get(i).firstTier.get(i3).intValue(), Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).diplomacy.getRelation(Game.alliancesSpecial.get(i).firstTier.get(i3).intValue()) + f);
                    Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(i3).intValue()).diplomacy.setRelation(Game.alliancesSpecial.get(i).firstTier.get(i3).intValue(), Game.alliancesSpecial.get(i).iLeaderCivID, Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(i3).intValue()).diplomacy.getRelation(Game.alliancesSpecial.get(i).iLeaderCivID) + f);
                    i3++;
                }
            } else if (i2 == 14) {
                uniteHRE(i);
                Game.menuManager.setVisibleInGame_PopUp(false);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        Game.alliancesSpecial.get(i).iReformsPassed++;
        return true;
    }

    public static final boolean passReform_Diplomacy(int i, int i2) {
        return GameValues.hre.HRE_REFORM_COST_DIPLOMACY[i2] > Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).fDiplomacy;
    }

    public static final boolean passReform_Gold(int i, int i2) {
        return GameValues.hre.HRE_REFORM_COST_GOLD[i2] > Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).fGold;
    }

    public static final boolean passReform_Legacy(int i, int i2) {
        return GameValues.hre.HRE_REFORM_COST_LEGACY[i2] > Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).fLegacy;
    }

    public static final boolean passReform_ReformsPassed(int i, int i2) {
        return Game.alliancesSpecial.get(i).iReformsPassed != i2;
    }

    public static final boolean passReform_RequiredTech(int i, int i2) {
        return GameValues.hre.HRE_REFORM_COST_REQUIRED_TECH[i2] >= 0 && !Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).getTechResearched(GameValues.hre.HRE_REFORM_COST_REQUIRED_TECH[i2]);
    }

    public static final void uniteHRE(int i) {
        if (Game.alliancesSpecial.get(i).iLeaderCivID > 0) {
            try {
                if (Game.alliancesSpecial.get(i).iLeaderCivID == Game.player.iCivID) {
                    SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.UNITE_HRE);
                }
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).setCivTag(Game.alliancesSpecial.get(i).FlagTag);
                Game.addSimpleTask(new AnonymousClass1("loadFlagCiv" + Game.alliancesSpecial.get(i).iLeaderCivID, Game.alliancesSpecial.get(i).iLeaderCivID));
                int i2 = Game.alliancesSpecial.get(i).iLeaderCivID;
                for (int size = Game.alliancesSpecial.get(i).firstTier.size() - 1; size >= 0; size--) {
                    try {
                        if (Game.alliancesSpecial.get(i).firstTier.get(size).intValue() != i2) {
                            Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(size).intValue()).removeAllArmies();
                        }
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
                for (int size2 = Game.alliancesSpecial.get(i).secondTier.size() - 1; size2 >= 0; size2--) {
                    try {
                        if (Game.alliancesSpecial.get(i).secondTier.get(size2).intValue() != i2) {
                            Game.getCiv(Game.alliancesSpecial.get(i).secondTier.get(size2).intValue()).removeAllArmies();
                        }
                    } catch (Exception e2) {
                        CFG.exceptionStack(e2);
                    }
                }
                for (int size3 = Game.alliancesSpecial.get(i).firstTier.size() - 1; size3 >= 0; size3--) {
                    try {
                        if (Game.alliancesSpecial.get(i).firstTier.get(size3).intValue() != i2) {
                            for (int numOfProvinces = Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(size3).intValue()).getNumOfProvinces() - 1; numOfProvinces >= 0; numOfProvinces--) {
                                Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(size3).intValue()).getProvinceID(numOfProvinces)).addCore_Just(i2);
                                Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(size3).intValue()).getProvinceID(numOfProvinces)).setCivID(i2);
                            }
                        }
                    } catch (Exception e3) {
                        CFG.exceptionStack(e3);
                    }
                }
                for (int size4 = Game.alliancesSpecial.get(i).secondTier.size() - 1; size4 >= 0; size4--) {
                    try {
                        if (Game.alliancesSpecial.get(i).secondTier.get(size4).intValue() != i2) {
                            for (int numOfProvinces2 = Game.getCiv(Game.alliancesSpecial.get(i).secondTier.get(size4).intValue()).getNumOfProvinces() - 1; numOfProvinces2 >= 0; numOfProvinces2--) {
                                Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(i).secondTier.get(size4).intValue()).getProvinceID(numOfProvinces2)).addCore_Just(i2);
                                Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(i).secondTier.get(size4).intValue()).getProvinceID(numOfProvinces2)).setCivID(i2);
                            }
                        }
                    } catch (Exception e4) {
                        CFG.exceptionStack(e4);
                    }
                }
                for (int i3 = 0; i3 < Game.getCiv(i2).getNumOfProvinces(); i3++) {
                    Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).updateHaveACore();
                    if (Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).isCapital) {
                        Game.getProvince(Game.getCiv(i2).getProvinceID(i3)).setIsCapital(Game.getCiv(i2).getProvinceID(i3) == Game.getCiv(i2).getCapitalProvinceID());
                    }
                }
                for (int size5 = Game.alliancesSpecial.get(i).firstTier.size() - 1; size5 >= 0; size5--) {
                    Game.getCiv(Game.alliancesSpecial.get(i).firstTier.get(size5).intValue()).removeInAllianceSpecial(i);
                }
                for (int size6 = Game.alliancesSpecial.get(i).secondTier.size() - 1; size6 >= 0; size6--) {
                    Game.getCiv(Game.alliancesSpecial.get(i).secondTier.get(size6).intValue()).removeInAllianceSpecial(i);
                }
                Game.getCiv(Game.alliancesSpecial.get(i).iLeaderCivID).removeInAllianceSpecial(i);
                Game.alliancesSpecial.get(i).iLeaderCivID = 0;
                Game.alliancesSpecial.get(i).firstTier.clear();
                Game.alliancesSpecial.get(i).secondTier.clear();
                Game.gameThread.addCivUpdateTotalIncomePerMonth(i2);
                Game.gameThread.addCivUpdateResearchPerMonth(i2);
                Game.gameThread.addCivUpdateLegacyPerMonth(i2);
                Game.gameThread.addCivUpdateArmyMaintenance(i2);
                Game.gameThreadTurns.addCivUpdateMaxManpower(i2);
            } catch (Exception e5) {
                CFG.exceptionStack(e5);
            }
        }
    }
}
