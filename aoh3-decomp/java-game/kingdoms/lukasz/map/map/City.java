package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceNamesManager;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class City {
    public static final int PADDING = 10;
    public static final int PADDING_NAME = 5;
    public int iCityLevel;
    public int iPosX;
    public int iPosY;
    public int imageID;
    public String sCityName;
    public String sCityNameOriginal;
    public int iWidth = 0;
    public int iHeight = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.City$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceNamesManager.buildProvNameData(this.id, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.map.City$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceNamesManager.buildProvNameData(this.id, true);
        }
    }

    public City(String str, int i, int i2, int i3) {
        this.iCityLevel = 0;
        this.imageID = 0;
        this.sCityName = str;
        this.sCityNameOriginal = str;
        updateCityNameWidth();
        this.iPosX = i;
        this.iPosY = i2;
        this.iCityLevel = i3;
        this.imageID = Game.oR.nextInt(Game.mapCities.imageCity.size());
    }

    private final void drawCityName(SpriteBatch spriteBatch, int i, int i2, float f, float f2) {
        Renderer.fontMain.get(4).getData().setScale(f2);
        Renderer.drawText(spriteBatch, 4, this.sCityName, i, i2, new Color(MapCities.COLOR_CITY_NAME.r, MapCities.COLOR_CITY_NAME.g, MapCities.COLOR_CITY_NAME.b, MapCities.COLOR_CITY_NAME.a * f));
    }

    private final void drawCityName_Capital(SpriteBatch spriteBatch, int i, float f, float f2, float f3) {
        int drawPosX = getDrawPosX(i, f);
        int drawPosY = getDrawPosY(i, f);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.9f * f2));
        int drawWidth = drawPosX - (getDrawWidth() / 2);
        spriteBatch.setShader(Renderer.shaderAlpha);
        Game.getCiv(Game.getProvince(i).getCivID()).getFlag().getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.capitalLeft).draw(spriteBatch, drawWidth, drawPosY);
        if (Game.iHoveredCapitalProvinceID == i) {
            ImageManager.getImage(Images.capitalLeft).draw(spriteBatch, drawWidth, drawPosY);
        }
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.capitalLeftOver).draw(spriteBatch, drawWidth, drawPosY);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.75f * f2));
        ImageManager.getImage(Images.capitalRight).draw2(spriteBatch, drawWidth + ImageManager.getImage(Images.capitalLeft).getWidth(), drawPosY, this.iWidth + 5 + 10, ImageManager.getImage(Images.capitalRight).getHeight(), true, false);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2));
        Renderer.fontMain.get(4).getData().setScale(Game.settingsManager.CITIES_CAPITAL_FONT_SCALE);
        Renderer.drawText(spriteBatch, 4, "" + this.sCityName, drawWidth + ImageManager.getImage(Images.capitalLeft).getWidth() + 5, drawPosY + ((ImageManager.getImage(Images.capitalLeft).getHeight() - this.iHeight) / 2), new Color(MapCities.COLOR_CITY_CAPITAL_NAME.r, MapCities.COLOR_CITY_CAPITAL_NAME.g, MapCities.COLOR_CITY_CAPITAL_NAME.b, MapCities.COLOR_CITY_CAPITAL_NAME.a * f2));
        spriteBatch.setColor(Color.WHITE);
    }

    private final void drawCityName_Capital_Civ(SpriteBatch spriteBatch, int i, float f, float f2) {
        int drawPosX = getDrawPosX(i, f);
        int drawPosY = getDrawPosY(i, f);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.9f * f2));
        int drawWidth = drawPosX - (getDrawWidth() / 2);
        spriteBatch.setShader(Renderer.shaderAlpha);
        Game.getCiv(Game.getProvince(i).getCivID()).getFlag().getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.capitalLeft).draw(spriteBatch, drawWidth, drawPosY);
        if (Game.iHoveredCapitalProvinceID == i) {
            ImageManager.getImage(Images.capitalLeft).draw(spriteBatch, drawWidth, drawPosY);
        }
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.capitalLeftOver).draw(spriteBatch, drawWidth, drawPosY);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.75f * f2));
        ImageManager.getImage(Images.capitalRight).draw2(spriteBatch, drawWidth + ImageManager.getImage(Images.capitalLeft).getWidth(), drawPosY, Game.getCiv(Game.getProvince(i).getCivID()).iCapitalNameWidth + 5 + 10, ImageManager.getImage(Images.capitalRight).getHeight(), true, false);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2));
        Renderer.fontMain.get(4).getData().setScale(Game.settingsManager.CITIES_CAPITAL_FONT_SCALE);
        Game.mapCities.capitalCityName.draw(spriteBatch, i, f2, drawWidth + 5, drawPosY);
        spriteBatch.setColor(Color.WHITE);
    }

    public final void drawCity(SpriteBatch spriteBatch, int i, float f, float f2, float f3, float f4) {
        Province province = Game.getProvince(i);
        float currentScale = province.cityScale * Game.mapScale.getCurrentScale();
        if (province.getFortLevel() > 0) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f3));
            Game.mapCities.imageCityFort.get(this.imageID).draw(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((Game.mapCities.imageCityFort.get(this.imageID).getWidth() * currentScale) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) - ((int) ((Game.mapCities.imageCityFort.get(this.imageID).getHeight() * currentScale) / 2.0f)), currentScale);
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f3));
            Game.mapCities.imageCity.get(this.imageID).draw(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((Game.mapCities.imageCity.get(this.imageID).getWidth() * currentScale) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) - ((int) ((Game.mapCities.imageCity.get(this.imageID).getHeight() * currentScale) / 2.0f)), currentScale);
        }
    }

    public final void drawCityName_Capital_CivFlag_War(SpriteBatch spriteBatch, int i, float f, float f2) {
        int drawPosX = getDrawPosX(i, f);
        int drawPosY = getDrawPosY(i, f);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2 * 1.0f));
        if (Game.getCiv(Game.getProvince(i).getCivID()).iCivRankID == 4) {
            ImageManager.getImage(Images.flagCapitalWar_l).draw(spriteBatch, drawPosX - (ImageManager.getImage(Images.flagCapitalWar_l).getWidth() / 2), (drawPosY + (ImageManager.getImage(Images.flagCapitalMask_l).getHeight() / 2)) - (ImageManager.getImage(Images.flagCapitalWar_l).getHeight() / 2));
        } else if (Game.getCiv(Game.getProvince(i).getCivID()).iCivRankID > 1) {
            ImageManager.getImage(Images.flagCapitalWar).draw(spriteBatch, drawPosX - (ImageManager.getImage(Images.flagCapitalWar).getWidth() / 2), (drawPosY + (ImageManager.getImage(Images.flagCapitalMask).getHeight() / 2)) - (ImageManager.getImage(Images.flagCapitalWar).getHeight() / 2));
        } else {
            ImageManager.getImage(Images.flagCapitalWar_s).draw(spriteBatch, drawPosX - (ImageManager.getImage(Images.flagCapitalWar_s).getWidth() / 2), (drawPosY + (ImageManager.getImage(Images.flagCapitalMask_s).getHeight() / 2)) - (ImageManager.getImage(Images.flagCapitalWar_s).getHeight() / 2));
        }
    }

    public final void drawCity_CivFlag(SpriteBatch spriteBatch, int i, float f, float f2) {
        Map.drawProvincesFlags.drawCity_CivFlag(spriteBatch, i, f, f2, getDrawPosX(i, f), getDrawPosY(i, f));
    }

    public final void drawCity_CivFlagName(SpriteBatch spriteBatch, int i, float f, float f2) {
        drawCityName_Capital_Civ(spriteBatch, i, f, f2);
    }

    public final void drawCity_InGame(SpriteBatch spriteBatch, int i, float f, float f2, float f3, float f4) {
        Province province = Game.getProvince(i);
        float currentScale = province.cityScale * Game.mapScale.getCurrentScale();
        if (province.getFortLevel() > 0) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f3));
            Image image = Game.mapCities.imageCityFort.get(this.imageID);
            image.draw(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((image.getWidth() * currentScale) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) - ((int) ((image.getHeight() * currentScale) / 2.0f)), currentScale);
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f3));
            Image image2 = Game.mapCities.imageCity.get(this.imageID);
            image2.draw(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((image2.getWidth() * currentScale) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) - ((int) ((image2.getHeight() * currentScale) / 2.0f)), currentScale);
        }
    }

    public final void drawCity_InGame_NamesLow(SpriteBatch spriteBatch, int i, float f, float f2, float f3, float f4) {
        Province province = Game.getProvince(i);
        float f5 = Game.mapCities.citiesSettings.citiesScale_CurrentScale[this.iCityLevel];
        if (province.getFortLevel() > 0) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2));
            Image image = Game.mapCities.imageCityFort.get(this.imageID);
            image.draw(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((image.getWidth() * f5) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) - ((int) ((image.getHeight() * f5) / 2.0f)), f5);
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f3));
            Image image2 = Game.mapCities.imageCity.get(this.imageID);
            image2.draw(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((image2.getWidth() * f5) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) - ((int) ((image2.getHeight() * f5) / 2.0f)), f5);
            drawCityName(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((this.iWidth * f4) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) + ((int) (((image2.getHeight() * f5) / 2.0f) + CFG.PADDING + (CFG.PADDING / 2))), f2, f4);
        }
    }

    public final void drawCity_InGame_NamesLow_OnlyName(SpriteBatch spriteBatch, int i, float f, float f2, float f3, float f4) {
        drawCityName(spriteBatch, (int) (((getPosX() + Game.getProvince(i).getTranslateProvincePosX()) * f) - ((this.iWidth * f4) / 2.0f)), (int) ((getPosY() + Game.mapCoords.getPosY()) * f), f2, f4);
        float f5 = Game.mapCities.citiesSettings.citiesScale_CurrentScale[this.iCityLevel];
    }

    public final void drawCity_Name(SpriteBatch spriteBatch, int i, float f, float f2, float f3) {
        Province province = Game.getProvince(i);
        float f4 = Game.mapCities.citiesSettings.citiesScale_CurrentScale[this.iCityLevel];
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2));
        if (province.getFortLevel() > 0) {
            if (province.isCapital) {
                drawCityName_Capital(spriteBatch, i, f, f2, f4);
                return;
            } else {
                drawCityName(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((this.iWidth * f3) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) + ((int) (((Game.mapCities.imageCityFort.get(this.imageID).getHeight() * f4) / 2.0f) + CFG.PADDING + (CFG.PADDING / 2))), f2, f3);
                return;
            }
        }
        if (province.isCapital) {
            drawCityName_Capital(spriteBatch, i, f, f2, f4);
        } else {
            drawCityName(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((this.iWidth * f3) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) + ((int) (((Game.mapCities.imageCity.get(this.imageID).getHeight() * f4) / 2.0f) + CFG.PADDING + (CFG.PADDING / 2))), f2, f3);
        }
    }

    public final void drawCity_NameNotCapital(SpriteBatch spriteBatch, int i, float f, float f2, float f3) {
        Province province = Game.getProvince(i);
        float f4 = Game.mapCities.citiesSettings.citiesScale_CurrentScale[this.iCityLevel];
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f2));
        if (province.getFortLevel() > 0) {
            if (province.isCapital) {
                return;
            }
            drawCityName(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((this.iWidth * f3) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) + ((int) (((Game.mapCities.imageCityFort.get(this.imageID).getHeight() * f4) / 2.0f) + CFG.PADDING + (CFG.PADDING / 2))), f2, f3);
        } else {
            if (province.isCapital) {
                return;
            }
            drawCityName(spriteBatch, (int) (((getPosX() + province.getTranslateProvincePosX()) * f) - ((this.iWidth * f3) / 2.0f)), ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) + ((int) (((Game.mapCities.imageCity.get(this.imageID).getHeight() * f4) / 2.0f) + CFG.PADDING + (CFG.PADDING / 2))), f2, f3);
        }
    }

    public final int getDrawPosX(int i, float f) {
        return (int) ((getPosX() + Game.getProvince(i).getTranslateProvincePosX()) * f);
    }

    public final int getDrawPosY(int i, float f) {
        return ((int) ((getPosY() + Game.mapCoords.getPosY()) * f)) + ((int) (((Game.mapCities.imageCityFort.get(this.imageID).getHeight() * Game.mapCities.citiesSettings.citiesScale_CurrentScale[this.iCityLevel]) / 2.0f) + CFG.PADDING + (CFG.PADDING / 2)));
    }

    public final int getDrawWidth() {
        return this.iWidth + ImageManager.getImage(Images.capitalLeft).getWidth() + 10 + 5;
    }

    public final int getPosX() {
        return this.iPosX;
    }

    public final int getPosY() {
        return this.iPosY;
    }

    public final void setCityName(int i, String str) {
        if (this.sCityName.equals(str)) {
            return;
        }
        this.sCityName = str;
        updateCityNameWidth();
        Game.getProvince(i).setProvinceName(this.sCityName);
        Game.addSimpleTask(new AnonymousClass2("rebuildProvNameData" + i, i));
    }

    public final void setCityNameOriginal(int i) {
        if (this.sCityNameOriginal.equals(this.sCityName)) {
            return;
        }
        this.sCityName = this.sCityNameOriginal;
        updateCityNameWidth();
        Game.getProvince(i).setProvinceName(this.sCityName);
        Game.addSimpleTask(new AnonymousClass1("buildProvNameData" + i, i));
    }

    protected final void updateCityNameWidth() {
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(4), this.sCityName);
        this.iWidth = (int) glyphLayout_Game.width;
        this.iHeight = (int) glyphLayout_Game.height;
    }
}
