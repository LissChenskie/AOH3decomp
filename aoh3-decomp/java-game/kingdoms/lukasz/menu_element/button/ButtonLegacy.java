package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.LegacyManager;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menusInGame.InGame_Legacies;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonLegacy extends Button {
    public int currentLvl;
    public int iUnlockWidth;
    public int legacyID;
    public String sUnlock;

    public ButtonLegacy(int i, int i2, int i3, int i4) {
        this.legacyID = i3;
        this.currentLvl = i4;
        init(Game.lang.get(LegacyManager.legacies.get(i3).Name), CFG.FONT_REGULAR_SMALL, -1, i, i2, LegacyManager.legacyImages.get(LegacyManager.legacies.get(i3).ImageID).getWidth(), LegacyManager.legacyImages.get(LegacyManager.legacies.get(i3).ImageID).getHeight(), true, true, false, false);
        if (i4 + 1 < LegacyManager.legacies.get(i3).CostLegacy.length) {
            this.sUnlock = Game.lang.get("Unlock");
        } else {
            this.sUnlock = Game.lang.get("Max");
        }
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sUnlock);
        this.iUnlockWidth = (int) Renderer.glyphLayout.width;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        String str25;
        String str26;
        String str27;
        String str28;
        String str29;
        String str30;
        String str31;
        String str32;
        String str33;
        String str34;
        String str35;
        String str36;
        String str37;
        String str38;
        String str39;
        String str40;
        String str41;
        String str42;
        String str43;
        String str44;
        String str45;
        String str46;
        String str47;
        String str48;
        String str49;
        String str50;
        String str51;
        String str52;
        String str53;
        String str54;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(" [" + Game.lang.get("Unlocked") + ": " + (this.currentLvl + 1) + "/" + LegacyManager.legacies.get(this.legacyID).CostLegacy.length + "]", CFG.FONT_REGULAR, Colors.HOVER_RIGHT2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f = 0.0f;
        if (LegacyManager.legacies.get(this.legacyID).ConstructionCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i = 0;
            while (i < LegacyManager.legacies.get(this.legacyID).ConstructionCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).ConstructionCost[i] == 0.0f) {
                    str54 = "-";
                } else {
                    str54 = "" + (LegacyManager.legacies.get(this.legacyID).ConstructionCost[i] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).ConstructionCost[i] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str54, i == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i != LegacyManager.legacies.get(this.legacyID).ConstructionCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).AdministrationBuildingsCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdministrationBuildingsCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i2 = 0;
            while (i2 < LegacyManager.legacies.get(this.legacyID).AdministrationBuildingsCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).AdministrationBuildingsCost[i2] == 0.0f) {
                    str53 = "-";
                } else {
                    str53 = "" + (LegacyManager.legacies.get(this.legacyID).AdministrationBuildingsCost[i2] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).AdministrationBuildingsCost[i2] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str53, i2 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i2 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i2 != LegacyManager.legacies.get(this.legacyID).AdministrationBuildingsCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i2++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MilitaryBuildingsCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MilitaryBuildingsCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i3 = 0;
            while (i3 < LegacyManager.legacies.get(this.legacyID).MilitaryBuildingsCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).MilitaryBuildingsCost[i3] == 0.0f) {
                    str52 = "-";
                } else {
                    str52 = "" + (LegacyManager.legacies.get(this.legacyID).MilitaryBuildingsCost[i3] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).MilitaryBuildingsCost[i3] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str52, i3 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i3 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i3 != LegacyManager.legacies.get(this.legacyID).MilitaryBuildingsCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i3++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).EconomyBuildingsCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("EconomyBuildingsCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i4 = 0;
            while (i4 < LegacyManager.legacies.get(this.legacyID).EconomyBuildingsCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).EconomyBuildingsCost[i4] == 0.0f) {
                    str51 = "-";
                } else {
                    str51 = "" + (LegacyManager.legacies.get(this.legacyID).EconomyBuildingsCost[i4] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).EconomyBuildingsCost[i4] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str51, i4 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i4 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i4 != LegacyManager.legacies.get(this.legacyID).EconomyBuildingsCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i4++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.construction, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).ConstructionTime != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ConstructionTime") + ": ", CFG.FONT_REGULAR_SMALL));
            int i5 = 0;
            while (i5 < LegacyManager.legacies.get(this.legacyID).ConstructionTime.length) {
                if (LegacyManager.legacies.get(this.legacyID).ConstructionTime[i5] == 0.0f) {
                    str50 = "-";
                } else {
                    str50 = "" + (LegacyManager.legacies.get(this.legacyID).ConstructionTime[i5] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).ConstructionTime[i5] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str50, i5 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i5 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i5 != LegacyManager.legacies.get(this.legacyID).ConstructionTime.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i5++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildTime, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).WonderConstructionCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("WonderConstructionCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i6 = 0;
            while (i6 < LegacyManager.legacies.get(this.legacyID).WonderConstructionCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).WonderConstructionCost[i6] == 0.0f) {
                    str49 = "-";
                } else {
                    str49 = "" + (LegacyManager.legacies.get(this.legacyID).WonderConstructionCost[i6] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).WonderConstructionCost[i6] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str49, i6 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i6 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i6 != LegacyManager.legacies.get(this.legacyID).WonderConstructionCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i6++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.mapModesWonders, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MaximumAmountOfGold != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumAmountOfGold") + ": ", CFG.FONT_REGULAR_SMALL));
            int i7 = 0;
            while (i7 < LegacyManager.legacies.get(this.legacyID).MaximumAmountOfGold.length) {
                if (LegacyManager.legacies.get(this.legacyID).MaximumAmountOfGold[i7] == 0.0f) {
                    str48 = "-";
                } else {
                    str48 = "" + (LegacyManager.legacies.get(this.legacyID).MaximumAmountOfGold[i7] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).MaximumAmountOfGold[i7] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str48, i7 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i7 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i7 != LegacyManager.legacies.get(this.legacyID).MaximumAmountOfGold.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i7++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).Loot != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Loot") + ": ", CFG.FONT_REGULAR_SMALL));
            int i8 = 0;
            while (i8 < LegacyManager.legacies.get(this.legacyID).Loot.length) {
                if (LegacyManager.legacies.get(this.legacyID).Loot[i8] == 0.0f) {
                    str47 = "-";
                } else {
                    str47 = "" + (LegacyManager.legacies.get(this.legacyID).Loot[i8] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).Loot[i8] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str47, i8 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i8 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i8 != LegacyManager.legacies.get(this.legacyID).Loot.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i8++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.loot, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).TaxEfficiency != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("TaxEfficiency") + ": ", CFG.FONT_REGULAR_SMALL));
            int i9 = 0;
            while (i9 < LegacyManager.legacies.get(this.legacyID).TaxEfficiency.length) {
                if (LegacyManager.legacies.get(this.legacyID).TaxEfficiency[i9] == 0.0f) {
                    str46 = "-";
                } else {
                    str46 = "" + (LegacyManager.legacies.get(this.legacyID).TaxEfficiency[i9] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).TaxEfficiency[i9], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str46, i9 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i9 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i9 != LegacyManager.legacies.get(this.legacyID).TaxEfficiency.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i9++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.tax, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).ProvinceMaintenance != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProvinceMaintenance") + ": ", CFG.FONT_REGULAR_SMALL));
            int i10 = 0;
            while (i10 < LegacyManager.legacies.get(this.legacyID).ProvinceMaintenance.length) {
                if (LegacyManager.legacies.get(this.legacyID).ProvinceMaintenance[i10] == 0.0f) {
                    str45 = "-";
                } else {
                    str45 = "" + (LegacyManager.legacies.get(this.legacyID).ProvinceMaintenance[i10] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).ProvinceMaintenance[i10], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str45, i10 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i10 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i10 != LegacyManager.legacies.get(this.legacyID).ProvinceMaintenance.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i10++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).BuildingsMaintenanceCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingsMaintenanceCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i11 = 0;
            while (i11 < LegacyManager.legacies.get(this.legacyID).BuildingsMaintenanceCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).BuildingsMaintenanceCost[i11] == 0.0f) {
                    str44 = "-";
                } else {
                    str44 = "" + (LegacyManager.legacies.get(this.legacyID).BuildingsMaintenanceCost[i11] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).BuildingsMaintenanceCost[i11] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str44, i11 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i11 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i11 != LegacyManager.legacies.get(this.legacyID).BuildingsMaintenanceCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i11++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).ManpowerRecoverySpeed != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ManpowerRecoverySpeed") + ": ", CFG.FONT_REGULAR_SMALL));
            int i12 = 0;
            while (i12 < LegacyManager.legacies.get(this.legacyID).ManpowerRecoverySpeed.length) {
                if (LegacyManager.legacies.get(this.legacyID).ManpowerRecoverySpeed[i12] == 0.0f) {
                    str43 = "-";
                } else {
                    str43 = "" + (LegacyManager.legacies.get(this.legacyID).ManpowerRecoverySpeed[i12] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).ManpowerRecoverySpeed[i12] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str43, i12 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i12 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i12 != LegacyManager.legacies.get(this.legacyID).ManpowerRecoverySpeed.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i12++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_TIME, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MaxManpower != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumManpower") + ": ", CFG.FONT_REGULAR_SMALL));
            int i13 = 0;
            while (i13 < LegacyManager.legacies.get(this.legacyID).MaxManpower.length) {
                if (LegacyManager.legacies.get(this.legacyID).MaxManpower[i13] == 0) {
                    str42 = "-";
                } else {
                    str42 = "" + (LegacyManager.legacies.get(this.legacyID).MaxManpower[i13] > 0 ? "+" : "") + CFG.getNumberWithSpaces("" + LegacyManager.legacies.get(this.legacyID).MaxManpower[i13]) + "";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str42, i13 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i13 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i13 != LegacyManager.legacies.get(this.legacyID).MaxManpower.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i13++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_UP, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).Research != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Research") + ": ", CFG.FONT_REGULAR_SMALL));
            int i14 = 0;
            while (i14 < LegacyManager.legacies.get(this.legacyID).Research.length) {
                if (LegacyManager.legacies.get(this.legacyID).Research[i14] == 0.0f) {
                    str41 = "-";
                } else {
                    str41 = "" + (LegacyManager.legacies.get(this.legacyID).Research[i14] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).Research[i14], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str41, i14 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i14 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i14 != LegacyManager.legacies.get(this.legacyID).Research.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i14++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).ResearchPoints != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ResearchPerMonth") + ": ", CFG.FONT_REGULAR_SMALL));
            int i15 = 0;
            while (i15 < LegacyManager.legacies.get(this.legacyID).ResearchPoints.length) {
                if (LegacyManager.legacies.get(this.legacyID).ResearchPoints[i15] == 0.0f) {
                    str40 = "-";
                } else {
                    str40 = "" + (LegacyManager.legacies.get(this.legacyID).ResearchPoints[i15] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).ResearchPoints[i15], 10);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str40, i15 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i15 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i15 != LegacyManager.legacies.get(this.legacyID).ResearchPoints.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i15++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).GrowthRate != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GrowthRate") + ": ", CFG.FONT_REGULAR_SMALL));
            int i16 = 0;
            while (i16 < LegacyManager.legacies.get(this.legacyID).GrowthRate.length) {
                if (LegacyManager.legacies.get(this.legacyID).GrowthRate[i16] == 0.0f) {
                    str39 = "-";
                } else {
                    str39 = "" + (LegacyManager.legacies.get(this.legacyID).GrowthRate[i16] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).GrowthRate[i16], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str39, i16 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i16 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i16 != LegacyManager.legacies.get(this.legacyID).GrowthRate.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i16++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).IncomeProduction != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncomeProduction") + ": ", CFG.FONT_REGULAR_SMALL));
            int i17 = 0;
            while (i17 < LegacyManager.legacies.get(this.legacyID).IncomeProduction.length) {
                if (LegacyManager.legacies.get(this.legacyID).IncomeProduction[i17] == 0.0f) {
                    str38 = "-";
                } else {
                    str38 = "" + (LegacyManager.legacies.get(this.legacyID).IncomeProduction[i17] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).IncomeProduction[i17], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str38, i17 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i17 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i17 != LegacyManager.legacies.get(this.legacyID).IncomeProduction.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i17++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).InvestInEconomyCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("InvestInEconomyCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i18 = 0;
            while (i18 < LegacyManager.legacies.get(this.legacyID).InvestInEconomyCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).InvestInEconomyCost[i18] == 0.0f) {
                    str37 = "-";
                } else {
                    str37 = "" + (LegacyManager.legacies.get(this.legacyID).InvestInEconomyCost[i18] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).InvestInEconomyCost[i18] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str37, i18 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i18 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i18 != LegacyManager.legacies.get(this.legacyID).InvestInEconomyCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i18++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY_UP, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).IncreaseTaxEfficiencyCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i19 = 0;
            while (i19 < LegacyManager.legacies.get(this.legacyID).IncreaseTaxEfficiencyCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).IncreaseTaxEfficiencyCost[i19] == 0.0f) {
                    str36 = "-";
                } else {
                    str36 = "" + (LegacyManager.legacies.get(this.legacyID).IncreaseTaxEfficiencyCost[i19] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).IncreaseTaxEfficiencyCost[i19] * 100.0f, 100) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str36, i19 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i19 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i19 != LegacyManager.legacies.get(this.legacyID).IncreaseTaxEfficiencyCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i19++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.taxUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).IncreaseGrowthRateCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(HjHDSSkYG.JlkT) + ": ", CFG.FONT_REGULAR_SMALL));
            int i20 = 0;
            while (i20 < LegacyManager.legacies.get(this.legacyID).IncreaseGrowthRateCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).IncreaseGrowthRateCost[i20] == 0.0f) {
                    str35 = "-";
                } else {
                    str35 = "" + (LegacyManager.legacies.get(this.legacyID).IncreaseGrowthRateCost[i20] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).IncreaseGrowthRateCost[i20] * 100.0f, 100) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str35, i20 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i20 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i20 != LegacyManager.legacies.get(this.legacyID).IncreaseGrowthRateCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i20++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.populationGrowth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).DevelopInfrastructureCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DevelopInfrastructureCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i21 = 0;
            while (i21 < LegacyManager.legacies.get(this.legacyID).DevelopInfrastructureCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).DevelopInfrastructureCost[i21] == 0.0f) {
                    str34 = "-";
                } else {
                    str34 = "" + (LegacyManager.legacies.get(this.legacyID).DevelopInfrastructureCost[i21] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).DevelopInfrastructureCost[i21] * 100.0f, 100) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str34, i21 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i21 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i21 != LegacyManager.legacies.get(this.legacyID).DevelopInfrastructureCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i21++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.infrastructureUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).ProductionEfficiency != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ProductionEfficiency") + ": ", CFG.FONT_REGULAR_SMALL));
            int i22 = 0;
            while (i22 < LegacyManager.legacies.get(this.legacyID).ProductionEfficiency.length) {
                if (LegacyManager.legacies.get(this.legacyID).ProductionEfficiency[i22] == 0.0f) {
                    str33 = "-";
                } else {
                    str33 = "" + (LegacyManager.legacies.get(this.legacyID).ProductionEfficiency[i22] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).ProductionEfficiency[i22], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str33, i22 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i22 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i22 != LegacyManager.legacies.get(this.legacyID).ProductionEfficiency.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i22++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).GeneralAttack != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GeneralsAttack") + ": ", CFG.FONT_REGULAR_SMALL));
            int i23 = 0;
            while (i23 < LegacyManager.legacies.get(this.legacyID).GeneralAttack.length) {
                if (LegacyManager.legacies.get(this.legacyID).GeneralAttack[i23] == 0) {
                    str32 = "-";
                } else {
                    str32 = "" + (LegacyManager.legacies.get(this.legacyID).GeneralAttack[i23] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).GeneralAttack[i23], 10);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str32, i23 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i23 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i23 != LegacyManager.legacies.get(this.legacyID).GeneralAttack.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i23++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.attack, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).GeneralDefense != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GeneralsDefense") + ": ", CFG.FONT_REGULAR_SMALL));
            int i24 = 0;
            while (i24 < LegacyManager.legacies.get(this.legacyID).GeneralDefense.length) {
                if (LegacyManager.legacies.get(this.legacyID).GeneralDefense[i24] == 0) {
                    str31 = "-";
                } else {
                    str31 = "" + (LegacyManager.legacies.get(this.legacyID).GeneralDefense[i24] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).GeneralDefense[i24], 10);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str31, i24 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i24 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i24 != LegacyManager.legacies.get(this.legacyID).GeneralDefense.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i24++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.defense, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).RegimentsLimit != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RegimentsLimit") + ": ", CFG.FONT_REGULAR_SMALL));
            int i25 = 0;
            while (i25 < LegacyManager.legacies.get(this.legacyID).RegimentsLimit.length) {
                if (LegacyManager.legacies.get(this.legacyID).RegimentsLimit[i25] == 0) {
                    str30 = "-";
                } else {
                    str30 = "" + (LegacyManager.legacies.get(this.legacyID).RegimentsLimit[i25] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).RegimentsLimit[i25], 1);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str30, i25 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i25 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i25 != LegacyManager.legacies.get(this.legacyID).RegimentsLimit.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i25++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.regimentsLimit, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).BattleWidth != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BattleWidth") + ": ", CFG.FONT_REGULAR_SMALL));
            int i26 = 0;
            while (i26 < LegacyManager.legacies.get(this.legacyID).BattleWidth.length) {
                if (LegacyManager.legacies.get(this.legacyID).BattleWidth[i26] == 0) {
                    str29 = "-";
                } else {
                    str29 = "" + (LegacyManager.legacies.get(this.legacyID).BattleWidth[i26] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).BattleWidth[i26], 1);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str29, i26 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i26 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i26 != LegacyManager.legacies.get(this.legacyID).BattleWidth.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i26++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.battleWidth, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).AllCharactersLifeExpectancy != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AllCharactersLifeExpectancy") + ": ", CFG.FONT_REGULAR_SMALL));
            int i27 = 0;
            while (i27 < LegacyManager.legacies.get(this.legacyID).AllCharactersLifeExpectancy.length) {
                if (LegacyManager.legacies.get(this.legacyID).AllCharactersLifeExpectancy[i27] == 0) {
                    str28 = "-";
                } else {
                    str28 = "" + (LegacyManager.legacies.get(this.legacyID).AllCharactersLifeExpectancy[i27] > 0 ? "+" : "") + Game.lang.get("YearsX", LegacyManager.legacies.get(this.legacyID).AllCharactersLifeExpectancy[i27]);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str28, i27 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i27 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i27 != LegacyManager.legacies.get(this.legacyID).AllCharactersLifeExpectancy.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i27++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).ManpowerRecoveryFromADisbandedArmy != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ManpowerRecoveryFromADisbandedArmy") + ": ", CFG.FONT_REGULAR_SMALL));
            int i28 = 0;
            while (i28 < LegacyManager.legacies.get(this.legacyID).ManpowerRecoveryFromADisbandedArmy.length) {
                if (LegacyManager.legacies.get(this.legacyID).ManpowerRecoveryFromADisbandedArmy[i28] == 0.0f) {
                    str27 = "-";
                } else {
                    str27 = "" + (LegacyManager.legacies.get(this.legacyID).ManpowerRecoveryFromADisbandedArmy[i28] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).ManpowerRecoveryFromADisbandedArmy[i28] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str27, i28 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i28 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i28 != LegacyManager.legacies.get(this.legacyID).ManpowerRecoveryFromADisbandedArmy.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i28++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_DISBAND, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).Discipline != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Discipline") + ": ", CFG.FONT_REGULAR_SMALL));
            int i29 = 0;
            while (i29 < LegacyManager.legacies.get(this.legacyID).Discipline.length) {
                if (LegacyManager.legacies.get(this.legacyID).Discipline[i29] == 0.0f) {
                    str26 = "-";
                } else {
                    str26 = "" + (LegacyManager.legacies.get(this.legacyID).Discipline[i29] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).Discipline[i29] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str26, i29 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i29 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i29 != LegacyManager.legacies.get(this.legacyID).Discipline.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i29++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.discipline, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).UnitsAttack != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UnitsAttack") + ": ", CFG.FONT_REGULAR_SMALL));
            int i30 = 0;
            while (i30 < LegacyManager.legacies.get(this.legacyID).UnitsAttack.length) {
                if (LegacyManager.legacies.get(this.legacyID).UnitsAttack[i30] == 0) {
                    str25 = "-";
                } else {
                    str25 = "" + (LegacyManager.legacies.get(this.legacyID).UnitsAttack[i30] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).UnitsAttack[i30], 10);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str25, i30 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i30 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i30 != LegacyManager.legacies.get(this.legacyID).UnitsAttack.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i30++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.attack, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).UnitsDefense != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UnitsDefense") + ": ", CFG.FONT_REGULAR_SMALL));
            int i31 = 0;
            while (i31 < LegacyManager.legacies.get(this.legacyID).UnitsDefense.length) {
                if (LegacyManager.legacies.get(this.legacyID).UnitsDefense[i31] == 0) {
                    str24 = "-";
                } else {
                    str24 = "" + (LegacyManager.legacies.get(this.legacyID).UnitsDefense[i31] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).UnitsDefense[i31], 10);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str24, i31 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i31 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i31 != LegacyManager.legacies.get(this.legacyID).UnitsDefense.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i31++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.defense, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MaxMorale != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaxMorale") + ": ", CFG.FONT_REGULAR_SMALL));
            int i32 = 0;
            while (i32 < LegacyManager.legacies.get(this.legacyID).MaxMorale.length) {
                if (LegacyManager.legacies.get(this.legacyID).MaxMorale[i32] == 0.0f) {
                    str23 = "-";
                } else {
                    str23 = "" + (LegacyManager.legacies.get(this.legacyID).MaxMorale[i32] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).MaxMorale[i32] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str23, i32 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i32 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i32 != LegacyManager.legacies.get(this.legacyID).MaxMorale.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i32++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.morale, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).SiegeEffectiveness != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SiegeEffectiveness") + ": ", CFG.FONT_REGULAR_SMALL));
            int i33 = 0;
            while (i33 < LegacyManager.legacies.get(this.legacyID).SiegeEffectiveness.length) {
                if (LegacyManager.legacies.get(this.legacyID).SiegeEffectiveness[i33] == 0.0f) {
                    str22 = "-";
                } else {
                    str22 = "" + (LegacyManager.legacies.get(this.legacyID).SiegeEffectiveness[i33] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).SiegeEffectiveness[i33] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str22, i33 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i33 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i33 != LegacyManager.legacies.get(this.legacyID).SiegeEffectiveness.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i33++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.siege, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).ImproveRelationsModifier != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ImproveRelationsModifier") + ": ", CFG.FONT_REGULAR_SMALL));
            int i34 = 0;
            while (i34 < LegacyManager.legacies.get(this.legacyID).ImproveRelationsModifier.length) {
                if (LegacyManager.legacies.get(this.legacyID).ImproveRelationsModifier[i34] == 0.0f) {
                    str21 = "-";
                } else {
                    str21 = "" + (LegacyManager.legacies.get(this.legacyID).ImproveRelationsModifier[i34] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).ImproveRelationsModifier[i34], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str21, i34 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i34 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i34 != LegacyManager.legacies.get(this.legacyID).ImproveRelationsModifier.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i34++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.relations, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).IncomeFromVassals != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncomeFromVassals") + ": ", CFG.FONT_REGULAR_SMALL));
            int i35 = 0;
            while (i35 < LegacyManager.legacies.get(this.legacyID).IncomeFromVassals.length) {
                if (LegacyManager.legacies.get(this.legacyID).IncomeFromVassals[i35] == 0.0f) {
                    str20 = "-";
                } else {
                    str20 = "" + (LegacyManager.legacies.get(this.legacyID).IncomeFromVassals[i35] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).IncomeFromVassals[i35] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str20, i35 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i35 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i35 != LegacyManager.legacies.get(this.legacyID).IncomeFromVassals.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i35++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).DiplomacyPoints != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiplomacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
            int i36 = 0;
            while (i36 < LegacyManager.legacies.get(this.legacyID).DiplomacyPoints.length) {
                if (LegacyManager.legacies.get(this.legacyID).DiplomacyPoints[i36] == 0.0f) {
                    str19 = "-";
                } else {
                    str19 = "" + (LegacyManager.legacies.get(this.legacyID).DiplomacyPoints[i36] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).DiplomacyPoints[i36] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str19, i36 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i36 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i36 != LegacyManager.legacies.get(this.legacyID).DiplomacyPoints.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i36++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).LoanInterest != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LoanInterest") + ": ", CFG.FONT_REGULAR_SMALL));
            int i37 = 0;
            while (i37 < LegacyManager.legacies.get(this.legacyID).LoanInterest.length) {
                if (LegacyManager.legacies.get(this.legacyID).LoanInterest[i37] == 0.0f) {
                    str18 = "-";
                } else {
                    str18 = "" + (LegacyManager.legacies.get(this.legacyID).LoanInterest[i37] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).LoanInterest[i37], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str18, i37 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i37 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i37 != LegacyManager.legacies.get(this.legacyID).LoanInterest.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i37++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MaxNumberOfLoans != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumNumberOfLoans") + ": ", CFG.FONT_REGULAR_SMALL));
            int i38 = 0;
            while (i38 < LegacyManager.legacies.get(this.legacyID).MaxNumberOfLoans.length) {
                if (LegacyManager.legacies.get(this.legacyID).MaxNumberOfLoans[i38] == 0) {
                    str17 = "-";
                } else {
                    str17 = "" + (LegacyManager.legacies.get(this.legacyID).MaxNumberOfLoans[i38] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).MaxNumberOfLoans[i38], 1);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str17, i38 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i38 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i38 != LegacyManager.legacies.get(this.legacyID).MaxNumberOfLoans.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i38++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.loan, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MaxNumOfAlliances != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaxNumOfAlliances") + ": ", CFG.FONT_REGULAR_SMALL));
            int i39 = 0;
            while (i39 < LegacyManager.legacies.get(this.legacyID).MaxNumOfAlliances.length) {
                if (LegacyManager.legacies.get(this.legacyID).MaxNumOfAlliances[i39] == 0) {
                    str16 = "-";
                } else {
                    str16 = "" + (LegacyManager.legacies.get(this.legacyID).MaxNumOfAlliances[i39] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).MaxNumOfAlliances[i39], 1);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str16, i39 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i39 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i39 != LegacyManager.legacies.get(this.legacyID).MaxNumOfAlliances.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i39++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).AdvisorMaxLevel != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumAdvisorSkillLevel") + ": ", CFG.FONT_REGULAR_SMALL));
            int i40 = 0;
            while (i40 < LegacyManager.legacies.get(this.legacyID).AdvisorMaxLevel.length) {
                if (LegacyManager.legacies.get(this.legacyID).AdvisorMaxLevel[i40] == 0) {
                    str15 = "-";
                } else {
                    str15 = "" + (LegacyManager.legacies.get(this.legacyID).AdvisorMaxLevel[i40] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).AdvisorMaxLevel[i40], 1);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str15, i40 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i40 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i40 != LegacyManager.legacies.get(this.legacyID).AdvisorMaxLevel.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i40++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skill, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).AdvisorPoolSize != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdvisorPool") + ": ", CFG.FONT_REGULAR_SMALL));
            int i41 = 0;
            while (i41 < LegacyManager.legacies.get(this.legacyID).AdvisorPoolSize.length) {
                if (LegacyManager.legacies.get(this.legacyID).AdvisorPoolSize[i41] == 0) {
                    str14 = "-";
                } else {
                    str14 = "" + (LegacyManager.legacies.get(this.legacyID).AdvisorPoolSize[i41] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).AdvisorPoolSize[i41], 1);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str14, i41 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i41 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i41 != LegacyManager.legacies.get(this.legacyID).AdvisorPoolSize.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i41++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).AdvisorCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdvisorCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i42 = 0;
            while (i42 < LegacyManager.legacies.get(this.legacyID).AdvisorCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).AdvisorCost[i42] == 0.0f) {
                    str13 = "-";
                } else {
                    str13 = "" + (LegacyManager.legacies.get(this.legacyID).AdvisorCost[i42] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).AdvisorCost[i42] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str13, i42 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i42 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i42 != LegacyManager.legacies.get(this.legacyID).AdvisorCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i42++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademyForGenerals != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumLevelOfTheMilitaryAcademyForGenerals") + ": ", CFG.FONT_REGULAR_SMALL));
            int i43 = 0;
            while (i43 < LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademyForGenerals.length) {
                if (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademyForGenerals[i43] == 0) {
                    str12 = "-";
                } else {
                    str12 = "" + (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademyForGenerals[i43] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademyForGenerals[i43], 1);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str12, i43 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i43 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i43 != LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademyForGenerals.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i43++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademy != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumLevelOfTheMilitaryAcademy") + ": ", CFG.FONT_REGULAR_SMALL));
            int i44 = 0;
            while (i44 < LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademy.length) {
                if (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademy[i44] == 0) {
                    str11 = "-";
                } else {
                    str11 = "" + (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademy[i44] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademy[i44], 10);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str11, i44 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i44 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i44 != LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheMilitaryAcademy.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i44++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheSupremeCourt != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumLevelOfTheSupremeCourt") + ": ", CFG.FONT_REGULAR_SMALL));
            int i45 = 0;
            while (i45 < LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheSupremeCourt.length) {
                if (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheSupremeCourt[i45] == 0) {
                    str10 = "-";
                } else {
                    str10 = "" + (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheSupremeCourt[i45] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheSupremeCourt[i45], 10);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str10, i45 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i45 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i45 != LegacyManager.legacies.get(this.legacyID).MaximumLevelOfTheSupremeCourt.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i45++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.stability, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfCapitalCity != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumLevelOfCapitalCity") + ": ", CFG.FONT_REGULAR_SMALL));
            int i46 = 0;
            while (i46 < LegacyManager.legacies.get(this.legacyID).MaximumLevelOfCapitalCity.length) {
                if (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfCapitalCity[i46] == 0) {
                    str9 = "-";
                } else {
                    str9 = "" + (LegacyManager.legacies.get(this.legacyID).MaximumLevelOfCapitalCity[i46] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).MaximumLevelOfCapitalCity[i46], 10);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str9, i46 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i46 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i46 != LegacyManager.legacies.get(this.legacyID).MaximumLevelOfCapitalCity.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i46++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.capital, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).GeneralCost != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GeneralCost") + ": ", CFG.FONT_REGULAR_SMALL));
            int i47 = 0;
            while (i47 < LegacyManager.legacies.get(this.legacyID).GeneralCost.length) {
                if (LegacyManager.legacies.get(this.legacyID).GeneralCost[i47] == 0.0f) {
                    str8 = "-";
                } else {
                    str8 = "" + (LegacyManager.legacies.get(this.legacyID).GeneralCost[i47] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).GeneralCost[i47] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str8, i47 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i47 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i47 != LegacyManager.legacies.get(this.legacyID).GeneralCost.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i47++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).AggressiveExpansion != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(HTGgowNjn.aoSf) + ": ", CFG.FONT_REGULAR_SMALL));
            int i48 = 0;
            while (i48 < LegacyManager.legacies.get(this.legacyID).AggressiveExpansion.length) {
                if (LegacyManager.legacies.get(this.legacyID).AggressiveExpansion[i48] == 0.0f) {
                    str7 = "-";
                } else {
                    str7 = "" + (LegacyManager.legacies.get(this.legacyID).AggressiveExpansion[i48] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).AggressiveExpansion[i48], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str7, i48 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i48 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i48 != LegacyManager.legacies.get(this.legacyID).AggressiveExpansion.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i48++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.war, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).DiseaseDeathRate != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiseasesDeathRate") + ": ", CFG.FONT_REGULAR_SMALL));
            int i49 = 0;
            while (i49 < LegacyManager.legacies.get(this.legacyID).DiseaseDeathRate.length) {
                if (LegacyManager.legacies.get(this.legacyID).DiseaseDeathRate[i49] == 0.0f) {
                    str6 = "-";
                } else {
                    str6 = "" + (LegacyManager.legacies.get(this.legacyID).DiseaseDeathRate[i49] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).DiseaseDeathRate[i49] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str6, i49 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i49 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i49 != LegacyManager.legacies.get(this.legacyID).DiseaseDeathRate.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i49++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.disease, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).RecruitmentTime != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RecruitmentTime") + ": ", CFG.FONT_REGULAR_SMALL));
            int i50 = 0;
            while (i50 < LegacyManager.legacies.get(this.legacyID).RecruitmentTime.length) {
                if (LegacyManager.legacies.get(this.legacyID).RecruitmentTime[i50] == 0.0f) {
                    str5 = "-";
                } else {
                    str5 = "" + (LegacyManager.legacies.get(this.legacyID).RecruitmentTime[i50] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).RecruitmentTime[i50], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str5, i50 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i50 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i50 != LegacyManager.legacies.get(this.legacyID).RecruitmentTime.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i50++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER_TIME, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).ArmyMovementSpeed != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ArmyMovementSpeed") + ": ", CFG.FONT_REGULAR_SMALL));
            int i51 = 0;
            while (i51 < LegacyManager.legacies.get(this.legacyID).ArmyMovementSpeed.length) {
                if (LegacyManager.legacies.get(this.legacyID).ArmyMovementSpeed[i51] == 0.0f) {
                    str4 = "-";
                } else {
                    str4 = "" + (LegacyManager.legacies.get(this.legacyID).ArmyMovementSpeed[i51] > 0.0f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).ArmyMovementSpeed[i51], 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str4, i51 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i51 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i51 != LegacyManager.legacies.get(this.legacyID).ArmyMovementSpeed.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i51++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.movementSpeed, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).BuildingSlot != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdditionalBuildingsInProvince") + ": ", CFG.FONT_REGULAR_SMALL));
            int i52 = 0;
            while (i52 < LegacyManager.legacies.get(this.legacyID).BuildingSlot.length) {
                if (LegacyManager.legacies.get(this.legacyID).BuildingSlot[i52] == 0) {
                    str3 = "-";
                } else {
                    str3 = "" + (LegacyManager.legacies.get(this.legacyID).BuildingSlot[i52] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).BuildingSlot[i52], 1);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str3, i52 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i52 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i52 != LegacyManager.legacies.get(this.legacyID).BuildingSlot.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i52++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).MaxInfrastructure != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumInfrastructureLevel") + ": ", CFG.FONT_REGULAR_SMALL));
            int i53 = 0;
            while (i53 < LegacyManager.legacies.get(this.legacyID).MaxInfrastructure.length) {
                if (LegacyManager.legacies.get(this.legacyID).MaxInfrastructure[i53] == 0) {
                    str2 = "-";
                } else {
                    str2 = "" + (LegacyManager.legacies.get(this.legacyID).MaxInfrastructure[i53] > 0 ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).MaxInfrastructure[i53], 10);
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str2, i53 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i53 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i53 != LegacyManager.legacies.get(this.legacyID).MaxInfrastructure.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i53++;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.infrastructure, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (LegacyManager.legacies.get(this.legacyID).Devastation != null) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Devastation") + ": ", CFG.FONT_REGULAR_SMALL));
            int i54 = 0;
            while (i54 < LegacyManager.legacies.get(this.legacyID).Devastation.length) {
                if (LegacyManager.legacies.get(this.legacyID).Devastation[i54] == f) {
                    str = "-";
                } else {
                    str = "" + (LegacyManager.legacies.get(this.legacyID).Devastation[i54] > f ? "+" : "") + CFG.getPrecision2(LegacyManager.legacies.get(this.legacyID).Devastation[i54] * 100.0f, 10) + "%";
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Text(str, i54 == this.currentLvl ? CFG.FONT_BOLD_SMALL : CFG.FONT_REGULAR_SMALL, i54 == this.currentLvl ? Colors.HOVER_POSITIVE : Colors.HOVER_RIGHT));
                if (i54 != LegacyManager.legacies.get(this.legacyID).Devastation.length - 1) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" / ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                }
                i54++;
                f = 0.0f;
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.devastation, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (this.currentLvl + 1 >= LegacyManager.legacies.get(this.legacyID).CostLegacy.length) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Max"), CFG.FONT_REGULAR_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + LegacyManager.legacies.get(this.legacyID).CostLegacy[this.currentLvl + 1], CFG.FONT_BOLD_SMALL, Game.getCiv(Game.player.iCivID).fLegacy >= ((float) LegacyManager.legacies.get(this.legacyID).CostLegacy[this.currentLvl + 1]) ? Colors.HOVER_GOLD : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (this.currentLvl == LegacyManager.legacies.get(this.legacyID).CostLegacy.length - 1 || getIsHovered() || z) {
            LegacyManager.legacyImages.get(LegacyManager.legacies.get(this.legacyID).ImageID).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        } else {
            spriteBatch.setShader(Renderer.shaderBlackWhite);
            LegacyManager.legacyImages.get(LegacyManager.legacies.get(this.legacyID).ImageID).draw(spriteBatch, getPosX() + i, getPosY() + i2);
            spriteBatch.setShader(Renderer.shaderDefault);
            if (this.currentLvl >= 0) {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (((this.currentLvl + 1) / LegacyManager.legacies.get(this.legacyID).CostLegacy.length) * 0.75f) + 0.25f));
                LegacyManager.legacyImages.get(LegacyManager.legacies.get(this.legacyID).ImageID).draw(spriteBatch, getPosX() + i, getPosY() + i2);
                spriteBatch.setColor(Color.WHITE);
            }
        }
        if (InGame_Legacies.bgAlpha < 1.0f) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (1.0f - InGame_Legacies.bgAlpha) / 4.0f));
            spriteBatch.setShader(Renderer.shaderAlpha);
            LegacyManager.legacyImages.get(LegacyManager.legacies.get(this.legacyID).ImageID).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, LegacyManager.legacyImages.get(LegacyManager.legacies.get(this.legacyID).ImageID).getWidth(), LegacyManager.legacyImages.get(LegacyManager.legacies.get(this.legacyID).ImageID).getHeight(), false, true);
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, LegacyManager.legacyImages.get(LegacyManager.legacies.get(this.legacyID).ImageID).getWidth(), LegacyManager.legacyImages.get(LegacyManager.legacies.get(this.legacyID).ImageID).getHeight());
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.8f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + getHeight() + i2, getWidth(), CFG.PADDING);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (!getIsHovered()) {
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.textPosition.getTextPosition() + i, (((getPosY() + getHeight()) - getTextHeight()) - (CFG.PADDING * 2)) + i2, getColor(z));
            return;
        }
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.5f));
        Renderer.drawBoxCornerAlpha(spriteBatch, (((getPosX() - CFG.PADDING) + (getWidth() / 2)) - (this.iUnlockWidth / 2)) + i, (((getPosY() - (CFG.PADDING * 3)) + getHeight()) - getTextHeight()) + i2, this.iUnlockWidth + (CFG.PADDING * 2), getTextHeight() + (CFG.PADDING * 2));
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sUnlock, ((getPosX() + (getWidth() / 2)) - (this.iUnlockWidth / 2)) + i, (((getPosY() + getHeight()) - getTextHeight()) - (CFG.PADDING * 2)) + i2, Colors.COLOR_TEXT_MODIFIER_POSITIVE);
        spriteBatch.setColor(ProvinceDraw.progressBarBG);
        ImageManager.getImage(Images.levelMask).draw(spriteBatch, getPosX() + CFG.PADDING + i, (((getPosY() + getHeight()) - CFG.PADDING) - ImageManager.getImage(Images.levelFrame).getHeight()) + i2);
        if (this.currentLvl >= 0) {
            spriteBatch.setColor(ProvinceDraw.progressBar);
            ImageManager.getImage(Images.levelMask).draw2(spriteBatch, getPosX() + CFG.PADDING + i, (((getPosY() + getHeight()) - CFG.PADDING) - ImageManager.getImage(Images.levelFrame).getHeight()) + i2, (ImageManager.getImage(Images.levelMask).getWidth() * (this.currentLvl + 1)) / LegacyManager.legacies.get(this.legacyID).CostLegacy.length, ImageManager.getImage(Images.levelMask).getHeight());
        }
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.levelFrame).draw(spriteBatch, getPosX() + CFG.PADDING + i, (((getPosY() + getHeight()) - CFG.PADDING) - ImageManager.getImage(Images.levelFrame).getHeight()) + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorTopStats4(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.legacyID;
    }
}
