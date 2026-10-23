package aoc.kingdoms.lukasz.jakowski.Player.More;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.FBOProvincesBG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.Province;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PlayerFogOfWar {
    public final void buildFogOfWar(int i) {
        try {
            if (Game.FOG_OF_WAR) {
                for (int i2 = 0; i2 < Game.getCivsSize(); i2++) {
                    Game.getCiv(i2).isPlayerAlly = false;
                }
                Game.getCiv(Game.player.iCivID).isPlayerAlly = true;
                for (int i3 = 0; i3 < Game.getProvincesSize(); i3++) {
                    Game.getProvince(i3).setFogDrawArmy(false);
                }
                buildFogOfWar_CivID(i);
                List<Integer> listCivAllies = DiplomacyManager.civAllies(i);
                for (int size = listCivAllies.size() - 1; size >= 0; size--) {
                    Game.getCiv(listCivAllies.get(size).intValue()).isPlayerAlly = true;
                }
                for (int size2 = listCivAllies.size() - 1; size2 >= 0; size2--) {
                    buildFogOfWar_CivID(listCivAllies.get(size2).intValue());
                }
            } else {
                for (int i4 = 0; i4 < Game.getProvincesSize(); i4++) {
                    Game.getProvince(i4).setFogDrawArmy(true);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        Game.updateDrawArmy();
    }

    public final void buildFogOfWar_CivID(int i) {
        if (Game.FOG_OF_WAR) {
            for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
                Game.getProvince(Game.getCiv(i).getProvinceID(i2)).setFogDrawArmy(true);
                for (int i3 = 0; i3 < Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvincesSize(); i3++) {
                    Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringProvinces(i3)).setFogDrawArmy(true);
                }
                for (int i4 = 0; i4 < Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringSeaProvincesSize(); i4++) {
                    Game.getProvince(Game.getProvince(Game.getCiv(i).getProvinceID(i2)).getNeighboringSeaProvinces(i4)).setFogDrawArmy(true);
                }
            }
            for (int i5 = 0; i5 < Game.getCiv(i).iArmyPositionSize; i5++) {
                Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).setFogDrawArmy(true);
                for (int i6 = 0; i6 < Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getNeighboringProvincesSize(); i6++) {
                    Game.getProvince(Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getNeighboringProvinces(i6)).setFogDrawArmy(true);
                }
                for (int i7 = 0; i7 < Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getNeighboringProvincesSize(); i7++) {
                    for (int i8 = 0; i8 < Game.getProvince(Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getNeighboringProvinces(i7)).getNeighboringProvincesSize(); i8++) {
                        Game.getProvince(Game.getProvince(Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getNeighboringProvinces(i7)).getNeighboringProvinces(i8)).setFogDrawArmy(true);
                    }
                }
                for (int i9 = 0; i9 < Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getNeighboringSeaProvincesSize(); i9++) {
                    Game.getProvince(Game.getProvince(Game.getCiv(i).getArmyPosition(i5)).getNeighboringSeaProvinces(i9)).setFogDrawArmy(true);
                }
            }
        }
    }

    public void initFogOfWar() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            Game.getProvince(i).setFogDrawArmy(false);
        }
    }

    public final void setFogOfWar(int i, boolean z) {
        if (Game.getProvince(i).getFogDrawArmy() != z) {
            Game.getProvince(i).setFogDrawArmy(z);
            Game.getProvince(i).updateDrawArmy();
            if (Game.getProvince(i).getDrawProvince()) {
                FBOProvincesBG.redrawnProvinces();
            }
        }
    }

    public final void setFogOfWar_ExtraCheck(int i, boolean z) {
        try {
            Game.getProvince(i).setFogDrawArmy(z || Game.getProvince(i).haveArmy(Game.player.iCivID));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateFogOfWar(int i) {
        try {
            if (Game.FOG_OF_WAR) {
                Province province = Game.getProvince(i);
                if (Game.getCiv(province.getCivID()).isPlayerAlly) {
                    setFogOfWar(i, true);
                    return;
                }
                for (int i2 = 0; i2 < province.getArmySize(); i2++) {
                    if (Game.getCiv(province.getArmy(i2).civID).isPlayerAlly) {
                        setFogOfWar(i, true);
                        return;
                    }
                }
                for (int i3 = 0; i3 < province.getNeighboringProvincesSize(); i3++) {
                    if (Game.getCiv(Game.getProvince(province.getNeighboringProvinces(i3)).getCivID()).isPlayerAlly) {
                        setFogOfWar(i, true);
                        return;
                    }
                }
                for (int i4 = 0; i4 < province.getNeighboringProvincesSize(); i4++) {
                    for (int i5 = 0; i5 < Game.getProvince(province.getNeighboringProvinces(i4)).getArmySize(); i5++) {
                        if (Game.getCiv(Game.getProvince(province.getNeighboringProvinces(i4)).getArmy(i5).civID).isPlayerAlly) {
                            setFogOfWar(i, true);
                            return;
                        }
                    }
                }
                for (int i6 = 0; i6 < province.getNeighboringProvincesSize(); i6++) {
                    for (int i7 = 0; i7 < Game.getProvince(province.getNeighboringProvinces(i6)).getArmySize(); i7++) {
                        if (Game.getCiv(Game.getProvince(province.getNeighboringProvinces(i6)).getArmy(i7).civID).isPlayerAlly) {
                            setFogOfWar(i, true);
                            return;
                        }
                    }
                }
                for (int i8 = 0; i8 < province.getNeighboringProvincesSize(); i8++) {
                    for (int i9 = 0; i9 < Game.getProvince(province.getNeighboringProvinces(i8)).getNeighboringProvincesSize(); i9++) {
                        for (int i10 = 0; i10 < Game.getProvince(Game.getProvince(province.getNeighboringProvinces(i8)).getNeighboringProvinces(i9)).getArmySize(); i10++) {
                            if (Game.getCiv(Game.getProvince(Game.getProvince(province.getNeighboringProvinces(i8)).getNeighboringProvinces(i9)).getArmy(i10).civID).isPlayerAlly) {
                                setFogOfWar(i, true);
                                return;
                            }
                        }
                    }
                }
                for (int i11 = 0; i11 < province.getNeighboringSeaProvincesSize(); i11++) {
                    for (int i12 = 0; i12 < Game.getProvince(province.getNeighboringSeaProvinces(i11)).getArmySize(); i12++) {
                        if (Game.getCiv(Game.getProvince(province.getNeighboringSeaProvinces(i11)).getArmy(i12).civID).isPlayerAlly) {
                            setFogOfWar(i, true);
                            return;
                        }
                    }
                }
                setFogOfWar(i, false);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateFogOfWar_All(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        for (int i2 = 0; i2 < Game.getProvince(i).getNeighboringProvincesSize(); i2++) {
            if (!arrayList.contains(Integer.valueOf(Game.getProvince(i).getNeighboringProvinces(i2)))) {
                arrayList.add(Integer.valueOf(Game.getProvince(i).getNeighboringProvinces(i2)));
            }
        }
        for (int i3 = 0; i3 < Game.getProvince(i).getNeighboringProvincesSize(); i3++) {
            for (int i4 = 0; i4 < Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).getNeighboringProvincesSize(); i4++) {
                if (!arrayList.contains(Integer.valueOf(Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).getNeighboringProvinces(i4)))) {
                    arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(i).getNeighboringProvinces(i3)).getNeighboringProvinces(i4)));
                }
            }
        }
        for (int i5 = 0; i5 < Game.getProvince(i).getNeighboringSeaProvincesSize(); i5++) {
            if (!arrayList.contains(Integer.valueOf(Game.getProvince(i).getNeighboringSeaProvinces(i5)))) {
                arrayList.add(Integer.valueOf(Game.getProvince(i).getNeighboringSeaProvinces(i5)));
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            updateFogOfWar(((Integer) arrayList.get(size)).intValue());
        }
        arrayList.clear();
    }

    public final void updateFogOfWar_All_ArmyOneProvinceView(int i) {
        if (Game.FOG_OF_WAR) {
            if (Game.getCiv(Game.getProvince(i).getCivID()).isPlayerAlly) {
                setFogOfWar(i, true);
                return;
            }
            updateFogOfWar(i);
            for (int i2 = 0; i2 < Game.getProvince(i).getNeighboringProvincesSize(); i2++) {
                updateFogOfWar(Game.getProvince(i).getNeighboringProvinces(i2));
            }
            for (int i3 = 0; i3 < Game.getProvince(i).getNeighboringSeaProvincesSize(); i3++) {
                updateFogOfWar(Game.getProvince(i).getNeighboringSeaProvinces(i3));
            }
        }
    }

    public final void updateFogOfWar_Civ(int i) {
        for (int i2 = 0; i2 < Game.getCiv(i).getNumOfProvinces(); i2++) {
            updateFogOfWar_All(Game.getCiv(i).getProvinceID(i2));
        }
        for (int i3 = 0; i3 < Game.getCiv(i).iArmyPositionSize; i3++) {
            if (Game.getProvince(Game.getCiv(i).getArmyPosition(i3)).getCivID() != i) {
                updateFogOfWar_All(Game.getCiv(i).getArmyPosition(i3));
            }
        }
    }
}
