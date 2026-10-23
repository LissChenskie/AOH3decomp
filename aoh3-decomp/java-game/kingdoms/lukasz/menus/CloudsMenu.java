package aoc.kingdoms.lukasz.menus;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.graph.Graph;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class CloudsMenu extends Menu {
    public static View goToView = View.NEW_GAME;
    public long lTime;
    public int iAnimationTime = 750;
    public List<CloudAnimation> lClouds = new ArrayList();
    public boolean viewChanged = false;

    public class CloudAnimation {
        float fAlpha = (Game.oR.nextInt(Graph.ANIMATION_TIME) / 1000.0f) + 0.1f;
        float fRotation = Game.oR.nextInt(360);
        int iCloudID;
        int iPosX;
        int iPosY;

        public CloudAnimation(int i, int i2, int i3) {
            this.iCloudID = i;
            this.iPosX = i2 - (Game.cloudsAnimation.imageCloud.get(i).getWidth() / 2);
            this.iPosY = i3 - (Game.cloudsAnimation.imageCloud.get(i).getHeight() / 2);
        }
    }

    public CloudsMenu() {
        this.lTime = 0L;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Empty(0, 0, 1, 1));
        this.lTime = CFG.currentTimeMillis;
        if (Game.cloudsAnimation.imageCloud.size() > 0) {
            for (int i = 0; i < CFG.GAME_WIDTH / Graph.ANIMATION_TIME; i++) {
                int iNextInt = Game.oR.nextInt(Game.cloudsAnimation.imageCloud.size());
                this.lClouds.add(new CloudAnimation(iNextInt, Game.oR.nextInt(CFG.GAME_WIDTH), Game.oR.nextInt(CFG.GAME_HEIGHT / 4)));
                this.lClouds.add(new CloudAnimation(iNextInt, Game.oR.nextInt(CFG.GAME_WIDTH), CFG.GAME_HEIGHT - Game.oR.nextInt(CFG.GAME_HEIGHT / 4)));
                this.lClouds.add(new CloudAnimation(iNextInt, Game.oR.nextInt(CFG.GAME_WIDTH / 4), Game.oR.nextInt(CFG.GAME_HEIGHT)));
                this.lClouds.add(new CloudAnimation(iNextInt, CFG.GAME_WIDTH - Game.oR.nextInt(CFG.GAME_WIDTH / 4), Game.oR.nextInt(CFG.GAME_HEIGHT)));
            }
            for (int i2 = 0; i2 < CFG.GAME_WIDTH / 600; i2++) {
                this.lClouds.add(new CloudAnimation(Game.oR.nextInt(Game.cloudsAnimation.imageCloud.size()), Game.oR.nextInt(CFG.GAME_WIDTH), Game.oR.nextInt(CFG.GAME_HEIGHT)));
            }
        }
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        float fMin = Math.min(1.0f, (CFG.currentTimeMillis - this.lTime) / this.iAnimationTime);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f * fMin));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.BUTTON_HEIGHT / 2);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.BUTTON_HEIGHT / 2)) + i2, getWidth(), CFG.BUTTON_HEIGHT / 2, false, true);
        spriteBatch.setColor(Color.WHITE);
        float fMin2 = 1.0f - Math.min(1.0f, (CFG.currentTimeMillis - this.lTime) / this.iAnimationTime);
        int i3 = CFG.GAME_HEIGHT;
        for (int size = this.lClouds.size() - 1; size >= 0; size--) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, this.lClouds.get(size).fAlpha * fMin2));
            if (this.lClouds.get(size).iPosX < CFG.GAME_WIDTH / 2) {
                Game.cloudsAnimation.imageCloud.get(this.lClouds.get(size).iCloudID).draw(spriteBatch, this.lClouds.get(size).iPosX - ((int) ((CFG.GAME_WIDTH / 10) * fMin)), this.lClouds.get(size).iPosY, 1.0f, this.lClouds.get(size).fRotation);
            } else {
                Game.cloudsAnimation.imageCloud.get(this.lClouds.get(size).iCloudID).draw(spriteBatch, ((int) ((CFG.GAME_WIDTH / 10) * fMin)) + this.lClouds.get(size).iPosX, this.lClouds.get(size).iPosY, 1.0f, this.lClouds.get(size).fRotation);
            }
        }
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
        if (CFG.currentTimeMillis - this.lTime <= this.iAnimationTime || this.viewChanged) {
            return;
        }
        this.lClouds.clear();
        Game.menuManager.setViewID(goToView);
        this.viewChanged = true;
    }
}
