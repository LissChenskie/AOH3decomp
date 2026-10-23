package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonArmyNoGeneral2_Armies extends ButtonArmyNoGeneral2 {
    public int iCivID;
    public int iProvinceID;
    public String key;

    public ButtonArmyNoGeneral2_Armies(String str, int i, int i2, int i3, String str2, int i4, int i5) {
        super(str, i, i2, i3, true);
        this.key = str2;
        this.iProvinceID = i5;
        this.iCivID = i4;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        int i = this.iProvinceID;
        if (i >= 0) {
            int armyKeyID = Game.getProvince(i).getArmyKeyID(this.key);
            if (armyKeyID < 0) {
                for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
                    int armyKeyID2 = Game.getProvince(i2).getArmyKeyID(this.key, this.iCivID);
                    if (armyKeyID2 >= 0) {
                        this.iProvinceID = i2;
                        armyKeyID = armyKeyID2;
                        break;
                    }
                }
            }
            if (armyKeyID >= 0) {
                Game.HoveredArmy hoveredArmy = new Game.HoveredArmy();
                hoveredArmy.key = Game.getProvince(this.iProvinceID).getArmy(armyKeyID).key;
                hoveredArmy.iCivID = Game.getProvince(this.iProvinceID).getArmy(armyKeyID).civID;
                hoveredArmy.iProvinceID = this.iProvinceID;
                hoveredArmy.iArmyID = armyKeyID;
                if (Game.menuManager.getVisibleInGame_Generals()) {
                    if (InGame_Generals.assignProvinceID == this.iProvinceID || InGame_Generals.assignArmyKey.equals(this.key)) {
                        Game.menuManager.setVisibleInGame_Generals(false);
                        return;
                    }
                    if (Game.getProvince(this.iProvinceID).getArmyKeyID(this.key) >= 0) {
                        InGame_Generals.assignProvinceID = this.iProvinceID;
                        InGame_Generals.assignArmyKey = this.key;
                    } else {
                        InGame_Generals.assignProvinceID = -1;
                        Game.menuManager.addToast_Error(Game.lang.get("ArmyNotFound"));
                    }
                    Game.menuManager.setOrderInGame_Generals();
                    return;
                }
                InGame_Generals.assignProvinceID = this.iProvinceID;
                InGame_Generals.assignArmyKey = this.key;
                int armyKeyID3 = Game.getProvince(this.iProvinceID).getArmyKeyID(this.key);
                if (Game.getCiv(Game.player.iCivID).getGeneralsNotAssignedSize() != 0 || Game.getProvince(this.iProvinceID).getArmy(armyKeyID3).civID != Game.player.iCivID) {
                    InGame_Generals.backButton = false;
                    Game.menuManager.rebuildInGame_Generals();
                    Game.menuManager.setVisibleInGame_Generals(true);
                } else if (Game.menuManager.getVisibleInGame_GeneralRecruit()) {
                    Game.menuManager.setVisibleInGame_GeneralRecruit(false);
                } else {
                    Game.menuManager.rebuildInGame_GeneralRecruit();
                }
            }
        }
    }
}
