package aoc.kingdoms.lukasz.jakowski.FlagsEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.menusEditor.CreateCiv;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.ScreenUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class FlagManager {
    public static final int FLAG_HEIGHT = 44;
    public static final int FLAG_WIDTH = 68;
    public Flag_GameData flagEdit;
    public List<Flag_Division> lDivisions = new ArrayList();
    public List<Flag_Overlay> lOverlays = new ArrayList();
    public int activeColorID = 0;
    private List<Image> divisionLayers = new ArrayList();
    private List<Flag_OverlayImage> lOverlaysImages = new ArrayList();

    public static class ConfigDivisionsData {
        public String Age_of_Civilizations;
        public ArrayList Division;
    }

    public static class ConfigOverlayData {
        public String Age_of_Civilizations;
        public ArrayList Overlay;
    }

    public static class Data_Divisions {
        public int Layers;
        public String Name;
    }

    public static class Data_Overlays {
        public String Name;
        public float Scale;
    }

    private final void beginClip(SpriteBatch spriteBatch, int i, int i2) {
        Rectangle rectangle = new Rectangle(i, CFG.GAME_HEIGHT - i2, 68.0f, -44.0f);
        spriteBatch.flush();
        ScissorStack.pushScissors(rectangle);
    }

    private final void beginClip_FlagFrameSize(SpriteBatch spriteBatch, int i, int i2) {
        Rectangle rectangle = new Rectangle(i, CFG.GAME_HEIGHT - i2, 68.0f, -44.0f);
        spriteBatch.flush();
        ScissorStack.pushScissors(rectangle);
    }

    private final void endClip(SpriteBatch spriteBatch) {
        try {
            spriteBatch.flush();
            ScissorStack.popScissors();
        } catch (IllegalStateException unused) {
        }
    }

    public final void addOverlay() {
        this.flagEdit.lOverlays.add(new Flag_Overlay_GameData(0));
        loadOverlayImage(0);
        this.flagEdit.lOverlays.get(this.flagEdit.lOverlays.size() - 1).iWidth = (int) Math.abs(getOverlay(0).getWidth() * this.lOverlays.get(0).Scale);
        this.flagEdit.lOverlays.get(this.flagEdit.lOverlays.size() - 1).iHeight = (int) Math.abs(getOverlay(0).getHeight() * this.lOverlays.get(0).Scale);
        this.flagEdit.lOverlays.get(this.flagEdit.lOverlays.size() - 1).iPosX = 34 - (this.flagEdit.lOverlays.get(this.flagEdit.lOverlays.size() - 1).iWidth / 2);
        this.flagEdit.lOverlays.get(this.flagEdit.lOverlays.size() - 1).iPosY = 22 - (this.flagEdit.lOverlays.get(this.flagEdit.lOverlays.size() - 1).iHeight / 2);
    }

    public final void clearData() {
        List<Flag_Division> list = this.lDivisions;
        if (list != null) {
            list.clear();
        }
        List<Flag_Overlay> list2 = this.lOverlays;
        if (list2 != null) {
            list2.clear();
        }
        for (int i = 0; i < this.divisionLayers.size(); i++) {
            this.divisionLayers.get(i).getTexture().dispose();
        }
        this.divisionLayers.clear();
        for (int i2 = 0; i2 < this.lOverlaysImages.size(); i2++) {
            this.lOverlaysImages.get(i2).imageOverlay.getTexture().dispose();
        }
        this.lOverlaysImages.clear();
    }

    public final void drawDivision(SpriteBatch spriteBatch, int i, int i2) {
        beginClip(spriteBatch, i, i2);
        int i3 = 0;
        spriteBatch.setColor(this.flagEdit.lDivisionColors.get(0));
        Images.pix.draw(spriteBatch, i, i2, 68, 44);
        while (i3 < this.divisionLayers.size()) {
            int i4 = i3 + 1;
            spriteBatch.setColor(this.flagEdit.lDivisionColors.get(i4));
            this.divisionLayers.get(i3).draw(spriteBatch, i, i2, 68, 44);
            i3 = i4;
        }
        spriteBatch.setColor(Color.WHITE);
        endClip(spriteBatch);
    }

    public final void drawDivision(SpriteBatch spriteBatch, int i, int i2, int i3) {
        beginClip(spriteBatch, i, i2);
        spriteBatch.setColor(this.flagEdit.lDivisionColors.get(0));
        Images.pix.draw(spriteBatch, i, i2, 68, 44);
        spriteBatch.setColor(this.flagEdit.lDivisionColors.get(i3));
        this.divisionLayers.get(i3 - 1).draw(spriteBatch, i, i2, 68, 44);
        spriteBatch.setColor(Color.WHITE);
        endClip(spriteBatch);
    }

    public final void drawDivisionBG(SpriteBatch spriteBatch, int i, int i2) {
        beginClip(spriteBatch, i, i2);
        spriteBatch.setColor(this.flagEdit.lDivisionColors.get(0));
        Images.pix.draw(spriteBatch, i, i2, 68, 44);
        spriteBatch.setColor(Color.WHITE);
        endClip(spriteBatch);
    }

    public final void drawDivision_FlagFrameSize(SpriteBatch spriteBatch, int i, int i2) {
        beginClip_FlagFrameSize(spriteBatch, i, i2);
        int i3 = 0;
        spriteBatch.setColor(this.flagEdit.lDivisionColors.get(0));
        Images.pix.draw(spriteBatch, i, i2, 68, 44);
        while (i3 < this.divisionLayers.size()) {
            int i4 = i3 + 1;
            spriteBatch.setColor(this.flagEdit.lDivisionColors.get(i4));
            this.divisionLayers.get(i3).draw(spriteBatch, i, i2, 68, 44);
            i3 = i4;
        }
        spriteBatch.setColor(Color.WHITE);
        endClip(spriteBatch);
    }

    public final void drawDivision_FlagFrameSize(SpriteBatch spriteBatch, int i, int i2, int i3) {
        beginClip_FlagFrameSize(spriteBatch, i, i2);
        spriteBatch.setColor(this.flagEdit.lDivisionColors.get(0));
        Images.pix.draw(spriteBatch, i, i2, 68, 44);
        spriteBatch.setColor(this.flagEdit.lDivisionColors.get(i3));
        this.divisionLayers.get(i3 - 1).draw(spriteBatch, i, i2, 68, 44);
        spriteBatch.setColor(Color.WHITE);
        endClip(spriteBatch);
    }

    public final void drawFlag(SpriteBatch spriteBatch, int i, int i2) {
        drawDivision(spriteBatch, i, i2);
        for (int i3 = 0; i3 < this.flagEdit.lOverlays.size(); i3++) {
            drawOverlay(spriteBatch, i, i2, i3);
        }
    }

    public final void drawFlag_FlagFrameSize(SpriteBatch spriteBatch, int i, int i2) {
        drawDivision_FlagFrameSize(spriteBatch, i, i2);
        for (int i3 = 0; i3 < this.flagEdit.lOverlays.size(); i3++) {
            drawOverlay_FlagFrameSize(spriteBatch, i, i2, i3);
        }
    }

    public final void drawOverlay(SpriteBatch spriteBatch, int i, int i2, int i3) {
        beginClip(spriteBatch, i, i2);
        spriteBatch.setColor(this.flagEdit.lOverlays.get(i3).oColor);
        getOverlay(this.flagEdit.lOverlays.get(i3).iOverlayID).draw(spriteBatch, i + this.flagEdit.lOverlays.get(i3).iPosX, i2 + this.flagEdit.lOverlays.get(i3).iPosY, this.flagEdit.lOverlays.get(i3).iWidth, this.flagEdit.lOverlays.get(i3).iHeight);
        spriteBatch.setColor(Color.WHITE);
        endClip(spriteBatch);
    }

    public final void drawOverlay_FlagFrameSize(SpriteBatch spriteBatch, int i, int i2, int i3) {
        beginClip_FlagFrameSize(spriteBatch, i, i2);
        spriteBatch.setColor(this.flagEdit.lOverlays.get(i3).oColor);
        getOverlay(this.flagEdit.lOverlays.get(i3).iOverlayID).draw(spriteBatch, i + ((int) (this.flagEdit.lOverlays.get(i3).iPosX * 1.0f)), i2 + ((int) (this.flagEdit.lOverlays.get(i3).iPosY * 1.0f)), (int) (this.flagEdit.lOverlays.get(i3).iWidth * 1.0f), (int) (this.flagEdit.lOverlays.get(i3).iHeight * 1.0f));
        spriteBatch.setColor(Color.WHITE);
        endClip(spriteBatch);
    }

    public final Image getOverlay(int i) {
        for (int i2 = 0; i2 < this.lOverlaysImages.size(); i2++) {
            if (i == this.lOverlaysImages.get(i2).iOverlayID) {
                return this.lOverlaysImages.get(i2).imageOverlay;
            }
        }
        return Images.pix;
    }

    public final void initFlagEdit() {
        this.flagEdit = new Flag_GameData();
        loadDivision();
        loadOverlays();
    }

    public final void loadData() {
        clearData();
        loadDivisions();
    }

    public final void loadDivision() {
        for (int i = 0; i < this.divisionLayers.size(); i++) {
            this.divisionLayers.get(i).getTexture().dispose();
        }
        this.divisionLayers.clear();
        for (int i2 = 0; i2 < this.lDivisions.get(this.flagEdit.iDivisionID).iLayers - 1; i2++) {
            this.divisionLayers.add(new Image(new Texture(Gdx.files.internal("gfx/editorFlags/divisions/" + this.lDivisions.get(this.flagEdit.iDivisionID).sName + "_" + i2 + ".png")), Texture.TextureFilter.Nearest));
        }
        for (int size = this.flagEdit.lDivisionColors.size(); size < this.lDivisions.get(this.flagEdit.iDivisionID).iLayers; size++) {
            if (size == 0) {
                this.flagEdit.lDivisionColors.add(Color.WHITE);
            } else if (size == 1) {
                this.flagEdit.lDivisionColors.add(new Color(0.9843137f, 0.0f, 0.2f, 1.0f));
            } else if (size == 2) {
                this.flagEdit.lDivisionColors.add(new Color(0.0f, 0.19607843f, 0.39607844f, 1.0f));
            } else if (size == 3) {
                this.flagEdit.lDivisionColors.add(new Color(1.0f, 0.80784315f, 0.0f, 1.0f));
            } else {
                Color randomColor = CFG.getRandomColor();
                this.flagEdit.lDivisionColors.add(new Color(randomColor.r, randomColor.g, randomColor.b, 1.0f));
            }
        }
    }

    public final void loadDivisions() {
        List<Flag_Division> list = this.lDivisions;
        if (list != null) {
            list.clear();
        }
        this.lDivisions = new ArrayList();
        try {
            String string = FileManager.loadFile("gfx/editorFlags/divisions.json").readString();
            Json json = new Json();
            json.setElementType(ConfigDivisionsData.class, "Division", Data_Divisions.class);
            new ConfigDivisionsData();
            for (Data_Divisions data_Divisions : ((ConfigDivisionsData) json.fromJson(ConfigDivisionsData.class, string)).Division) {
                this.lDivisions.add(new Flag_Division(data_Divisions.Name, data_Divisions.Layers));
            }
        } catch (GdxRuntimeException unused) {
        }
    }

    public final void loadOverlayImage(int i) {
        for (int i2 = 0; i2 < this.lOverlaysImages.size(); i2++) {
            if (i == this.lOverlaysImages.get(i2).iOverlayID) {
                return;
            }
        }
        this.lOverlaysImages.add(new Flag_OverlayImage(i));
    }

    public final void loadOverlays() {
        List<Flag_Overlay> list = this.lOverlays;
        if (list != null) {
            list.clear();
        }
        this.lOverlays = new ArrayList();
        try {
            String string = FileManager.loadFile("gfx/editorFlags/overlays.json").readString();
            Json json = new Json();
            json.setElementType(ConfigOverlayData.class, "Overlay", Data_Overlays.class);
            new ConfigOverlayData();
            for (Data_Overlays data_Overlays : ((ConfigOverlayData) json.fromJson(ConfigOverlayData.class, string)).Overlay) {
                this.lOverlays.add(new Flag_Overlay(data_Overlays.Name, data_Overlays.Scale));
            }
            for (int i = 0; i < this.flagEdit.lOverlays.size(); i++) {
                loadOverlayImage(this.flagEdit.lOverlays.get(i).iOverlayID);
            }
        } catch (GdxRuntimeException unused) {
        }
    }

    public final void moveOverlayUp(int i) {
        if (i > 0) {
            Flag_Overlay_GameData flag_Overlay_GameData = this.flagEdit.lOverlays.get(i);
            int i2 = i - 1;
            this.flagEdit.lOverlays.set(i, this.flagEdit.lOverlays.get(i2));
            this.flagEdit.lOverlays.set(i2, flag_Overlay_GameData);
        }
    }

    public final void removeOverlay(int i) {
        int i2 = this.flagEdit.lOverlays.get(i).iOverlayID;
        this.flagEdit.lOverlays.remove(i);
        tryRemoveOverlay(i2);
    }

    public final void saveFlagTexture(SpriteBatch spriteBatch) {
        drawFlag(spriteBatch, 0, 0);
        Image image = new Image(new Texture(ScreenUtils.getFrameBufferPixmap(0, CFG.GAME_HEIGHT - 44, 68, 44)));
        try {
            image.getTexture().getTextureData().prepare();
        } catch (GdxRuntimeException unused) {
        }
        if (FileManager.IS_MAC) {
            PixmapIO.writePNG(Gdx.files.external("mods/GameCivs/gfx/flagsH/" + CreateCiv.nCiv.Tag + ".png"), image.getTexture().getTextureData().consumePixmap());
        } else {
            PixmapIO.writePNG(Gdx.files.local("mods/GameCivs/gfx/flagsH/" + CreateCiv.nCiv.Tag + ".png"), image.getTexture().getTextureData().consumePixmap());
        }
        spriteBatch.setColor(Color.BLACK);
        Images.pix.draw(spriteBatch, 0, 0, 68, 44);
        spriteBatch.setColor(Color.WHITE);
        image.getTexture().dispose();
    }

    public final void tryRemoveOverlay(int i) {
        for (int i2 = 0; i2 < this.flagEdit.lOverlays.size(); i2++) {
            if (this.flagEdit.lOverlays.get(i2).iOverlayID == i) {
                return;
            }
        }
        for (int i3 = 0; i3 < this.lOverlaysImages.size(); i3++) {
            if (i == this.lOverlaysImages.get(i3).iOverlayID) {
                this.lOverlaysImages.get(i3).imageOverlay.getTexture().dispose();
                this.lOverlaysImages.remove(i3);
                return;
            }
        }
    }

    public final void updateDivision(boolean z) {
        this.flagEdit.iDivisionID += z ? 1 : -1;
        if (this.flagEdit.iDivisionID < 0) {
            this.flagEdit.iDivisionID = this.lDivisions.size() - 1;
        } else if (this.flagEdit.iDivisionID >= this.lDivisions.size()) {
            this.flagEdit.iDivisionID = 0;
        }
        loadDivision();
    }

    public final void updateOverlay(int i, boolean z) {
        int i2 = this.flagEdit.lOverlays.get(i).iOverlayID;
        this.flagEdit.lOverlays.get(i).iOverlayID += z ? 1 : -1;
        if (this.flagEdit.lOverlays.get(i).iOverlayID < 0) {
            this.flagEdit.lOverlays.get(i).iOverlayID = this.lOverlays.size() - 1;
        } else if (this.flagEdit.lOverlays.get(i).iOverlayID >= this.lOverlays.size()) {
            this.flagEdit.lOverlays.get(i).iOverlayID = 0;
        }
        tryRemoveOverlay(i2);
        loadOverlayImage(this.flagEdit.lOverlays.get(i).iOverlayID);
        this.flagEdit.lOverlays.get(this.flagEdit.lOverlays.size() - 1).iWidth = (int) Math.abs(getOverlay(this.flagEdit.lOverlays.get(i).iOverlayID).getWidth() * this.lOverlays.get(this.flagEdit.lOverlays.get(i).iOverlayID).Scale);
        this.flagEdit.lOverlays.get(this.flagEdit.lOverlays.size() - 1).iHeight = (int) Math.abs(getOverlay(this.flagEdit.lOverlays.get(i).iOverlayID).getHeight() * this.lOverlays.get(this.flagEdit.lOverlays.get(i).iOverlayID).Scale);
        this.flagEdit.lOverlays.get(this.flagEdit.lOverlays.size() - 1).iPosX = 34 - (this.flagEdit.lOverlays.get(i).iWidth / 2);
        this.flagEdit.lOverlays.get(this.flagEdit.lOverlays.size() - 1).iPosY = 22 - (this.flagEdit.lOverlays.get(i).iHeight / 2);
    }
}
