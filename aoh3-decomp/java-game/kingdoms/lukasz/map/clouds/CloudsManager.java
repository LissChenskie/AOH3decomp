package aoc.kingdoms.lukasz.map.clouds;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CloudsManager {
    public static int updateInViewID;
    public List<Image> imageCloud = new ArrayList();
    public List<Integer> imageCloudMaxDimension = new ArrayList();
    private List<Cloud> lClouds = new ArrayList();
    private int iCloudsSize = 0;
    private long lTimeDimOutAlpha = 0;
    private long lTimeDimInAlpha = 0;
    private float fDimAlpha = 1.0f;
    public CloudsSettings cloudsSettings = new CloudsSettings();
    public CloudsInterface cloudsInterface = new AnonymousClass1();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.clouds.CloudsManager$1, reason: invalid class name */
    class AnonymousClass1 implements CloudsInterface {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.clouds.CloudsManager.CloudsInterface
        public void drawCloudsInterface(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.clouds.CloudsManager$2, reason: invalid class name */
    class AnonymousClass2 implements CloudsInterface {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.clouds.CloudsManager.CloudsInterface
        public void drawCloudsInterface(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.clouds.CloudsManager$3, reason: invalid class name */
    class AnonymousClass3 implements CloudsInterface {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.clouds.CloudsManager.CloudsInterface
        public void drawCloudsInterface(SpriteBatch spriteBatch) {
            CloudsManager.this.drawClouds(spriteBatch);
        }
    }

    public interface CloudsInterface {
        void drawCloudsInterface(SpriteBatch spriteBatch);
    }

    public static class CloudsSettings {
        public float drawCloudsMaxScale;
        public float drawCloudsMinScale;
        public int maxNumOfCloudsInTheGame;
        public float minAlpha;
        public float moveSpeedX;
        public float moveSpeedY;
        public int numOfCloudImages;
        public float randomAlpha;
        public int shadowX;
        public int shadowY;
        public int spawnAnimationTime;
        public float spawnCloudChance;
    }

    public CloudsManager() {
        readSettings();
    }

    public final void addCloud() {
        addCloud(Game.oR.nextInt(Game.mapBG.getWidth()), Game.oR.nextInt(Game.mapBG.getHeight()));
    }

    public final void addCloud(int i, int i2) {
        if (this.iCloudsSize >= this.cloudsSettings.maxNumOfCloudsInTheGame || this.cloudsSettings.numOfCloudImages <= 0) {
            return;
        }
        this.lClouds.add(new Cloud(Game.oR.nextInt(this.imageCloud.size()), i, i2, ((((Game.oR.nextInt(20) + 10) + Game.oR.nextInt(25)) + Game.oR.nextInt(25)) + Game.oR.nextInt(46)) / 100.0f, Game.oR.nextInt(360)));
        this.iCloudsSize = this.lClouds.size();
    }

    public final void drawClouds(SpriteBatch spriteBatch) {
        if (Game.mapScale.getCurrentScale() <= this.cloudsSettings.drawCloudsMinScale || Game.mapScale.getCurrentScale() >= this.cloudsSettings.drawCloudsMaxScale) {
            this.fDimAlpha = Math.max(1.0f - (((CFG.currentTimeMillis - this.lTimeDimOutAlpha) / Game.cloudsAnimation.cloudsSettings.spawnAnimationTime) * 1.0f), 0.0f);
            long j = CFG.currentTimeMillis;
            float f = Game.cloudsAnimation.cloudsSettings.spawnAnimationTime;
            float f2 = this.fDimAlpha;
            this.lTimeDimInAlpha = j - ((long) (f * f2));
            if (f2 > 0.01f) {
                drawClouds(spriteBatch, f2);
            }
        } else {
            this.lTimeDimOutAlpha = CFG.currentTimeMillis;
            if (this.fDimAlpha < 1.0f) {
                float fMax = Math.max(((CFG.currentTimeMillis - this.lTimeDimInAlpha) / Game.cloudsAnimation.cloudsSettings.spawnAnimationTime) * 1.0f, 0.0f);
                this.fDimAlpha = fMax;
                this.fDimAlpha = Math.min(fMax, 1.0f);
            }
            drawClouds(spriteBatch, this.fDimAlpha);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public final void drawClouds(SpriteBatch spriteBatch, float f) {
        updateClouds();
        for (int i = 0; i < this.iCloudsSize; i++) {
            if (this.lClouds.get(i).isInView) {
                spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, this.lClouds.get(i).fAlpha * f));
                this.imageCloud.get(this.lClouds.get(i).iCloudImageID).draw(spriteBatch, ((int) this.lClouds.get(i).iPosX) + this.lClouds.get(i).iPosX_SecondSideOfMap + Game.mapCoords.getPosX() + this.lClouds.get(i).iShadowX, ((int) this.lClouds.get(i).iPosY) + Game.mapCoords.getPosY() + this.lClouds.get(i).iShadowY, this.lClouds.get(i).fScale * 0.75f, this.lClouds.get(i).iRotate);
            }
        }
        if (Game.mapScale.getCurrentScale() < 1.0f) {
            f *= ((1.0f - Game.mapScale.getCurrentScale()) / 2.0f) + 1.0f;
        }
        for (int i2 = 0; i2 < this.iCloudsSize; i2++) {
            if (this.lClouds.get(i2).isInView) {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, this.lClouds.get(i2).fAlpha * f));
                this.imageCloud.get(this.lClouds.get(i2).iCloudImageID).draw(spriteBatch, ((int) this.lClouds.get(i2).iPosX) + this.lClouds.get(i2).iPosX_SecondSideOfMap + Game.mapCoords.getPosX(), ((int) this.lClouds.get(i2).iPosY) + Game.mapCoords.getPosY(), this.lClouds.get(i2).fScale, this.lClouds.get(i2).iRotate);
            }
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public boolean loadClouds() {
        return CFG.isDesktop() || GameValues.value.MOBILE_LOAD_CLOUDS;
    }

    public final void loadCloudsImages() {
        if (loadClouds()) {
            for (int i = 0; i < this.cloudsSettings.numOfCloudImages; i++) {
                this.imageCloud.add(ImageManager.loadImage("gfx/clouds/" + i + ".png"));
            }
            for (int i2 = 0; i2 < this.cloudsSettings.numOfCloudImages; i2++) {
                this.imageCloudMaxDimension.add(Integer.valueOf(Math.max(this.imageCloud.get(i2).getWidth(), this.imageCloud.get(i2).getHeight())));
            }
            for (int i3 = 0; i3 < 25; i3++) {
                addCloud();
            }
        }
    }

    public final void randomSpawnCloud() {
        if (Game.oR.nextFloat() < this.cloudsSettings.spawnCloudChance) {
            addCloud();
        }
    }

    public final void readSettings() {
        CloudsSettings cloudsSettings = (CloudsSettings) new Json().fromJson(CloudsSettings.class, FileManager.loadFile("gfx/clouds/".concat(Game.highTextureSettings ? CFG.FILE_CONFIG : CFG.FILE_CONFIG_LOW)));
        this.cloudsSettings = cloudsSettings;
        cloudsSettings.moveSpeedY = Math.max(0.1f, cloudsSettings.moveSpeedY);
        CloudsSettings cloudsSettings2 = this.cloudsSettings;
        cloudsSettings2.randomAlpha = Math.min(1.0f, cloudsSettings2.randomAlpha);
        if (loadClouds()) {
            return;
        }
        this.cloudsSettings.numOfCloudImages = 0;
    }

    public final void updateClouds() {
        for (int size = this.lClouds.size() - 1; size >= 0; size--) {
            if (this.lClouds.get(size).removeCloud()) {
                this.lClouds.remove(size);
                this.iCloudsSize = this.lClouds.size();
            }
        }
        randomSpawnCloud();
        for (int i = 0; i < this.iCloudsSize; i++) {
            this.lClouds.get(i).update();
        }
        int i2 = (updateInViewID + 1) % 8;
        updateInViewID = i2;
        while (i2 < this.iCloudsSize) {
            this.lClouds.get(i2).updateIsInView();
            i2 += 8;
        }
    }

    public final void updateCloudsInterface() {
        if (Game.settingsManager.CLOUDS) {
            this.cloudsInterface = new AnonymousClass3();
            return;
        }
        this.cloudsInterface = new AnonymousClass2();
        this.lClouds.clear();
        this.iCloudsSize = 0;
    }
}
