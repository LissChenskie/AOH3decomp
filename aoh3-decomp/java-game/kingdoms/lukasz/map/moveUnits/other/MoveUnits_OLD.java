package aoc.kingdoms.lukasz.map.moveUnits.other;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MoveUnits_OLD {
    public String key;
    protected List<Integer> lRoute = new ArrayList();
    protected int iRouteSize = 0;
    protected List<Integer> iWidth = new ArrayList();
    protected List<Integer> fAngle = new ArrayList();
    public long lMovingTime = 0;
    public float fMovingPercentage = 0.0f;
    public int moveLineSrcX = 0;

    public MoveUnits_OLD(int i, int i2, int i3, String str) {
        this.key = str;
        buildRoute(i, i2, i3);
        buildMoveUnitsLine();
        int armyKeyID = Game.getProvince(i2).getArmyKeyID(str);
        if (armyKeyID >= 0) {
            Game.getProvince(i2).getArmy(armyKeyID).iShiftX = Game.getProvince(i2).getArmy(armyKeyID).defaultShiftX();
            Game.getProvince(i2).getArmy(armyKeyID).iShiftY = Game.getProvince(i2).getArmy(armyKeyID).defaultShiftY();
        }
    }

    private final void buildMoveUnitsLine() {
        int i = 0;
        while (i < this.iRouteSize - 1) {
            try {
                int i2 = i + 1;
                this.iWidth.add(Integer.valueOf((int) Math.ceil(Math.sqrt((((Game.getProvince(this.lRoute.get(i2).intValue()).iCenterShiftX + Game.getProvince(this.lRoute.get(i2).intValue()).getTranslateProvincePosX()) - (Game.getProvince(this.lRoute.get(i).intValue()).iCenterShiftX + Game.getProvince(this.lRoute.get(i).intValue()).getTranslateProvincePosX())) * ((Game.getProvince(this.lRoute.get(i2).intValue()).iCenterShiftX + Game.getProvince(this.lRoute.get(i2).intValue()).getTranslateProvincePosX()) - (Game.getProvince(this.lRoute.get(i).intValue()).iCenterShiftX + Game.getProvince(this.lRoute.get(i).intValue()).getTranslateProvincePosX()))) + ((Game.getProvince(this.lRoute.get(i).intValue()).iCenterShiftY - Game.getProvince(this.lRoute.get(i2).intValue()).iCenterShiftY) * (Game.getProvince(this.lRoute.get(i).intValue()).iCenterShiftY - Game.getProvince(this.lRoute.get(i2).intValue()).iCenterShiftY))))));
                this.fAngle.add(Integer.valueOf((int) ((Math.atan2(Game.getProvince(this.lRoute.get(i).intValue()).iCenterShiftY - Game.getProvince(this.lRoute.get(i2).intValue()).iCenterShiftY, (-(Game.getProvince(this.lRoute.get(i).intValue()).iCenterShiftX + Game.getProvince(this.lRoute.get(i).intValue()).getTranslateProvincePosX())) + (Game.getProvince(this.lRoute.get(i2).intValue()).iCenterShiftX + Game.getProvince(this.lRoute.get(i2).intValue()).getTranslateProvincePosX())) * 180.0d) / 3.141592653589793d)));
                if (this.fAngle.get(i).intValue() < 0) {
                    List<Integer> list = this.fAngle;
                    list.set(i, Integer.valueOf(list.get(i).intValue() + 360));
                }
                List<Integer> list2 = this.fAngle;
                list2.set(i, Integer.valueOf(list2.get(i).intValue() % 360));
                i = i2;
            } catch (IndexOutOfBoundsException e) {
                CFG.exceptionStack(e);
                return;
            } catch (NullPointerException e2) {
                CFG.exceptionStack(e2);
                return;
            }
        }
        this.lMovingTime = CFG.currentTimeMillis;
        this.fMovingPercentage = 0.15f;
    }

    protected static boolean canBeUsedInPath(int i, int i2, boolean z, int i3) {
        return Game.getProvince(i2).getWasteland() < 0;
    }

    public static final boolean isFriendlyProvince(int i, int i2) {
        return true;
    }

    protected boolean buildPath(int i, List<Integer> list, List<Integer> list2, List<List<Integer>> list3, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i4 = 0; i4 < list2.size(); i4++) {
            if (Game.getProvince(list2.get(i4).intValue()).getProvinceID() == i3) {
                setPath(i2, i3, list3.get(i4), i3, i2);
                clearWas(list);
                return true;
            }
        }
        for (int i5 = 0; i5 < list2.size(); i5++) {
            for (int i6 = 0; i6 < Game.getProvince(list2.get(i5).intValue()).getNeighboringProvincesSize(); i6++) {
                if (canBeUsedInPath(i, Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID(), isFriendlyProvince(i, i3), i3) && !Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()).was) {
                    if (Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID() == i3) {
                        setPath(i2, i3, list3.get(i5), i3, i2);
                        clearWas(list);
                        return true;
                    }
                    arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()));
                    ArrayList arrayList3 = new ArrayList();
                    for (int i7 = 0; i7 < list3.get(i5).size(); i7++) {
                        arrayList3.add(list3.get(i5).get(i7));
                    }
                    arrayList3.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()));
                    arrayList2.add(arrayList3);
                    Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()).was = true;
                    list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringProvinces(i6)).getProvinceID()));
                }
            }
            if (!Game.getProvince(list2.get(i5).intValue()).getSeaProvince() && Game.getProvince(list2.get(i5).intValue()).getLevelOfPort() > 0) {
                for (int i8 = 0; i8 < Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvincesSize(); i8++) {
                    if (!Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()).was) {
                        if (Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID() == i3) {
                            setPath(i2, i3, list3.get(i5), i3, i2);
                            clearWas(list);
                            return true;
                        }
                        arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()));
                        ArrayList arrayList4 = new ArrayList();
                        for (int i9 = 0; i9 < list3.get(i5).size(); i9++) {
                            arrayList4.add(list3.get(i5).get(i9));
                        }
                        arrayList4.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()));
                        arrayList2.add(arrayList4);
                        Game.getProvince(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()).was = true;
                        list.add(Integer.valueOf(Game.getProvince(Game.getProvince(list2.get(i5).intValue()).getNeighboringSeaProvinces(i8)).getProvinceID()));
                    }
                }
            }
        }
        try {
            return buildPath(i, list, arrayList, arrayList2, i2, i3);
        } catch (StackOverflowError unused) {
            clearWas(list);
            return false;
        }
    }

    protected boolean buildRoute(int i, int i2, int i3) {
        this.lRoute.clear();
        if (i2 < 0 || i3 < 0 || Game.getProvince(i3).getWasteland() >= 0) {
            return false;
        }
        if (!Game.getProvince(i2).getSeaProvince() && Game.getProvince(i2).getNeighboringProvincesSize() == 0 && Game.getProvince(i2).getLevelOfPort() <= 0) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i2));
        for (int i4 = 0; i4 < Game.getProvincesSize(); i4++) {
            Game.getProvince(i4).was = false;
        }
        Game.getProvince(i2).was = true;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i5 = 0; i5 < Game.getProvince(i2).getNeighboringProvincesSize(); i5++) {
            if (canBeUsedInPath(i, Game.getProvince(i2).getNeighboringProvinces(i5), isFriendlyProvince(i, i3), i3)) {
                arrayList2.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()));
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()));
                arrayList3.add(arrayList4);
                arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()));
                Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringProvinces(i5)).getProvinceID()).was = true;
            }
        }
        if (!Game.getProvince(i2).getSeaProvince() && Game.getProvince(i2).getLevelOfPort() > 0) {
            for (int i6 = 0; i6 < Game.getProvince(i2).getNeighboringSeaProvincesSize(); i6++) {
                arrayList2.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()));
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()));
                arrayList3.add(arrayList5);
                arrayList.add(Integer.valueOf(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()));
                Game.getProvince(Game.getProvince(Game.getProvince(i2).getNeighboringSeaProvinces(i6)).getProvinceID()).was = true;
            }
        }
        buildPath(i, arrayList, arrayList2, arrayList3, i2, i3);
        return true;
    }

    protected final void clearWas(List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            Game.getProvince(list.get(size).intValue()).was = false;
        }
    }

    public void draw(SpriteBatch spriteBatch, float f) {
        this.fMovingPercentage += (CFG.currentTimeMillis - this.lMovingTime) / 15000.0f;
        this.lMovingTime = CFG.currentTimeMillis;
        if (this.fMovingPercentage >= 1.0f) {
            this.fMovingPercentage = 1.0f;
        }
        int armyKeyID = Game.getProvince(this.lRoute.get(0).intValue()).getArmyKeyID(this.key);
        if (armyKeyID >= 0) {
            Game.getProvince(this.lRoute.get(0).intValue()).getArmy(armyKeyID).iShiftX_Scaled = (int) ((Game.getProvince(this.lRoute.get(1).intValue()).getCenterX() - Game.getProvince(this.lRoute.get(0).intValue()).getCenterX()) * this.fMovingPercentage);
            Game.getProvince(this.lRoute.get(0).intValue()).getArmy(armyKeyID).iShiftY_Scaled = (int) ((Game.getProvince(this.lRoute.get(1).intValue()).getCenterY() - Game.getProvince(this.lRoute.get(0).intValue()).getCenterY()) * this.fMovingPercentage);
        }
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.2f));
        ImageManager.getImage(Images.moveLine).draw2(spriteBatch, ((int) ((Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftX + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX()) * f)) + CFG.rotateXMoveUnits[this.fAngle.get(0).intValue()], ((int) ((Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftY + Game.mapCoords.getPosY()) * f)) + CFG.rotateYMoveUnits[this.fAngle.get(0).intValue()], (int) (this.iWidth.get(0).intValue() * f), ImageManager.getImage(Images.moveLine).getHeight(), this.fAngle.get(0).intValue(), true, false);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.5f));
        int iIntValue = (int) (this.iWidth.get(0).intValue() * this.fMovingPercentage * f);
        ImageManager.getImage(Images.moveLine).draw2(spriteBatch, ((int) ((Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftX + Game.getProvince(this.lRoute.get(0).intValue()).getTranslateProvincePosX()) * f)) + CFG.rotateXMoveUnits[this.fAngle.get(0).intValue()], ((int) ((Game.getProvince(this.lRoute.get(0).intValue()).iCenterShiftY + Game.mapCoords.getPosY()) * f)) + CFG.rotateYMoveUnits[this.fAngle.get(0).intValue()], iIntValue, ImageManager.getImage(Images.moveLine).getHeight(), this.fAngle.get(0).intValue(), true, false, (int) ((this.iWidth.get(0).intValue() * f) - iIntValue));
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.2f));
        for (int i = 1; i < this.iRouteSize - 1; i++) {
            Image image = Images.line_32_off1;
            int translateProvincePosX = (int) ((Game.getProvince(this.lRoute.get(i).intValue()).iCenterShiftX + Game.getProvince(this.lRoute.get(i).intValue()).getTranslateProvincePosX()) * f);
            int posY = (int) ((Game.getProvince(this.lRoute.get(i).intValue()).iCenterShiftY + Game.mapCoords.getPosY()) * f);
            int iIntValue2 = (int) (this.iWidth.get(i).intValue() * f);
            int height = Images.line_32_off1.getHeight();
            float fIntValue = this.fAngle.get(i).intValue();
            int i2 = this.moveLineSrcX + 1;
            this.moveLineSrcX = i2;
            image.draw2(spriteBatch, translateProvincePosX, posY, iIntValue2, height, fIntValue, true, false, i2);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    protected final void setPath(int i, int i2, List<Integer> list, int i3, int i4) {
        this.lRoute.add(Integer.valueOf(i4));
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.lRoute.add(list.get(i5));
        }
        List<Integer> list2 = this.lRoute;
        if (i3 != list2.get(list2.size() - 1).intValue()) {
            this.lRoute.add(Integer.valueOf(i3));
        }
        this.iRouteSize = this.lRoute.size();
    }
}
