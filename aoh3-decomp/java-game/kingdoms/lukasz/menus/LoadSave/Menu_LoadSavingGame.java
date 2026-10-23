package aoc.kingdoms.lukasz.menus.LoadSave;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menus.InitGame;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.HttpStatus;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Menu_LoadSavingGame extends Menu {
    public static int SAVE_FILE_ID;
    public static View goToMenu = View.IN_GAME;
    public int iNumOfSteps = HttpStatus.SC_OK;
    public String loadingName = "";
    public int iStepID = 0;

    public Menu_LoadSavingGame() {
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, new ArrayList(), true);
        setLoadText(Game.lang.get("Saving") + " #1");
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
            setLoadText(Game.lang.get("Saving") + " #" + (this.iStepID + 2));
            switch (this.iStepID) {
                case 0:
                    SAVE_FILE_ID = 0;
                    SaveGameManager.Save_1();
                    break;
                case 2:
                    SaveGameManager.Save_Provinces_Data();
                    break;
                case 5:
                    SaveGameManager.Save_Provinces_Data2();
                    break;
                case 9:
                    SaveGameManager.Save_Provinces_Data3();
                    break;
                case 12:
                    SaveGameManager.Save_Provinces_Data4();
                    break;
                case 16:
                    SaveGameManager.Save_Provinces_Data5();
                    break;
                case 20:
                    SaveGameManager.Save_Provinces_Data6();
                    break;
                case 24:
                    SaveGameManager.Save_Provinces_Data7();
                    break;
                case 28:
                    SaveGameManager.Save_Provinces_Data8();
                    break;
                case 32:
                    SaveGameManager.Save_Provinces_Data9();
                    break;
                case 35:
                    SaveGameManager.Save_Provinces_Data_Population();
                    break;
                case 40:
                    SaveGameManager.Save_Provinces_Data_ConstructionBuilding();
                    break;
                case 42:
                    SAVE_FILE_ID = 0;
                    break;
                case 43:
                    if (SAVE_FILE_ID * GameValues.value.SAVE_PROVINCES_BUILDINGS_PER_FILE < Game.getProvincesSize()) {
                        int i = SAVE_FILE_ID;
                        SAVE_FILE_ID = i + 1;
                        SaveGameManager.Save_Provinces_Data_Buildings(i);
                        return;
                    }
                    break;
                case 44:
                    SAVE_FILE_ID = 0;
                    break;
                case 46:
                    SaveGameManager.saveGuarantee();
                    break;
                case Input.Keys.T /* 48 */:
                    SaveGameManager.saveAlliances();
                    break;
                case Input.Keys.V /* 50 */:
                    SaveGameManager.saveRivals();
                    break;
                case Input.Keys.Y /* 53 */:
                    SaveGameManager.saveRelationsImprove();
                    break;
                case Input.Keys.COMMA /* 55 */:
                    SaveGameManager.saveRelationsDamage();
                    break;
                case Input.Keys.ALT_LEFT /* 57 */:
                    SaveGameManager.saveDefensive();
                    break;
                case Input.Keys.SHIFT_LEFT /* 59 */:
                    SaveGameManager.saveMilitaryAccess();
                    break;
                case Input.Keys.TAB /* 61 */:
                    SaveGameManager.saveNonAggression();
                    break;
                case 63:
                    SaveGameManager.saveTruces();
                    break;
                case Input.Keys.ENVELOPE /* 65 */:
                    SaveGameManager.saveRelations();
                    break;
                case Input.Keys.MINUS /* 69 */:
                    SaveGameManager.saveRelations2();
                    break;
                case Input.Keys.BACKSLASH /* 73 */:
                    SaveGameManager.saveWars();
                    break;
                case Input.Keys.SLASH /* 76 */:
                    SaveGameManager.Save_Provinces_Data_InvestDaysLeft();
                    break;
                case Input.Keys.HEADSETHOOK /* 79 */:
                    SaveGameManager.Save_Provinces_Data_InvestTax();
                    break;
                case Input.Keys.MENU /* 82 */:
                    SaveGameManager.Save_Provinces_Data_InvestManpower();
                    break;
                case Input.Keys.MEDIA_PLAY_PAUSE /* 85 */:
                    SaveGameManager.Save_Provinces_Data_InvestGrowthRate();
                    break;
                case Input.Keys.MEDIA_PREVIOUS /* 88 */:
                    SaveGameManager.Save_Provinces_Data_Infrastructure();
                    break;
                case Input.Keys.MUTE /* 91 */:
                    SaveGameManager.Save_Provinces_Data_CoreConstruction();
                    break;
                case Input.Keys.PAGE_DOWN /* 93 */:
                    SaveGameManager.Save_Provinces_Data_ReligionConversion();
                    break;
                case Input.Keys.SWITCH_CHARSET /* 95 */:
                    SaveGameManager.Save_Provinces_Data_WondersConstruction();
                    break;
                case Input.Keys.BUTTON_B /* 97 */:
                    SaveGameManager.Save_Civ_Data_UnlockedTechnologies();
                    break;
                case 101:
                    SaveGameManager.Save_Civ_Data_NukeProduction();
                    break;
                case Input.Keys.BUTTON_R1 /* 103 */:
                    SaveGameManager.Save_Civ_Data_ResearchProgress();
                    break;
                case Input.Keys.BUTTON_THUMBL /* 106 */:
                    SaveGameManager.Save_Civ_Data_UnlockedAdvantages();
                    break;
                case Input.Keys.BUTTON_SELECT /* 109 */:
                    SaveGameManager.Save_Civ_Data_Laws();
                    break;
                case Input.Keys.ESCAPE /* 111 */:
                    SaveGameManager.Save_Civ_Data_RecruitingArmy();
                    break;
                case Input.Keys.FORWARD_DEL /* 112 */:
                    SaveGameManager.Save_Civ_Data_RecruitArmyCreate();
                    break;
                case Input.Keys.CAPS_LOCK /* 115 */:
                    if (SAVE_FILE_ID * GameValues.value.SAVE_PROVINCES_ARMIES_PER_FILE < Game.getProvincesSize()) {
                        int i2 = SAVE_FILE_ID;
                        SAVE_FILE_ID = i2 + 1;
                        SaveGameManager.Save_Provinces_Data_Armies_MoreFiles(i2);
                        return;
                    }
                    break;
                case Input.Keys.PAUSE /* 121 */:
                    SaveGameManager.Save_Map_Data_Plagues();
                    break;
                case Input.Keys.END /* 123 */:
                    SaveGameManager.Save_Provinces_Data10();
                    break;
                case 125:
                    SaveGameManager.Save_Provinces_Data_Plagues();
                    break;
                case 127:
                    SaveGameManager.Save_Civs_Data_Rulers();
                    break;
                case Input.Keys.CONTROL_LEFT /* 129 */:
                    SaveGameManager.Save_Civs_Data_RulersBonuses();
                    break;
                case Input.Keys.F2 /* 132 */:
                    SaveGameManager.Save_Civs_Data_AdvisorsAdm();
                    break;
                case Input.Keys.F4 /* 134 */:
                    SaveGameManager.Save_Civs_Data_AdvisorsAdmBonuses();
                    break;
                case Input.Keys.F6 /* 136 */:
                    SaveGameManager.Save_Civs_Data_AdvisorsEconomy();
                    break;
                case Input.Keys.F8 /* 138 */:
                    SaveGameManager.Save_Civs_Data_AdvisorsEconomyBonuses();
                    break;
                case Input.Keys.F11 /* 141 */:
                    SaveGameManager.Save_Civs_Data_AdvisorsInnovation();
                    break;
                case Input.Keys.NUM_LOCK /* 143 */:
                    SaveGameManager.Save_Civs_Data_AdvisorsInnovationBonuses();
                    break;
                case Input.Keys.NUMPAD_1 /* 145 */:
                    SaveGameManager.Save_Civs_Data_AdvisorsMilitary();
                    break;
                case Input.Keys.NUMPAD_3 /* 147 */:
                    SaveGameManager.Save_Civs_Data_AdvisorsMilitaryBonuses();
                    break;
                case Input.Keys.NUMPAD_5 /* 149 */:
                    SaveGameManager.Save_Civs_Data_GeneralsNotAssigned();
                    break;
                case Input.Keys.NUMPAD_8 /* 152 */:
                    SaveGameManager.Save_Civs_Data_TemporaryBonuses();
                    break;
                case Input.Keys.NUMPAD_MULTIPLY /* 155 */:
                    SaveGameManager.Save_Civs_Data_EventsVariables();
                    break;
                case Input.Keys.NUMPAD_DOT /* 158 */:
                    SaveGameManager.Save_Civs_Data_EventsVariables2();
                    break;
                case Input.Keys.NUMPAD_ENTER /* 160 */:
                    SaveGameManager.Save_Civs_Data_GoldenAges();
                    break;
                case Input.Keys.NUMPAD_LEFT_PAREN /* 162 */:
                    SaveGameManager.Save_Civs_Data_Loans();
                    break;
                case 164:
                    SaveGameManager.Save_Civs_Data_Legacies();
                    break;
                case 165:
                    SaveGameManager.Save_Civs_Data_MoveUnits();
                    break;
                case 168:
                    SaveGameManager.Save_Civs_Data_EventsData();
                    break;
                case 170:
                    SaveGameManager.Save_Civs_Data_EventsData2();
                    break;
                case 172:
                    SaveGameManager.Save_Civs_Data_EventsData3();
                    break;
                case 175:
                    SaveGameManager.Save_Civs_Data();
                    break;
                case 178:
                    SaveGameManager.Save_Civs_Data2();
                    break;
                case 181:
                    SaveGameManager.Save_Civs_Data3();
                    break;
                case Input.Keys.F13 /* 183 */:
                    SaveGameManager.Save_Civs_Data4();
                    break;
                case Input.Keys.F16 /* 186 */:
                    SaveGameManager.Save_Player_Data();
                    break;
                case Input.Keys.F18 /* 188 */:
                    SaveGameManager.Save_Player_Stats();
                    break;
                case Input.Keys.F21 /* 191 */:
                    SaveGameManager.Save_Player_Stats2();
                    break;
                case Input.Keys.F23 /* 193 */:
                    SaveGameManager.Save_Player_Stats3();
                    break;
                case 195:
                    SaveGameManager.Save_Map_AlliancesSpecial();
                    break;
                case 198:
                    SaveGameManager.Save_Map_Data_Battles();
                    break;
                case HttpStatus.SC_ACCEPTED /* 202 */:
                    SaveGameManager.Save_Rebels_Data_MoveUnits();
                    break;
                case HttpStatus.SC_RESET_CONTENT /* 205 */:
                    SaveGameManager.Save_Rebels_Data();
                    break;
                case 208:
                    SaveGameManager.Save_Civs_Data_AI_Merge();
                    break;
                case 211:
                    SaveGameManager.Save_Civs_Data_AI_CreateNewArmy();
                    break;
                case 213:
                    SaveGameManager.Save_Civs_Data_AI_Diplomacy();
                    break;
                case 215:
                    SaveGameManager.Save_Civs_Data_AI_Budget();
                    break;
                case 218:
                    Game.stats.saveStats();
                    break;
                case 221:
                    SaveGameManager.Save_Provinces_Data_Vassals();
                    break;
                case 223:
                    Game.menuManager.setViewIDWithoutAnimation(goToMenu);
                    break;
            }
        } catch (Exception e) {
            CFG.LOG(Game.lang.get("Saving") + ": " + this.iStepID);
            CFG.exceptionStack(e);
        }
        this.iStepID++;
    }

    public void setLoadText(String str) {
        this.loadingName = str;
    }
}
