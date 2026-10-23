package aoc.kingdoms.lukasz.menus.LoadSave;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menus.InitGame;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Menu_Load_Workshop extends Menu {
    public static View goToMenu = View.WORKSHOP;
    public static boolean uploaded = false;
    public int iNumOfSteps = 3600;
    public String loadingName = "";
    public int iStepID = 0;

    public Menu_Load_Workshop() {
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, new ArrayList(), true);
        setLoadText(Game.lang.get("Progress") + " #0");
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        loadAction();
        if (InitGame.background != null) {
            spriteBatch.setColor(new Color(0.047058824f, 0.047058824f, 0.047058824f, 1.0f));
            Images.pix.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (this.iStepID / this.iNumOfSteps) * 0.25f));
            InitGame.background.draw(spriteBatch, i + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2), i2 + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2), InitGame.backgroundWidth, InitGame.backgroundHeight);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, ((this.iStepID / this.iNumOfSteps) * 0.05f) + 0.95f));
            spriteBatch.setShader(Renderer.shaderAlpha);
            InitGame.background.getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            Images.gradientXY.draw(spriteBatch, getPosX() + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, getPosY() + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i2, InitGame.backgroundWidth, InitGame.backgroundHeight);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.6f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.PADDING * 3);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, (CFG.GAME_HEIGHT - (CFG.PADDING * 3)) + i2, CFG.GAME_WIDTH, CFG.PADDING * 3, false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
        Renderer.drawLoading(spriteBatch, i, i2, (this.iStepID % 3600) / this.iNumOfSteps);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.loadingName, i + (CFG.PADDING * 4), i2 + (CFG.PADDING * 4), new Color(1.0f, 1.0f, 1.0f, 0.15f));
    }

    public final void loadAction() {
        try {
            setLoadText(Game.lang.get("Progress") + aBEBOpwLZcQFCZ.lVeZWaBJBfsNYjx + this.iStepID);
            if (uploaded) {
                Game.menuManager.setViewIDWithoutAnimation(goToMenu);
            }
        } catch (Exception e) {
            CFG.LOG(Game.lang.get("Workshop") + ": " + this.iStepID);
            CFG.exceptionStack(e);
        }
        this.iStepID++;
    }

    public void setLoadText(String str) {
        this.loadingName = str;
    }
}
