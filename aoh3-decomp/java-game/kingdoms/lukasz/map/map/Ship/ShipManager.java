package aoc.kingdoms.lukasz.map.map.Ship;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ShipManager {
    public static List<ShipLine> shipLines = new ArrayList();
    public static int shipLinesSize = 0;
    public static List<Ship2> ships = new ArrayList();
    public static List<List<Image>> shipImg = new ArrayList();
    public static int limitOfShipsAtSea = 0;
    public static List<Integer> shipsAtSea = new ArrayList();
    public static int shipsAtSeaSize = 0;
    public static List<Integer> shipsInPort = new ArrayList();
    public static int shipsInPortSize = 0;

    public static final void addShipAtSea() {
        if (shipsInPortSize > 0) {
            int iNextInt = Game.oR.nextInt(shipsInPortSize);
            ships.get(shipsInPort.get(iNextInt).intValue()).remove = false;
            shipsAtSea.add(shipsInPort.get(iNextInt));
            shipsInPort.remove(iNextInt);
            shipsAtSeaSize = shipsAtSea.size();
            shipsInPortSize = shipsInPort.size();
        }
    }

    public static final void addShipLine(ShipLine shipLine) {
        shipLines.add(shipLine);
        shipLinesSize = shipLines.size();
    }

    public static final void draw(SpriteBatch spriteBatch) {
        try {
            if (Game.settingsManager.SHIPS_ON_MAP > 0) {
                if (GameValues.ships.PAUSE_MOVE_SHIPS || Game.gameThread.play) {
                    update();
                }
                int i = Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).SHIP_GROUP;
                spriteBatch.setColor(Color.WHITE);
                for (int i2 = shipsAtSeaSize - 1; i2 >= 0; i2--) {
                    if (GameValues.ships.PAUSE_MOVE_SHIPS || Game.gameThread.play) {
                        ships.get(shipsAtSea.get(i2).intValue()).update();
                    }
                    if (ships.get(shipsAtSea.get(i2).intValue()).remove) {
                        shipsInPort.add(shipsAtSea.get(i2));
                        shipsAtSea.remove(i2);
                        shipsAtSeaSize = shipsAtSea.size();
                        shipsInPortSize = shipsInPort.size();
                    } else {
                        ships.get(shipsAtSea.get(i2).intValue()).draw(spriteBatch, i);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void drawCurrentScale(SpriteBatch spriteBatch) {
        try {
            if (Game.settingsManager.SHIPS_ON_MAP > 0) {
                if (GameValues.ships.PAUSE_MOVE_SHIPS || Game.gameThread.play) {
                    update();
                }
                int i = Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).SHIP_GROUP;
                spriteBatch.setColor(Color.WHITE);
                for (int i2 = shipsAtSeaSize - 1; i2 >= 0; i2--) {
                    if (GameValues.ships.PAUSE_MOVE_SHIPS || Game.gameThread.play) {
                        ships.get(shipsAtSea.get(i2).intValue()).update();
                    }
                    if (ships.get(shipsAtSea.get(i2).intValue()).remove) {
                        shipsInPort.add(shipsAtSea.get(i2));
                        shipsAtSea.remove(i2);
                        shipsAtSeaSize = shipsAtSea.size();
                        shipsInPortSize = shipsInPort.size();
                    } else {
                        ships.get(shipsAtSea.get(i2).intValue()).drawCurrentScale(spriteBatch, i);
                    }
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final void loadShipLines() {
        try {
            if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/Lines_Sea.txt").exists()) {
                String[] strArrSplit = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "data/Lines_Sea.txt").readString().split(kfGnwGN.WGeF);
                try {
                    if (strArrSplit.length > 0) {
                        for (int i = strArrSplit[0].length() > 0 ? 0 : 1; i < strArrSplit.length; i += 2) {
                            String[] strArrSplit2 = strArrSplit[i].split(";");
                            String[] strArrSplit3 = strArrSplit[i + 1].split(";");
                            ShipLine shipLine = new ShipLine();
                            for (int i2 = 0; i2 < strArrSplit2.length; i2++) {
                                shipLine.addNewPoint_Just(Integer.parseInt(strArrSplit2[i2]) * Game.mapBG.iMapScale, Integer.parseInt(strArrSplit3[i2]) * Game.mapBG.iMapScale);
                            }
                            shipLine.buildData();
                            addShipLine(shipLine);
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        for (int i3 = 0; i3 < GameValues.ships.SHIP_AGES; i3++) {
            try {
                ArrayList arrayList = new ArrayList();
                for (int i4 = 0; i4 < GameValues.ships.SHIP_IMAGES; i4++) {
                    arrayList.add(new Image(ImageManager.loadTexture("gfx/map/ship_" + i3 + "_" + i4 + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat));
                }
                shipImg.add(arrayList);
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
        for (int i5 = 0; i5 < shipLinesSize; i5++) {
            ships.add(new Ship2(i5));
            shipsInPort.add(Integer.valueOf(i5));
        }
        shipsInPortSize = shipsInPort.size();
        updateLimitOfShipsAtSea();
    }

    public static final void loadShipLines_Provinces() {
        int i = Game.mapBG.iMapScale * 2;
        for (int i2 = 0; i2 < shipLinesSize; i2++) {
            for (int i3 = 0; i3 < Game.getProvincesSize(); i3++) {
                if (Game.getProvince(i3).getMinX() <= shipLines.get(i2).points.get(0).getPosX() && Game.getProvince(i3).getMaxX() >= shipLines.get(i2).points.get(0).getPosX() && Game.getProvince(i3).getMinY() <= shipLines.get(i2).points.get(0).getPosY() && Game.getProvince(i3).getMaxY() >= shipLines.get(i2).points.get(0).getPosY() && Game.pathContains(i3, shipLines.get(i2).points.get(0).getPosX(), shipLines.get(i2).points.get(0).getPosY())) {
                    shipLines.get(i2).fromProvinceID = i3;
                    break;
                }
                if (Game.getProvince(i3).getMinX() <= shipLines.get(i2).points.get(0).getPosX() + i && Game.getProvince(i3).getMaxX() >= shipLines.get(i2).points.get(0).getPosX() + i && Game.getProvince(i3).getMinY() <= shipLines.get(i2).points.get(0).getPosY() && Game.getProvince(i3).getMaxY() >= shipLines.get(i2).points.get(0).getPosY() && Game.pathContains(i3, shipLines.get(i2).points.get(0).getPosX() + i, shipLines.get(i2).points.get(0).getPosY())) {
                    shipLines.get(i2).fromProvinceID = i3;
                    break;
                }
                if (Game.getProvince(i3).getMinX() <= shipLines.get(i2).points.get(0).getPosX() - i && Game.getProvince(i3).getMaxX() >= shipLines.get(i2).points.get(0).getPosX() - i && Game.getProvince(i3).getMinY() <= shipLines.get(i2).points.get(0).getPosY() && Game.getProvince(i3).getMaxY() >= shipLines.get(i2).points.get(0).getPosY() && Game.pathContains(i3, shipLines.get(i2).points.get(0).getPosX() - i, shipLines.get(i2).points.get(0).getPosY())) {
                    shipLines.get(i2).fromProvinceID = i3;
                    break;
                }
                if (Game.getProvince(i3).getMinX() <= shipLines.get(i2).points.get(0).getPosX() && Game.getProvince(i3).getMaxX() >= shipLines.get(i2).points.get(0).getPosX() && Game.getProvince(i3).getMinY() <= shipLines.get(i2).points.get(0).getPosY() + i && Game.getProvince(i3).getMaxY() >= shipLines.get(i2).points.get(0).getPosY() + i && Game.pathContains(i3, shipLines.get(i2).points.get(0).getPosX(), shipLines.get(i2).points.get(0).getPosY() + i)) {
                    shipLines.get(i2).fromProvinceID = i3;
                    break;
                }
                if (Game.getProvince(i3).getMinX() <= shipLines.get(i2).points.get(0).getPosX() && Game.getProvince(i3).getMaxX() >= shipLines.get(i2).points.get(0).getPosX() && Game.getProvince(i3).getMinY() <= shipLines.get(i2).points.get(0).getPosY() - i && Game.getProvince(i3).getMaxY() >= shipLines.get(i2).points.get(0).getPosY() - i && Game.pathContains(i3, shipLines.get(i2).points.get(0).getPosX(), shipLines.get(i2).points.get(0).getPosY() - i)) {
                    shipLines.get(i2).fromProvinceID = i3;
                    break;
                }
            }
        }
        for (int i4 = 0; i4 < shipLinesSize; i4++) {
            for (int i5 = 0; i5 < Game.getProvincesSize(); i5++) {
                if (Game.getProvince(i5).getMinX() <= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() && Game.getProvince(i5).getMaxX() >= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() && Game.getProvince(i5).getMinY() <= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() && Game.getProvince(i5).getMaxY() >= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() && Game.pathContains(i5, shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX(), shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY())) {
                    shipLines.get(i4).toProvinceID = i5;
                    break;
                }
                if (Game.getProvince(i5).getMinX() <= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() + i && Game.getProvince(i5).getMaxX() >= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() + i && Game.getProvince(i5).getMinY() <= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() && Game.getProvince(i5).getMaxY() >= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() && Game.pathContains(i5, shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() + i, shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY())) {
                    shipLines.get(i4).toProvinceID = i5;
                    break;
                }
                if (Game.getProvince(i5).getMinX() <= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() - i && Game.getProvince(i5).getMaxX() >= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() - i && Game.getProvince(i5).getMinY() <= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() && Game.getProvince(i5).getMaxY() >= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() && Game.pathContains(i5, shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() - i, shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY())) {
                    shipLines.get(i4).toProvinceID = i5;
                    break;
                }
                if (Game.getProvince(i5).getMinX() <= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() && Game.getProvince(i5).getMaxX() >= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() && Game.getProvince(i5).getMinY() <= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() + i && Game.getProvince(i5).getMaxY() >= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() + i && Game.pathContains(i5, shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX(), shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() + i)) {
                    shipLines.get(i4).toProvinceID = i5;
                    break;
                }
                if (Game.getProvince(i5).getMinX() <= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() && Game.getProvince(i5).getMaxX() >= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX() && Game.getProvince(i5).getMinY() <= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() - i && Game.getProvince(i5).getMaxY() >= shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() - i && Game.pathContains(i5, shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosX(), shipLines.get(i4).points.get(shipLines.get(i4).pointsSize - 1).getPosY() - i)) {
                    shipLines.get(i4).toProvinceID = i5;
                    break;
                }
            }
        }
    }

    public static final void update() {
        if (shipsAtSeaSize < limitOfShipsAtSea) {
            addShipAtSea();
        }
    }

    public static final void updateLimitOfShipsAtSea() {
        limitOfShipsAtSea = (int) Math.min(shipLinesSize, (Game.settingsManager.SHIPS_ON_MAP / 100.0f) * shipLinesSize);
    }
}
