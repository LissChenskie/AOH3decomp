package aoc.kingdoms.lukasz.menus.LoadSave;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.map.MapScale;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menus.InitGame;
import aoc.kingdoms.lukasz.menus.NewGame.NewGame;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Menu_LoadScenario extends Menu {
    public static View goToMenu = View.NEW_GAME;
    public static boolean editorMode = false;
    public int iNumOfSteps = 61;
    public String loadingName = "";
    public int iStepID = 0;

    public Menu_LoadScenario() {
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, new ArrayList(), true);
        setLoadText(IwYCCQBuFGwl.ygszRFbrkbhP);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        loadScenario();
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

    public final void loadScenario() {
        try {
            int i = this.iStepID;
            if (i == 0) {
                Game.mapScenarios.clearData();
                Game.mapScenarios.loadScenario_1();
                setLoadText(jkEBdieJhbh.JCjDvoaBKwS);
            } else if (i == 1) {
                Game.mapScenarios.loadScenario_2();
                setLoadText("Loading Scenario #3 Civilizations");
            } else if (i == 2) {
                Game.mapScenarios.loadScenario_3(editorMode);
                setLoadText("Loading Scenario #3A Civilizations Names");
            } else if (i == 3) {
                Game.mapScenarios.loadScenario_3_A();
                setLoadText("Loading Scenario #3B Flags");
            } else if (i == 4) {
                Game.mapScenarios.loadScenario_3_B();
                setLoadText("Loading Scenario #3C Civilization's Provinces");
            } else if (i == 5) {
                Game.mapScenarios.loadScenario_3_C();
                setLoadText(IwYCCQBuFGwl.mCWvHFgPIPyX);
            } else if (i == 6) {
                Game.mapScenarios.loadScenario_4();
                setLoadText("Loading Scenario #5");
            } else if (i == 7) {
                Game.mapScenarios.loadScenario_5();
                setLoadText("Loading Scenario #6");
            } else if (i == 8) {
                Game.mapScenarios.loadScenario_6();
                setLoadText("Loading Scenario #7");
            } else if (i == 9) {
                Game.mapScenarios.loadScenario_7();
                setLoadText("Loading Scenario #8");
            } else if (i == 10) {
                Game.mapScenarios.loadScenario_8();
                setLoadText("Loading Scenario #9");
            } else if (i == 11) {
                Game.mapScenarios.loadScenario_9();
                setLoadText("Loading Scenario #10");
            } else if (i == 12) {
                Game.mapScenarios.loadScenario_10();
                setLoadText("Loading Scenario #11");
            } else if (i == 13) {
                Game.mapScenarios.loadScenario_11();
                setLoadText("Loading Scenario #12");
            } else if (i == 14) {
                Game.mapScenarios.loadScenario_12();
                setLoadText("Loading Scenario #13");
            } else if (i == 15) {
                Game.mapScenarios.loadScenario_13();
                setLoadText("Loading Scenario #14");
            } else if (i == 16) {
                Game.mapScenarios.loadScenario_14();
                setLoadText("Loading Scenario #15");
            } else if (i == 17) {
                Game.mapScenarios.loadScenario_15();
                setLoadText("Loading Scenario #16");
            } else if (i == 18) {
                Game.mapScenarios.loadScenario_16();
                setLoadText("Loading Scenario #17");
            } else if (i == 19) {
                Game.mapScenarios.loadScenario_17();
                setLoadText("Loading Scenario #18");
            } else if (i == 20) {
                Game.mapScenarios.loadScenario_18();
                setLoadText(aBEBOpwLZcQFCZ.HKzeqclhwpLDfDq);
            } else if (i == 21) {
                Game.mapScenarios.loadScenario_19();
                setLoadText("Loading Scenario #20");
            } else if (i == 22) {
                Game.mapScenarios.loadScenario_20();
                setLoadText("Loading Scenario #21");
            } else if (i == 23) {
                Game.mapScenarios.loadScenario_21();
                setLoadText(HjHDSSkYG.oLIGGPj);
            } else if (i == 24) {
                Game.mapScenarios.loadScenario_22();
                setLoadText("Loading Scenario #23");
            } else if (i == 25) {
                Game.mapScenarios.loadScenario_23();
                setLoadText("Loading Scenario #24");
            } else if (i == 26) {
                Game.mapScenarios.loadScenario_24();
                setLoadText("Loading Scenario #25");
            } else if (i == 27) {
                Game.mapScenarios.loadScenario_25(editorMode);
                setLoadText(fTNtCctcBZcqKK.FLeljiHLJSgyzi);
            } else if (i == 28) {
                Game.mapScenarios.loadScenario_26();
                setLoadText(cIUGJCqyPXfp.fCJWfR);
            } else if (i == 29) {
                Game.mapScenarios.loadScenario_27();
                setLoadText("Loading Scenario #28");
            } else if (i == 30) {
                Game.mapScenarios.loadScenario_28();
                setLoadText("Loading Scenario #29");
            } else if (i == 31) {
                Game.mapScenarios.loadScenario_29();
                setLoadText("Loading Scenario #30");
            } else if (i == 32) {
                Game.mapScenarios.loadScenario_30();
                setLoadText("Loading Scenario #31");
            } else if (i == 33) {
                Game.mapScenarios.loadScenario_31();
                setLoadText("Loading Scenario #32");
            } else if (i == 34) {
                Game.mapScenarios.loadScenario_32();
                setLoadText("Loading Scenario #33");
            } else if (i == 35) {
                Game.mapScenarios.loadScenario_33();
                setLoadText("Loading Scenario #34");
            } else if (i == 36) {
                Game.mapScenarios.loadScenario_34();
                setLoadText(SwmJtrccN.NHgFbzPDkyPFBAV);
            } else if (i == 37) {
                Game.mapScenarios.loadScenario_35();
                setLoadText("Loading Scenario #36");
            } else if (i == 38) {
                Game.mapScenarios.loadScenario_36(editorMode);
                setLoadText("Loading Scenario #37");
            } else if (i == 39) {
                Game.mapScenarios.loadScenario_37();
                setLoadText("Loading Scenario #38");
            } else if (i == 40) {
                Game.mapScenarios.loadScenario_38(editorMode);
                setLoadText("Loading Scenario #39");
            } else if (i == 41) {
                Game.mapScenarios.loadScenario_39(editorMode);
                setLoadText("Loading Scenario #40");
            } else if (i == 42) {
                Game.mapScenarios.loadScenario_40(editorMode);
                setLoadText("Loading Scenario #41");
            } else if (i == 43) {
                Game.mapScenarios.loadScenario_41(editorMode);
                setLoadText("Loading Scenario #42");
            } else if (i == 44) {
                Game.mapScenarios.loadScenario_42();
                setLoadText("Loading Scenario #43");
            } else if (i == 45) {
                Game.mapScenarios.loadScenario_43();
                setLoadText("Loading Scenario #44");
            } else if (i == 46) {
                Game.mapScenarios.loadScenario_44();
                setLoadText("Loading Scenario #45");
            } else if (i == 47) {
                Game.mapScenarios.loadScenario_45();
                setLoadText("Loading Scenario #46");
            } else if (i == 48) {
                Game.mapScenarios.loadScenario_46();
                setLoadText("Loading Scenario #47");
            } else if (i == 49) {
                Game.mapScenarios.loadScenario_47();
                setLoadText(hQfu.KKkWPBqhfQc);
            } else if (i == 50) {
                Game.mapScenarios.loadScenario_48();
                setLoadText("Loading Scenario #49");
            } else if (i == 51) {
                Game.mapScenarios.loadScenario_49(editorMode);
                setLoadText("Loading Scenario #50");
            } else if (i == 52) {
                Game.mapScenarios.loadScenario_50(editorMode);
                setLoadText("Loading Scenario #51");
            } else if (i == 53) {
                Game.mapScenarios.loadScenario_51(editorMode);
                setLoadText("Loading Scenario #52");
            } else if (i == 54) {
                Game.mapScenarios.loadScenario_52();
                setLoadText(ATsAGKCnv.eGBti);
            } else if (i == 55) {
                Game.mapScenarios.loadScenario_53();
                setLoadText("Loading Scenario #54");
            } else if (i == 56) {
                Game.mapScenarios.loadScenario_54();
                setLoadText("Loading Scenario #55");
            } else if (i == 57) {
                Game.mapScenarios.loadScenario_55();
                setLoadText("Loading Scenario #56");
            } else if (i == 58) {
                Game.mapScenarios.loadScenario_56();
                setLoadText("Loading Scenario #57");
            } else if (i == 59) {
                Game.mapScenarios.loadScenario_57();
                setLoadText("Loading Scenario #58");
            } else if (i == 60) {
                Game.mapScenarios.loadScenario_58();
                setLoadText("Loading Scenario #59");
            } else if (i == 61) {
                EventsManager.loadScenarioEventsTag = Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID);
                Game.mapScenarios.loadScenario_59();
                setLoadText(cIUGJCqyPXfp.rECKr);
            } else if (i == 62) {
                Game.mapScenarios.loadScenario_60();
                setLoadText("Loading Scenario #61");
            } else if (i == 63) {
                Game.mapScenarios.loadScenario_61();
                setLoadText("Loading Scenario #62");
            } else if (i == 64) {
                Game.mapScenarios.loadScenario_62(editorMode);
                setLoadText("Loading Scenario #63");
            } else if (i == 65) {
                Game.mapScenarios.loadScenario_63();
                setLoadText("Loading Scenario #64");
            } else if (i == 66) {
                Game.mapScenarios.loadScenario_64();
                setLoadText("Loading Scenario #65");
            } else if (i == 67) {
                Game.mapScale.definedScale = MapScale.defScales.definedScale_Default;
                Game.mapScale.setCurrentScale(1.0f);
                NewGame.setRandomCiv();
                Game.mapBG.requestToDisposeMinimap = true;
                Game.menuManager.setViewIDWithoutAnimation(goToMenu);
            }
        } catch (Exception e) {
            CFG.LOG("loadScenario: " + this.iStepID);
            CFG.exceptionStack(e);
        }
        this.iStepID++;
    }

    public void setLoadText(String str) {
        this.loadingName = str;
    }
}
