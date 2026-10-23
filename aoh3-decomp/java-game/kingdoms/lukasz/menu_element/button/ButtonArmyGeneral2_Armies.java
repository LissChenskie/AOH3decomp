package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonArmyGeneral2_Armies extends ButtonArmyGeneral2 {
    public int iCivID;
    public int iProvinceID;
    public String key;

    public ButtonArmyGeneral2_Armies(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str2, int i10, int i11, String str3, int i12) {
        super(str, i, i2, i3, i4, i5, i6, i7, i8, i9, str3, i12);
        this.key = str2;
        this.iProvinceID = i11;
        this.iCivID = i10;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        int armyKeyID = Game.getProvince(this.iProvinceID).getArmyKeyID(this.key);
        if (armyKeyID < 0) {
            for (int i = 0; i < Game.getProvincesSize(); i++) {
                int armyKeyID2 = Game.getProvince(i).getArmyKeyID(this.key, this.iCivID);
                if (armyKeyID2 >= 0) {
                    this.iProvinceID = i;
                    armyKeyID = armyKeyID2;
                    break;
                }
            }
        }
        if (armyKeyID >= 0) {
            if (!Game.getProvince(this.iProvinceID).getDrawProvince()) {
                Game.mapCoords.centerToProvinceID(this.iProvinceID);
            }
            Game.clearActiveArmy();
            Game.HoveredArmy hoveredArmy = new Game.HoveredArmy();
            hoveredArmy.key = Game.getProvince(this.iProvinceID).getArmy(armyKeyID).key;
            hoveredArmy.iCivID = Game.getProvince(this.iProvinceID).getArmy(armyKeyID).civID;
            hoveredArmy.iProvinceID = this.iProvinceID;
            hoveredArmy.iArmyID = armyKeyID;
            Game.addActiveArmy(hoveredArmy);
            ProvinceTouchExtraAction.actionUp_SetActiveArmy();
            if (!Game.menuManager.getVisibleInGame_Generals()) {
                InGame_Generals.assignProvinceID = this.iProvinceID;
                InGame_Generals.assignArmyKey = this.key;
                InGame_Generals.backButton = false;
                Game.menuManager.rebuildInGame_Generals();
                Game.menuManager.setVisibleInGame_Generals(true);
                return;
            }
            if (InGame_Generals.assignProvinceID < 0 || InGame_Generals.assignProvinceID == this.iProvinceID || InGame_Generals.assignArmyKey.equals(this.key)) {
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
        }
    }
}
