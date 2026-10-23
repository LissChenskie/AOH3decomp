package aoc.kingdoms.lukasz.menu_element.graph;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Religion;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Graph_Vertical_Data {
    private static final int ANIMATION_TIME = 300;
    private int iCivID;
    private List<Graph_Vertical_Data_Value> lValues = new ArrayList();
    private boolean inView = true;
    private long lTime = 0;

    public Graph_Vertical_Data(int i) {
        this.iCivID = i;
    }

    protected final void buildContinentData() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.continents.iContinentsSize; i++) {
            arrayList.add(0);
        }
        for (int i2 = 0; i2 < Game.getCiv(this.iCivID).getNumOfProvinces(); i2++) {
            try {
                int iMax = Math.max(0, Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i2)).getContinent() - 1);
                arrayList.set(iMax, Integer.valueOf(((Integer) arrayList.get(iMax)).intValue() + 1));
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            try {
                if (((Integer) arrayList.get(i3)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i3)).intValue(), i3));
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        while (arrayList2.size() > 0) {
            int i4 = 0;
            for (int i5 = 1; i5 < arrayList2.size(); i5++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i4)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i5)).getValue()) {
                    i4 = i5;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i4));
            arrayList2.remove(i4);
        }
    }

    protected final void buildContinentData_CivsPopulation() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf((int) Game.getCiv(this.iCivID).getPopulationTotal()));
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                if (((Integer) arrayList.get(i)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i)).intValue(), i));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        while (arrayList2.size() > 0) {
            int i2 = 0;
            for (int i3 = 1; i3 < arrayList2.size(); i3++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i2)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i3)).getValue()) {
                    i2 = i3;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i2));
            arrayList2.remove(i2);
        }
    }

    protected final void buildContinentData_CivsProvinces() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(Game.getCiv(this.iCivID).getNumOfProvinces()));
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                if (((Integer) arrayList.get(i)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i)).intValue(), i));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        while (arrayList2.size() > 0) {
            int i2 = 0;
            for (int i3 = 1; i3 < arrayList2.size(); i3++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i2)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i3)).getValue()) {
                    i2 = i3;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i2));
            arrayList2.remove(i2);
        }
    }

    protected final void buildContinentData_ConstructedBuildings() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.continents.iContinentsSize; i++) {
            arrayList.add(0);
        }
        for (int i2 = 0; i2 < Game.getCiv(this.iCivID).getNumOfProvinces(); i2++) {
            try {
                int iMax = Math.max(0, Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i2)).getContinent() - 1);
                arrayList.set(iMax, Integer.valueOf(((Integer) arrayList.get(iMax)).intValue() + Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i2)).iBuildingsSize));
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            try {
                if (((Integer) arrayList.get(i3)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i3)).intValue(), i3));
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        while (arrayList2.size() > 0) {
            int i4 = 0;
            for (int i5 = 1; i5 < arrayList2.size(); i5++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i4)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i5)).getValue()) {
                    i4 = i5;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i4));
            arrayList2.remove(i4);
        }
    }

    protected final void buildContinentData_Economy() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 1; i < Game.continents.iContinentsSize; i++) {
            arrayList2.add(Float.valueOf(0.0f));
        }
        for (int i2 = 0; i2 < Game.getCiv(this.iCivID).getNumOfProvinces(); i2++) {
            try {
                int iMax = Math.max(0, Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i2)).getContinent() - 1);
                arrayList2.set(iMax, Float.valueOf(((Float) arrayList2.get(iMax)).floatValue() + Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i2)).getEconomyWithBonuses()));
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        for (int i3 = 1; i3 < Game.continents.iContinentsSize; i3++) {
            arrayList.add(Integer.valueOf((int) ((Float) arrayList2.get(i3 - 1)).floatValue()));
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            try {
                if (((Integer) arrayList.get(i4)).intValue() > 0) {
                    arrayList3.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i4)).intValue(), i4));
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        while (arrayList3.size() > 0) {
            int i5 = 0;
            for (int i6 = 1; i6 < arrayList3.size(); i6++) {
                if (((Graph_Vertical_Data_Value) arrayList3.get(i5)).getValue() < ((Graph_Vertical_Data_Value) arrayList3.get(i6)).getValue()) {
                    i5 = i6;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList3.get(i5));
            arrayList3.remove(i5);
        }
    }

    protected final void buildContinentData_GovernmentCivs() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf((int) Game.getCiv(this.iCivID).getPopulationTotal()));
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                if (((Integer) arrayList.get(i)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i)).intValue(), i));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        while (arrayList2.size() > 0) {
            int i2 = 0;
            for (int i3 = 1; i3 < arrayList2.size(); i3++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i2)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i3)).getValue()) {
                    i2 = i3;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i2));
            arrayList2.remove(i2);
        }
    }

    protected final void buildContinentData_Infrastructure() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.continents.iContinentsSize; i++) {
            arrayList.add(0);
        }
        for (int i2 = 0; i2 < Game.getCiv(this.iCivID).getNumOfProvinces(); i2++) {
            try {
                int iMax = Math.max(0, Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i2)).getContinent() - 1);
                arrayList.set(iMax, Integer.valueOf(((Integer) arrayList.get(iMax)).intValue() + Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i2)).getInfrastructure()));
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            try {
                if (((Integer) arrayList.get(i3)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i3)).intValue(), i3));
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        while (arrayList2.size() > 0) {
            int i4 = 0;
            for (int i5 = 1; i5 < arrayList2.size(); i5++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i4)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i5)).getValue()) {
                    i4 = i5;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i4));
            arrayList2.remove(i4);
        }
    }

    protected final void buildContinentData_Population() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.continents.iContinentsSize; i++) {
            arrayList.add(0);
        }
        for (int i2 = 0; i2 < Game.getCiv(this.iCivID).getNumOfProvinces(); i2++) {
            try {
                int iMax = Math.max(0, Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i2)).getContinent() - 1);
                arrayList.set(iMax, Integer.valueOf(((Integer) arrayList.get(iMax)).intValue() + Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i2)).getPopulationTotal()));
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            try {
                if (((Integer) arrayList.get(i3)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i3)).intValue(), i3));
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        while (arrayList2.size() > 0) {
            int i4 = 0;
            for (int i5 = 1; i5 < arrayList2.size(); i5++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i4)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i5)).getValue()) {
                    i4 = i5;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i4));
            arrayList2.remove(i4);
        }
    }

    protected final void buildContinentData_Prestige() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf((int) Game.getCiv(this.iCivID).iCivRankScore));
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                if (((Integer) arrayList.get(i)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i)).intValue(), i));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        while (arrayList2.size() > 0) {
            int i2 = 0;
            for (int i3 = 1; i3 < arrayList2.size(); i3++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i2)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i3)).getValue()) {
                    i2 = i3;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i2));
            arrayList2.remove(i2);
        }
    }

    protected final void buildContinentData_RegimentsLimit() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(Game.getCiv(this.iCivID).iRegimentsLimit));
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                if (((Integer) arrayList.get(i)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i)).intValue(), i));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        while (arrayList2.size() > 0) {
            int i2 = 0;
            for (int i3 = 1; i3 < arrayList2.size(); i3++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i2)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i3)).getValue()) {
                    i2 = i3;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i2));
            arrayList2.remove(i2);
        }
    }

    protected final void buildContinentData_ReligionCivs() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(0);
        for (int i = 0; i < Game.getCiv(this.iCivID).getNumOfProvinces(); i++) {
            try {
                if (Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i)).getReligion() == InGame_Civ_Religion.iReligionID) {
                    arrayList.set(0, Integer.valueOf(((Integer) arrayList.get(0)).intValue() + Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i)).getPopulationTotal()));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            try {
                if (((Integer) arrayList.get(i2)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i2)).intValue(), i2));
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        while (arrayList2.size() > 0) {
            int i3 = 0;
            for (int i4 = 1; i4 < arrayList2.size(); i4++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i3)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i4)).getValue()) {
                    i3 = i4;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i3));
            arrayList2.remove(i3);
        }
    }

    protected final void buildContinentData_ReligionCivs_Right() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(0);
        for (int i = 0; i < Game.getCiv(this.iCivID).getNumOfProvinces(); i++) {
            try {
                if (Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i)).getReligion() == InGame_RightReligion.iReligionID) {
                    arrayList.set(0, Integer.valueOf(((Integer) arrayList.get(0)).intValue() + Game.getProvince(Game.getCiv(this.iCivID).getProvinceID(i)).getPopulationTotal()));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            try {
                if (((Integer) arrayList.get(i2)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i2)).intValue(), i2));
                }
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
        while (arrayList2.size() > 0) {
            int i3 = 0;
            for (int i4 = 1; i4 < arrayList2.size(); i4++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i3)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i4)).getValue()) {
                    i3 = i4;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i3));
            arrayList2.remove(i3);
        }
    }

    protected final void buildContinentData_ResourceProduction() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf((int) ResourcesManager.getProducedGoods_ResourceCiv(this.iCivID, InGame_Goods_LargestProducers.RESOURCE_ID)));
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                if (((Integer) arrayList.get(i)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i)).intValue(), i));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        while (arrayList2.size() > 0) {
            int i2 = 0;
            for (int i3 = 1; i3 < arrayList2.size(); i3++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i2)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i3)).getValue()) {
                    i2 = i3;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i2));
            arrayList2.remove(i2);
        }
    }

    protected final void buildContinentData_UnlockedTechnologies() {
        this.lValues.clear();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(Game.getCiv(this.iCivID).getResearchedTechnologies()));
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                if (((Integer) arrayList.get(i)).intValue() > 0) {
                    arrayList2.add(new Graph_Vertical_Data_Value(((Integer) arrayList.get(i)).intValue(), i));
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        while (arrayList2.size() > 0) {
            int i2 = 0;
            for (int i3 = 1; i3 < arrayList2.size(); i3++) {
                if (((Graph_Vertical_Data_Value) arrayList2.get(i2)).getValue() < ((Graph_Vertical_Data_Value) arrayList2.get(i3)).getValue()) {
                    i2 = i3;
                }
            }
            this.lValues.add((Graph_Vertical_Data_Value) arrayList2.get(i2));
            arrayList2.remove(i2);
        }
    }

    protected final void buildHeights(int i, int i2) {
        for (int i3 = 0; i3 < this.lValues.size(); i3++) {
            this.lValues.get(i3).setHeight((int) ((this.lValues.get(i3).getValue() / i2) * i));
        }
    }

    protected final void drawData(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, List<Color> list, List<Integer> list2) {
        int height;
        if (this.lTime == 0) {
            this.lTime = CFG.currentTimeMillis;
        }
        int i5 = 0;
        if (this.lTime + 300 > CFG.currentTimeMillis) {
            int height2 = 0;
            for (int i6 = 0; i6 < this.lValues.size(); i6++) {
                height2 += this.lValues.get(i6).getHeight();
            }
            height = (int) (height2 * ((CFG.currentTimeMillis - this.lTime) / 300.0f));
            int height3 = height;
            int height4 = 0;
            while (i5 < this.lValues.size()) {
                if (this.lValues.get(i5).getValue() > 0) {
                    try {
                        this.lValues.get(i5).draw(spriteBatch, i, i2 + i4, i3, height4, height3 >= this.lValues.get(i5).getHeight() ? this.lValues.get(i5).getHeight() : height3, list.get(list2.get(this.lValues.get(i5).getDataTypeID()).intValue()));
                    } catch (Exception unused) {
                        this.lValues.get(i5).draw(spriteBatch, i, i2 + i4, i3, height4, height3 >= this.lValues.get(i5).getHeight() ? this.lValues.get(i5).getHeight() : height3, Color.WHITE);
                    }
                    height4 += this.lValues.get(i5).getHeight();
                    height3 -= this.lValues.get(i5).getHeight();
                    if (height3 <= 0) {
                        break;
                    }
                }
                i5++;
            }
        } else {
            height = 0;
            while (i5 < this.lValues.size()) {
                if (this.lValues.get(i5).getValue() > 0) {
                    try {
                        this.lValues.get(i5).draw(spriteBatch, i, i2 + i4, i3, height, list.get(list2.get(this.lValues.get(i5).getDataTypeID()).intValue()));
                    } catch (Exception unused2) {
                        this.lValues.get(i5).draw(spriteBatch, i, i2 + i4, i3, height, Color.WHITE);
                    }
                    height += this.lValues.get(i5).getHeight();
                }
                i5++;
            }
        }
        spriteBatch.setColor(Color.WHITE);
        try {
            Game.getCiv(this.iCivID).getFlag().draw(spriteBatch, i, (((i2 + i4) - height) - CFG.PADDING) - CFG.CIV_FLAG_HEIGHT, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
        } catch (Exception unused3) {
            ImageManager.getImage(Images.randomCivilizationFlag).draw(spriteBatch, i, (((i2 + i4) - height) - CFG.PADDING) - CFG.CIV_FLAG_HEIGHT, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
        }
        ImageManager.getImage(Images.flag_rect).draw(spriteBatch, i, (((i2 + i4) - height) - CFG.PADDING) - CFG.CIV_FLAG_HEIGHT, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
    }

    protected final void drawDataTextValue(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        Renderer.drawTextRotated(spriteBatch, "" + getValue(), (i + (i3 / 2)) - (CFG.TEXT_HEIGHT / 2), (i2 + i4) - CFG.PADDING, new Color(1.0f, 1.0f, 1.0f, 0.85f), 90.0f);
    }

    protected final void drawDataTextValue_Short(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        try {
            Renderer.drawTextRotated(spriteBatch, "" + CFG.getShortNumber(getValue()), (i + (i3 / 2)) - (CFG.TEXT_HEIGHT / 2), (i2 + i4) - CFG.PADDING, new Color(1.0f, 1.0f, 1.0f, 0.45f), 90.0f);
        } catch (Exception unused) {
        }
    }

    protected final void drawDataTextValue_Splitted(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        Renderer.drawTextRotated(spriteBatch, "" + (getValue() / 100.0f), (i + (i3 / 2)) - (CFG.TEXT_HEIGHT / 2), (i2 + i4) - CFG.PADDING, new Color(1.0f, 1.0f, 1.0f, 0.45f), 90.0f);
    }

    public final int getCivID() {
        return this.iCivID;
    }

    protected final boolean getInView() {
        return this.inView;
    }

    protected final int getValue() {
        int value = 0;
        for (int i = 0; i < this.lValues.size(); i++) {
            value += this.lValues.get(i).getValue();
        }
        return value;
    }

    protected final int getValue(int i) {
        return this.lValues.get(i).getValue();
    }

    protected final int getValueDataTypeID(int i) {
        return this.lValues.get(i).getDataTypeID();
    }

    protected final int getValuesSize() {
        return this.lValues.size();
    }

    protected final void resetAnimation() {
        this.lTime = 0L;
    }

    protected final void setInView(boolean z) {
        this.inView = z;
    }
}
