package aoc.kingdoms.lukasz.menusInGame.Civ;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Civ_AI {
    public static final List<MenuElement> getMenuElements(int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        int i4 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        String str = hQfu.nDJbHHQsOZq;
        arrayList.add(new Text_Title_v2_TextLR("AI_PrepareForWarSize", str + Game.getCiv(i).aiCivDiplomacy.w.size(), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, i2, i3 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
        int height = i2 + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        for (int i5 = 0; i5 < Game.getCiv(i).aiCivDiplomacy.w.size(); i5++) {
            arrayList.add(new Text_Desc2_Special(Game.getCiv(Game.getCiv(i).aiCivDiplomacy.w.get(i5).c).getCivName(), i4, height, i3 - (i4 * 2)));
            height += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        }
        arrayList.add(new Text_Title_v2_TextLR("AI_PrepareForAllianceSize", str + Game.getCiv(i).aiCivDiplomacy.p.size(), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height, i3 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
        int height2 = height + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        for (int i6 = 0; i6 < Game.getCiv(i).aiCivDiplomacy.p.size(); i6++) {
            arrayList.add(new Text_Desc2_Special(Game.getCiv(Game.getCiv(i).aiCivDiplomacy.p.get(i6).c).getCivName(), i4, height2, i3 - (i4 * 2)));
            height2 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        }
        arrayList.add(new Text_Title_v2_TextLR("MergeTasksSize", str + Game.getCiv(i).aiMerge.aiMergeTasks.size(), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height2, i3 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
        int height3 = height2 + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR("MoveUnits", str + Game.getCiv(i).getMoveUnitsSize(), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, i3 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
        int height4 = height3 + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR("AI_CreateNewArmy_Task", str + Game.getCiv(i).aiCivCreateNewArmy.cNA.size(), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height4, i3 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
        int height5 = height4 + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        if (Game.getCiv(i).aiCivCreateNewArmy.cNA.size() > 0) {
            for (int i7 = 0; i7 < Game.getCiv(i).aiCivCreateNewArmy.cNA.size(); i7++) {
                int i8 = i3 - (i4 * 2);
                arrayList.add(new Text_Desc2("#" + i7 + " -> RegimentsLeft: " + Game.getCiv(i).aiCivCreateNewArmy.cNA.get(i7).rL, i4, height5, i8));
                height5 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
                for (int i9 = 0; i9 < Game.getCiv(i).aiCivCreateNewArmy.cNA.get(i7).cre.size(); i9++) {
                    arrayList.add(new Text_Desc2_Special(ArmyManager.lArmy.get(Game.getCiv(i).aiCivCreateNewArmy.cNA.get(i7).cre.get(i9).u).get(Game.getCiv(i).aiCivCreateNewArmy.cNA.get(i7).cre.get(i9).a).Name + " -> " + Game.getCiv(i).aiCivCreateNewArmy.cNA.get(i7).cre.get(i9).n, i4, height5, i8));
                    height5 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
                }
            }
        }
        String str2 = Game.lang.get("Recruit") + " -> " + Game.lang.get(gpVDKipRURuzw.MXztwwzGvgvEBbM);
        StringBuilder sbAppend = new StringBuilder(str).append(Game.getCiv(i).iArmyRecruitSize);
        String str3 = nEtnPpUF.xKQdnpyxXo;
        arrayList.add(new Text_Title_v2_TextLR(str2, sbAppend.append(str3).append(Game.getCiv(i).iArmyRecruitSize_Total).toString(), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height5, i3 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
        int height6 = height5 + ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
        int i10 = 0;
        while (i10 < Game.getCiv(i).lArmyRecruit.size()) {
            int height7 = height6;
            for (int i11 = 0; i11 < Game.getCiv(i).lArmyRecruit.get(i10).size(); i11++) {
                arrayList.add(new Text_Desc2_Special(((str + (Game.getCiv(i).lArmyRecruit.get(i10).get(i11).provinceID >= 0 ? Game.getProvince(Game.getCiv(i).lArmyRecruit.get(i10).get(i11).provinceID).getProvinceName() : "ProvinceID -1") + ": ") + ArmyManager.lArmy.get(Game.getCiv(i).lArmyRecruit.get(i10).get(i11).unitID).get(Game.getCiv(i).lArmyRecruit.get(i10).get(i11).armyID).Name + " -> ") + Game.lang.get("DaysX", Game.getCiv(i).lArmyRecruit.get(i10).get(i11).timeLeft), i4, height7, i3 - (i4 * 2)));
                height7 += ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight() + CFG.PADDING;
            }
            i10++;
            height6 = height7;
        }
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Diplomacy") + " -> " + Game.lang.get("Wars"), Game.lang.get("IaAtWar") + ": " + Game.getCiv(i).diplomacy.isAtWar() + str3 + Game.getCiv(i).diplomacy.lWars.size(), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height6, i3 - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
        ((MenuElement) arrayList.get(arrayList.size() - 1)).getHeight();
        int i12 = CFG.PADDING;
        return arrayList;
    }
}
