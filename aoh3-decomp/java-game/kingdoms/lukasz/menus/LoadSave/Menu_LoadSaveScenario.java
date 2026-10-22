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
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Menu_LoadSaveScenario extends Menu {
    public static View goToMenu = View.NEW_GAME;
    public int iNumOfSteps = 26;
    public String loadingName = "";
    public int iStepID = 0;

    public Menu_LoadSaveScenario() {
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, new ArrayList(), true);
        setLoadText("Saving Scenario #1");
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
        Renderer.drawLoading(spriteBatch, i, i2, ((this.iStepID * 0.88f) / this.iNumOfSteps) + 0.12f);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.loadingName, i + (CFG.PADDING * 4), i2 + (CFG.PADDING * 4), new Color(1.0f, 1.0f, 1.0f, 0.15f));
    }

    public final void loadAction() {
        try {
            int i = this.iStepID;
            if (i == 0) {
                Game.mapScenarios.saveScenario_1();
                setLoadText("Saving Scenario #2");
            } else if (i == 1) {
                Game.mapScenarios.saveScenario_2();
                setLoadText("Saving Scenario #3");
            } else if (i == 2) {
                Game.mapScenarios.saveScenario_3();
                setLoadText("Saving Scenario #4");
            } else if (i == 3) {
                Game.mapScenarios.saveScenario_4();
                setLoadText("Saving Scenario #5");
            } else if (i == 4) {
                Game.mapScenarios.saveScenario_5();
                setLoadText("Saving Scenario #6");
            } else if (i == 5) {
                Game.mapScenarios.saveScenario_6();
                setLoadText("Saving Scenario #7");
            } else if (i == 6) {
                Game.mapScenarios.saveScenario_7();
                setLoadText("Saving Scenario #8");
            } else if (i == 7) {
                Game.mapScenarios.saveScenario_8();
                setLoadText(QefTqRjwAJmEDy.LYTO);
            } else if (i == 8) {
                Game.mapScenarios.saveScenario_9();
                setLoadText(aBEBOpwLZcQFCZ.ZpLVFAsxiO);
            } else if (i == 9) {
                Game.mapScenarios.saveScenario_10();
                setLoadText("Saving Scenario #11");
            } else if (i == 10) {
                Game.mapScenarios.saveScenario_11();
                setLoadText("Saving Scenario #12");
            } else if (i == 11) {
                Game.mapScenarios.saveScenario_12();
                setLoadText("Saving Scenario #13");
            } else if (i == 12) {
                Game.mapScenarios.saveScenario_13();
                setLoadText("Saving Scenario #14");
            } else if (i == 13) {
                Game.mapScenarios.saveScenario_14();
                setLoadText("Saving Scenario #15");
            } else if (i == 14) {
                Game.mapScenarios.saveScenario_15();
                setLoadText("Saving Scenario #16");
            } else if (i == 15) {
                Game.mapScenarios.saveScenario_16();
                setLoadText("Saving Scenario #17");
            } else if (i == 16) {
                Game.mapScenarios.saveScenario_17();
                setLoadText("Saving Scenario #18");
            } else if (i == 17) {
                Game.mapScenarios.saveScenario_18();
                setLoadText("Saving Scenario #19");
            } else if (i == 18) {
                Game.mapScenarios.saveScenario_19();
                setLoadText("Saving Scenario #20");
            } else if (i == 19) {
                Game.mapScenarios.saveScenario_20();
                setLoadText("Saving Scenario #21");
            } else if (i == 20) {
                Game.mapScenarios.saveScenario_21();
                setLoadText("Saving Scenario #22");
            } else if (i == 21) {
                Game.mapScenarios.saveScenario_22();
                setLoadText("Saving Scenario #23");
            } else if (i == 22) {
                Game.mapScenarios.saveScenario_23();
                setLoadText("Saving Scenario #24");
            } else if (i == 23) {
                Game.mapScenarios.saveScenario_24();
                setLoadText("Saving Scenario #25");
            } else if (i == 24) {
                Game.mapScenarios.saveScenario_25();
                setLoadText("Saving Scenario #26");
            } else if (i == 25) {
                setLoadText("Saving Scenario #27");
            } else if (i == 26) {
                Game.menuManager.setViewIDWithoutAnimation(goToMenu);
            }
        } catch (Exception e) {
            CFG.LOG("Saving Scenario: " + this.iStepID);
            CFG.exceptionStack(e);
        }
        this.iStepID++;
    }

    public void setLoadText(String str) {
        this.loadingName = str;
    }
}
