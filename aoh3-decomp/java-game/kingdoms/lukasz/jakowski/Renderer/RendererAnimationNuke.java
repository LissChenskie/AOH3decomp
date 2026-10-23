package aoc.kingdoms.lukasz.jakowski.Renderer;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class RendererAnimationNuke {
    public static long lastTimeNukePlayed;
    public int TURN_ID;
    public int iPosX;
    public int iPosY;
    public int iProvinceID;
    public long lTime = 0;
    public int currentIMG = 0;
    public boolean remove = false;

    public RendererAnimationNuke(int i) {
        this.iPosX = 0;
        this.iPosY = 0;
        this.TURN_ID = 0;
        this.iProvinceID = i;
        if (Game.getProvince(i).getCitiesSize() > 0) {
            this.iPosX = Game.getProvince(i).getCity(0).getPosX();
            this.iPosY = Game.getProvince(i).getCity(0).getPosY();
        } else {
            this.iPosX = Game.getProvince(i).iCenterShiftX;
            this.iPosY = Game.getProvince(i).iCenterShiftY;
        }
        this.TURN_ID = Game_Calendar.TURN_ID;
    }

    public void draw(SpriteBatch spriteBatch) {
        if (Game_Calendar.TURN_ID - this.TURN_ID > 60) {
            this.remove = true;
        }
        if (!Game.getProvince(this.iProvinceID).getDrawProvince() || this.remove) {
            return;
        }
        if (this.lTime == 0) {
            this.lTime = CFG.currentTimeMillis;
            if (lastTimeNukePlayed + ((long) GameValues.atomic.ATOMIC_BOMB_SOUND_EFFECT_LOCK_TIME) < CFG.currentTimeMillis) {
                lastTimeNukePlayed = CFG.currentTimeMillis;
                Game.soundsManager.playSound(SoundsManager.SOUND_NUKE, Game.soundsManager.getSoundsVolumeMaster());
            }
        }
        float fMin = (Math.min(1.0f, (CFG.currentTimeMillis - this.lTime) / GameValues.atomic.ATOMIC_BOMB_ANIMATION_TIME) * 0.9f) + 0.1f;
        int width = (int) (ImageManager.getImage(Images.nukeImg.get(0).intValue()).getWidth() * Game.mapScale.getCurrentScale());
        int height = (int) (ImageManager.getImage(Images.nukeImg.get(0).intValue()).getHeight() * Game.mapScale.getCurrentScale());
        int translateProvincePosX = (int) ((this.iPosX + Game.getProvince(this.iProvinceID).getTranslateProvincePosX()) * Game.mapScale.getCurrentScale());
        int posY = (int) ((this.iPosY + Game.mapCoords.getPosY()) * Game.mapScale.getCurrentScale());
        spriteBatch.setColor(new Color(Colors.HOVER_YELLOW.r, Colors.HOVER_YELLOW.g, Colors.HOVER_YELLOW.b, (1.0f - (Math.min(1.0f, this.currentIMG / Images.nukeIMGSize) * 0.9f)) * 0.2f));
        int i = translateProvincePosX - width;
        int i2 = width * 2;
        Images.gradientXY.draw(spriteBatch, i, posY - height, i2, height);
        Images.gradientXY.draw(spriteBatch, i, (posY + height) - height, i2, height, false, true);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
        ImageManager.getImage(Images.nukeImg.get(this.currentIMG).intValue()).draw(spriteBatch, translateProvincePosX - (width / 2), posY - (height / 2), width, height);
        if (fMin >= 1.0f) {
            this.currentIMG++;
            this.lTime = CFG.currentTimeMillis;
            if (this.currentIMG >= Images.nukeIMGSize) {
                this.currentIMG = 0;
                this.remove = true;
            }
        }
        spriteBatch.setColor(Color.WHITE);
    }
}
