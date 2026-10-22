package aoc.kingdoms.lukasz.menus;

import androidx.arch.core.ht.qIuEvFbUtcea;
import androidx.core.internal.oiV.CoLRpi;
import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.AI.Build.AI_Build;
import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadManager;
import aoc.kingdoms.lukasz.jakowski.setting.SettingsDesktop;
import aoc.kingdoms.lukasz.jakowski.setting.SettingsProvince;
import aoc.kingdoms.lukasz.map.AdvantagesManager;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.map.LegacyManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.allianceHRE.HREManager;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.battles.BattleManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.map.map.MapBG;
import aoc.kingdoms.lukasz.map.map.Ship.ShipManager;
import aoc.kingdoms.lukasz.map.plague.PlagueManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorder;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.map.province.ProvinceNamesManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.MessageButton;
import aoc.kingdoms.lukasz.menu_element.MessageWar;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyIcon;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import aoc.kingdoms.lukasz.menus.NewGame.NewGame;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.badlogic.gdx.net.otUh.aBEBOpwLZcQFCZ;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InitGame extends Menu {
    public static Image background = null;
    public static int backgroundHeight = -1;
    public static int backgroundID = -1;
    public static int backgroundSize = 1;
    public static int backgroundWidth = 0;
    public static int iNumOfSteps = 153;
    public static int iStepID = 0;
    public static int numOfProvincesBGToLoad = 60;
    public String loadingName = "";
    private boolean justOnce = true;
    public int takeABreak = 0;
    public boolean reloadBoldFont = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.InitGame$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceNamesManager.buildProvNameData();
        }
    }

    public InitGame() {
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, new ArrayList(), true);
        numOfProvincesBGToLoad = CFG.isDesktop() ? GameValues.value.LOADING_NUM_OF_PROVINCES_PC : GameValues.value.LOADING_NUM_OF_PROVINCES_MOBILE;
    }

    private final void loadArmiesFlagData() {
        try {
            String[] strArrSplit = FileManager.loadFile("ui/army/" + getArmies_Path() + "flag.txt").readString().split(";");
            ProvinceDrawArmy.armyFlagPosX = Integer.parseInt(strArrSplit[0]);
            ProvinceDrawArmy.armyFlagPosY = Integer.parseInt(strArrSplit[1]);
            ProvinceDrawArmy.armyFlagPosWidth = Integer.parseInt(strArrSplit[2]);
            ProvinceDrawArmy.armyFlagPosHeight = Integer.parseInt(strArrSplit[3]);
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
    }

    public static boolean loadArmy_Default() {
        return CFG.isDesktop();
    }

    public static final void loadBackground() {
        Image image = background;
        if (image != null) {
            image.dispose();
            background = null;
        }
        for (int i = 0; i < 5; i++) {
            int iNextInt = Game.oR.nextInt(backgroundSize);
            if (iNextInt != backgroundID) {
                backgroundID = iNextInt;
                break;
            }
        }
        background = new Image(ImageManager.loadTexture_RGB888("ui/loading/" + backgroundID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        float fMax = Math.max(CFG.GAME_WIDTH / background.getWidth(), CFG.GAME_HEIGHT / background.getHeight());
        backgroundWidth = (int) (background.getWidth() * fMax);
        backgroundHeight = (int) (background.getHeight() * fMax);
    }

    private final void loadImagesInit() {
        Images.boxTitle = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/boxTitle.png");
        Images.mainBox = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "mainMenu/mainBox.png");
        Images.boxBGCorner = ImageManager.addImage("ui/other/boxBGCorner.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.boxBGLine = ImageManager.addImage("ui/other/boxBGLine.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.boxBGLineH = ImageManager.addImage("ui/other/boxBGLineH.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.boxBGLinePix = ImageManager.addImage("ui/other/boxBGLinePix.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.buttonGame = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/buttonGame.png");
        Images.buttonGameH = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/buttonGameH.png");
        Images.statsBG = ImageManager.loadImage(aBEBOpwLZcQFCZ.YtXdQofv, Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.statsBG2 = ImageManager.loadImage("ui/other/statsBG2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.statsRectBG = ImageManager.loadImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/statsRectBG.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.statsRectBGBorder = ImageManager.loadImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/statsRectBGBorder.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
    }

    private final void loadImages_1() {
        Images.randomCivilizationFlag = ImageManager.addImage("gfx/flagsXH/ran.png");
        Images.map_border = ImageManager.addImage("gfx/map/mapBorder.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.Repeat);
        Images.outsideMap = ImageManager.addImage("gfx/map/outsideMap.png", Pixmap.Format.RGB888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.waves = ImageManager.addImage("gfx/map/waves.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.click = ImageManager.addImage("gfx/map/click.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.noise = ImageManager.addImage("ui/other/noise.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.activeSort = ImageManager.addImage("ui/other/activeSort.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.line_11 = ImageManager.addImage("ui/lines/line_11.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.line_22 = ImageManager.addImage("ui/lines/line_22.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.imgLine_32 = ImageManager.loadImage("ui/lines/line_32.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.line_32 = ImageManager.addImage("ui/lines/line_32.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.line_33 = ImageManager.addImage("ui/lines/line_33.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.line_44 = ImageManager.addImage("ui/lines/line_44.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.line_26 = ImageManager.addImage("ui/lines/line_26.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.line_62 = ImageManager.addImage("ui/lines/line_62.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.line_32_vertical = ImageManager.addImage("ui/lines/line_32_vertical.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat);
        Images.circle_55 = ImageManager.addImage("ui/graph/circle_55.png");
        Images.mainTitle = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "mainMenu/mainTitle.png");
        Images.mainBox2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "mainMenu/mainBox2.png");
        Images.f0android = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "mainMenu/android.png");
        Images.app = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "mainMenu/app.png");
        Images.pc = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "mainMenu/pc.png");
        Images.yt = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "mainMenu/yt.png");
        Images.title1Red = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/title1Red.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.title2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/title2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideTop = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideTop.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideBot = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideBot.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.newGameOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/newGameOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.recruitArmyOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/recruitArmyOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.provinceInfoOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/provinceInfoOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.provinceInfoOver1 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/provinceInfoOver1.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.provinceInfoOver2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/provinceInfoOver2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.provinceInfoOverCapital = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/provinceInfoOverCapital.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.provinceInfoNeutralOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/provinceInfoNeutralOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.civInfoOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/civInfoOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.rulerOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/rulerOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.civOptionsOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/civOptionsOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.budgetOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/budgetOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.goodsOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/goodsOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.outlinerOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/outlinerOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.warViewOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/warViewOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.title500 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/title500.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideTop500 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideTop500.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideBot500 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideBot500.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.title530 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/title530.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideTop530 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideTop530.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideBot530 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideBot530.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.title630 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/title630.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideTop630 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideTop630.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideBot630 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + lOow.EqwAhIPfVvOmQg, Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
    }

    private final void loadImages_2() {
        Images.infoBox2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoBox2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoBox = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoBox.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoTop = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoTop.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoBot = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoBot.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoLeft = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoLeft.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoRight = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoRight.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoLegacy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoLegacy.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoCrown = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoCrown.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoTechnology = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoTechnology.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoGeneral = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoGeneral.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoAtomic = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoAtomic.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoAdvantage = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoAdvantage.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoDiplomacy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoDiplomacy.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoWar = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoWar.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoUnrest = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoUnrest.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoTechnology2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoTechnology2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.messageBG = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "message/messageBG.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.messageMask = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "message/messageMask.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.messageOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "message/messageOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.warBG = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "message/warBG.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.warMask = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + SwmJtrccN.PsQDZxHia, Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.warOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "message/warOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.currentSituationBG = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "message/currentSituationBG.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoMaskLeft = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoMaskLeft.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.infoMaskRight = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "infoBox/infoMaskRight.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.battleOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/battleOver0.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.battleOver1 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/battleOver1.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.battleOver2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/battleOver2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.battleOver3 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/battleOver3.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.siegeOver0 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/siegeOver0.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.siegeOver1 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/siegeOver1.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.siegeOver2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/siegeOver2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.siegeOverFort0 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/siegeOverFort0.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.siegeOverFort1 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/siegeOverFort1.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.siegeOverFort2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/siegeOverFort2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyCampOver0 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyCampOver0.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyCampOver1 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyCampOver1.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyCampOver2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyCampOver2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyCampOver3 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyCampOver3.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyMove0 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + jkEBdieJhbh.CictRCLHI, Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyMove1 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyMove1.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyMove2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyMove2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyMove3 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyMove3.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyAtSea0 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyAtSea0.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyAtSea1 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyAtSea1.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyAtSea2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyAtSea2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.armyAtSea3 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/armyAtSea3.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.title400 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/title400.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideTop400 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideTop400.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideBot400 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideBot400.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.title600 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/title600.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideTop600 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideTop600.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideBot600 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideBot600.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideBot600_2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideBot600_2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.title580 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/title580.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideTop580 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideTop580.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideBot580 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideBot580.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.title698 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/title698.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideTop698 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideTop698.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideBot698 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideBot698.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.title928 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/title928.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideTop928 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideTop928.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideBot928 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideBot928.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.insideTechTree = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/insideTechTree.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.titleTechTree = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/titleTechTree.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.titleTechTreeOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/titleTechTreeOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.Repeat);
    }

    private final void loadImages_3() {
        Images.graphBG = ImageManager.addImage("ui/graph/graphBG.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.Repeat);
        Images.army = ImageManager.addImage("ui/army/" + getArmies_Path() + "army.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyAlly = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyAlly.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyEnemy = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyEnemy.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer0 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer0.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer1 = ImageManager.addImage("ui/army/" + getArmies_Path() + IlLkpaQxs.xDqaiaLIIzNaoG, Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer2 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer3 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer3.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer4 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer4.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer5 = ImageManager.addImage("ui/army/" + getArmies_Path() + kfGnwGN.EkNzpAs, Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer6 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer6.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer7 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer7.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer8 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer8.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer9 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer9.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer10 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer10.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer11 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer11.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer12 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer12.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer13 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer13.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyPlayer14 = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyPlayer14.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.terrainSmall = ImageManager.addImage("ui/army/terrainSmall.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyRetreat = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyRetreat.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalMask = ImageManager.addImage("ui/army/flagCapitalMask.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalOver = ImageManager.addImage("ui/army/flagCapitalOver.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalWar = ImageManager.addImage("ui/army/flagCapitalWar_m.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalMask_s = ImageManager.addImage("ui/army/flagCapitalMask_s.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalOver_s = ImageManager.addImage("ui/army/flagCapitalOver_s.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalWar_s = ImageManager.addImage("ui/army/flagCapitalWar_s.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalMask_l = ImageManager.addImage("ui/army/flagCapitalMask_l.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalOver_l = ImageManager.addImage("ui/army/flagCapitalOver_l.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalWar_l = ImageManager.addImage("ui/army/flagCapitalWar_l.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalOver_Low = ImageManager.addImage("ui/army/flagCapitalOver_Low.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalOver_s_Low = ImageManager.addImage("ui/army/flagCapitalOver_s_Low.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagCapitalOver_l_Low = ImageManager.addImage("ui/army/flagCapitalOver_l_Low.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyUnitsFrame = ImageManager.addImage("ui/army/armyUnitsFrame.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.battleIcon0 = ImageManager.addImage("ui/army/" + getArmies_Path() + TGqtTWl.iVQ, Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.battleIcon1 = ImageManager.addImage("ui/army/" + getArmies_Path() + "battleIcon1.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.battleIcon2 = ImageManager.addImage("ui/army/" + getArmies_Path() + "battleIcon2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.battleIcon3 = ImageManager.addImage("ui/army/" + getArmies_Path() + "battleIcon3.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.battleIcon4 = ImageManager.addImage("ui/army/" + getArmies_Path() + "battleIcon4.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.battleIcon5 = ImageManager.addImage("ui/army/" + getArmies_Path() + "battleIcon5.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyLeft = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyLeft.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        for (int i = 0; i < GameValues.inGame.ARMY_LEFT_IMAGES + 1; i++) {
            Images.armyLeft3.add(ImageManager.loadImage("ui/army/" + getArmies_Path() + i + ".png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge));
        }
        Images.armyLeft3_Width = Images.armyLeft3.get(0).getWidth();
        Images.terrainFrame = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "menus/terrainFrame.png");
        Images.unitsFrame = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "units/unitsFrame.png");
        Images.unitsFrameSmall = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "units/unitsFrameSmall.png");
        Images.unitsFrameBattle = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "units/unitsFrameBattle.png");
        Images.unitsPlus = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "units/unitsPlus.png");
        Images.battleArmy0 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "units/battleArmy0.png");
        Images.battleArmy1 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "units/battleArmy1.png");
        Images.battleArmy2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "units/battleArmy2.png");
        Images.generalFrame = ImageManager.addImage("game/generals/generals/" + CFG.getRescouresPath_Short() + "generalFrame.png");
        Images.generalFrameBattle = ImageManager.addImage("game/generals/generals/" + CFG.getRescouresPath_Short() + ATsAGKCnv.euki);
        Images.pinnedGeneralMask = ImageManager.addImage("game/generals/generals/" + CFG.getRescouresPath_Short() + "pinnedGeneralMask.png");
        Images.pinnedGeneralFrame = ImageManager.addImage("game/generals/generals/" + CFG.getRescouresPath_Short() + "pinnedGeneralFrame.png");
        Images.buildingsFrame = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + qIuEvFbUtcea.gpPIVuKMfLrlp);
        Images.buildingsFrameSmall = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/buildingsFrameSmall.png");
        Images.buildButton = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/buildButton.png");
        Images.wonderFrame = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/wonderFrame.png");
        Images.armyGeneralAcademy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/armyGeneralAcademy.png");
        Images.armyMilitaryAcademy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/armyMilitaryAcademy.png");
        Images.buildingMoveCapital = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/buildingMoveCapital.png");
        Images.nuclearReactor = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/nuclearReactor.png");
        Images.atomicBomb = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/atomicBomb.png");
        Images.supremeCourt = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/supremeCourt.png");
        Images.armyGeneralAcademyBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/armyGeneralAcademyBig.png");
        Images.armyMilitaryAcademyBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/armyMilitaryAcademyBig.png");
        Images.supremeCourtBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/supremeCourtBig.png");
        Images.nuclearReactorBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/nuclearReactorBig.png");
        Images.atomicBombBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/atomicBombBig.png");
        for (int i2 = 0; i2 < GameValues.capital.CAPITAL_IMAGES; i2++) {
            Images.buildingCapital.add(Integer.valueOf(ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/buildingCapital" + i2 + ".png")));
            Images.buildingCapitalBig.add(Integer.valueOf(ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buildings/buildingCapitalBig" + i2 + ".png")));
        }
        loadArmiesFlagData();
    }

    private final void loadImages_4() {
        String str = IlLkpaQxs.QoTSlzkkqfkhE;
        Images.rulerFrame = ImageManager.addImage(str + CFG.getRescouresPath() + "ruler/rulerFrame.png");
        Images.capitalLeft = ImageManager.addImage("ui/army/capitalLeft.png");
        Images.capitalLeftOver = ImageManager.addImage("ui/army/capitalLeftOver.png");
        Images.capitalRight = ImageManager.addImage("ui/army/capitalRight.png");
        Images.armyFlag = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyFlag.png");
        Images.armyMorale = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyMorale.png");
        Images.unitsFrameMapMask = ImageManager.addImage("ui/army/unitsFrameMapMask.png");
        Images.unitsFrameMap = ImageManager.addImage("ui/army/unitsFrameMap.png");
        Images.progressBarFrame = ImageManager.addImage("ui/army/progressBarFrame.png");
        Images.progressBarFrameMask = ImageManager.addImage("ui/army/progressBarFrameMask.png");
        Images.progressBarFrame2 = ImageManager.addImage("ui/army/progressBarFrame2.png");
        Images.progressBarFrame2Mask = ImageManager.addImage(hQfu.XeXycRJUhny);
        Images.armyHover = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyHover.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyHoverRight = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyHoverRight.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.armyActive = ImageManager.addImage("ui/army/" + getArmies_Path() + "armyActive.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flag_rect = ImageManager.addImage(str + CFG.getRescouresPath() + "flags/flagRect.png");
        Images.flagRect2 = ImageManager.addImage(str + CFG.getRescouresPath() + "flags/flagRect2.png");
        Images.flagRect2Mask = ImageManager.addImage(str + CFG.getRescouresPath() + "flags/flagRect2Mask.png");
        Images.titleFlagOver = ImageManager.addImage("ui/other/titleFlagOver.png");
        CFG.CIV_FLAG_WIDTH = ImageManager.getImage(Images.flag_rect).getWidth();
        CFG.CIV_FLAG_HEIGHT = ImageManager.getImage(Images.flag_rect).getHeight();
        Images.flagMaskDefault = ImageManager.addImage(str + CFG.getRescouresPath() + "flags/flagMask.png");
        Images.flagOverDefault = ImageManager.addImage(str + CFG.getRescouresPath() + "flags/flagOver.png");
        Images.flagDiplomacyMask = ImageManager.addImage(str + CFG.getRescouresPath() + "flags/flagDiplomacyMask.png");
        Images.flagDiplomacyOver = ImageManager.addImage(str + CFG.getRescouresPath() + "flags/flagDiplomacyOver.png");
        Images.flagDiplomacyArrow = ImageManager.addImage(str + CFG.getRescouresPath() + "flags/flagDiplomacyArrow.png");
        Images.noAdvisor = ImageManager.addImage("game/advisors/advisors/" + CFG.getRescouresPath_Short() + "noAdvisor.png");
        Images.moveLine = ImageManager.addImage("gfx/move/moveLine_32px.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
        Images.wiki = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/wiki.png");
        Images.defense = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/defense.png");
        Images.movementSpeed = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/movementSpeed.png");
        Images.movementCancel = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/movementCancel.png");
        Images.pin = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/pin.png");
        Images.attack = ImageManager.addImage(str + CFG.getRescouresPath() + XjthpFh.hoVejzVtH);
        Images.gold = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/gold.png");
        Images.goldPositive = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/goldPositive.png");
        Images.goldNegative = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/goldNegative.png");
        Images.inflation = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/inflation.png");
        Images.time = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/time.png");
        Images.nuke = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/nuke.png");
        Images.ship = ImageManager.addImage(str + CFG.getRescouresPath() + CvuNnwgYwe.JOrnK);
        Images.government = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/government.png");
        Images.law = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/law.png");
        Images.advantages = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/advantages.png");
        Images.siege = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/siege.png");
        Images.fort = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/fort.png");
        Images.battle = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/battle.png");
        Images.missions = ImageManager.addImage(str + CFG.getRescouresPath() + qIuEvFbUtcea.wmSRQsqra);
        Images.encyclopedia = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/encyclopedia.png");
        Images.upgrade = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/upgrade.png");
        Images.fortDefense = ImageManager.addImage(str + CFG.getRescouresPath() + fiRhHJntP.CJDHtQlF);
        Images.fortDefense_2 = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/fortDefense_2.png");
        Images.technology = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/technology.png");
        Images.technology2 = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/technology2.png");
        Images.world = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/world.png");
        Images.message = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/message.png");
        Images.hre = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/hre.png");
        Images.hreBig = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/hreBig.png");
        Images.invasion = ImageManager.addImage(str + CFG.getRescouresPath() + "icons/invasion.png");
    }

    private final void loadImages_5() {
        Images.heart = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/heart.png");
        Images.war = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/war.png");
        Images.warBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/warBig.png");
        Images.defensivePactBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/defensivePactBig.png");
        Images.insultBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/insultBig.png");
        Images.weariness = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/weariness.png");
        Images.relations = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/relations.png");
        Images.relationsDown = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/relationsDown.png");
        Images.relationsUp = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/relationsUp.png");
        Images.insult = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/insult.png");
        Images.battleBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/battleBig.png");
        Images.interveneBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/interveneBig.png");
        Images.compare = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/compare.png");
        Images.compareBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/compareBig.png");
        Images.intervene = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/intervene.png");
        Images.nonAggressionBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/nonAggressionBig.png");
        Images.militaryAccessBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/militaryAccessBig.png");
        Images.allianceBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/allianceBig.png");
        Images.rivalsBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/rivalsBig.png");
        Images.guaranteeIndependenceBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/guaranteeIndependenceBig.png");
        Images.giftBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/giftBig.png");
        Images.economyUp = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/economyUp.png");
        Images.economyDown = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/economyDown.png");
        Images.economyUp2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/economyUp2.png");
        Images.economyDown2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/economyDown2.png");
        Images.tax = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/tax.png");
        Images.taxUp = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/taxUp.png");
        Images.council = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/council.png");
        Images.brush = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/brush.png");
        Images.victoryPoints = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/victoryPoints.png");
        Images.rank = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/rank.png");
        Images.x = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/x.png");
        Images.v = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/v.png");
        Images.religion = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/religion.png");
        Images.swords = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/swords.png");
        Images.core = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/core.png");
        Images.warPeace = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/warPeace.png");
        Images.warPeaceBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/warPeaceBig.png");
        Images.warDemands = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/warDemands.png");
        Images.warDemandsBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/warDemandsBig.png");
        Images.warSurrender = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/warSurrender.png");
        Images.truce = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/truce.png");
        Images.spy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/spy.png");
        Images.spyBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/spyBig.png");
        Images.frontLine = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/frontLine.png");
        Images.aggressiveExpansion = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/aggressiveExpansion.png");
        Images.mercenaries = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/mercenaries.png");
        Images.sandbox = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/sandbox.png");
        Images.goldenGold = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/goldenGold.png");
        Images.goldenGreen = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/goldenGreen.png");
        Images.goldenBlue = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/goldenBlue.png");
        Images.stats = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/stats.png");
        Images.development = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/development.png");
        Images.rankBronze = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/rankBronze.png");
        Images.rankSilver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/rankSilver.png");
        Images.rankGold = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/rankGold.png");
        Images.rankBlack = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/rankBlack.png");
        Images.diplomacy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/diplomacy.png");
        Images.legacy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/legacy.png");
        Images.corruption = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/corruption.png");
        Images.disbandArmy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/disbandArmy.png");
        Images.splitArmy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/splitArmy.png");
        Images.mergeArmy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/mergeArmy.png");
        Images.reorganizeArmy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/reorganizeArmy.png");
        Images.disbandArmy2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/disbandArmy2.png");
        Images.splitArmy2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/splitArmy2.png");
        Images.mergeArmy2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/mergeArmy2.png");
        Images.reorganizeArmy2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/reorganizeArmy2.png");
        Images.disbandArmy3 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/disbandArmy3.png");
        Images.splitArmy3 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/splitArmy3.png");
        Images.mergeArmy3 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/mergeArmy3.png");
        Images.reorganizeArmy3 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/reorganizeArmy3.png");
        Images.gift = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/gift.png");
        Images.loan = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + HTGgowNjn.NzlabTc);
        Images.nonAggression = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/nonAggression.png");
        Images.nonAggressionExpired = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/nonAggressionExpired.png");
        Images.defensivePactExpired = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/defensivePactExpired.png");
        Images.allianceExpired = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/allianceExpired.png");
        Images.truceExpired = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/truceExpired.png");
        Images.militaryAccessExpired = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/militaryAccessExpired.png");
        Images.guaranteeIndependenceExpired = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/guaranteeIndependenceExpired.png");
        Images.rivals = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + CoLRpi.QEnyZQzDhVm);
        Images.alliance = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/alliance.png");
        Images.union = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/union.png");
        Images.unionBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + ClXgFvsSKQc.OTP);
        Images.militaryAccess = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/militaryAccess.png");
        Images.militaryAccess2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/militaryAccess2.png");
        Images.guaranteeIndependence = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/guaranteeIndependence.png");
        Images.buildings = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/buildings.png");
        Images.construction = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/construction.png");
        Images.currentSituation = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/currentSituation.png");
        Images.plunder = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/plunder.png");
        Images.peace = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/peace.png");
        Images.disease = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/disease.png");
        Images.vassal = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/vassal.png");
        Images.vassalBig = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/vassalBig.png");
        Images.resourceNone = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/resourceNone.png");
        Images.skill = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/skill.png");
        Images.civRank_0 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/civRank_0.png");
        Images.civRank_1 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/civRank_1.png");
        Images.civRank_2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/civRank_2.png");
        Images.civRank_3 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/civRank_3.png");
        Images.civRank_4 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/civRank_4.png");
        Images.civRank_5 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/civRank_5.png");
        Images.capital = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/capital.png");
        Images.stability = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/stability.png");
        Images.civStability = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/civStability.png");
        if (ImageManager.getImage(Images.disbandArmy).getWidth() > ButtonArmyIcon.maxWidth) {
            ButtonArmyIcon.maxWidth = ImageManager.getImage(Images.disbandArmy).getWidth();
        }
        if (ImageManager.getImage(Images.splitArmy).getWidth() > ButtonArmyIcon.maxWidth) {
            ButtonArmyIcon.maxWidth = ImageManager.getImage(Images.splitArmy).getWidth();
        }
        if (ImageManager.getImage(Images.mergeArmy).getWidth() > ButtonArmyIcon.maxWidth) {
            ButtonArmyIcon.maxWidth = ImageManager.getImage(Images.mergeArmy).getWidth();
        }
        if (ImageManager.getImage(Images.reorganizeArmy).getWidth() > ButtonArmyIcon.maxWidth) {
            ButtonArmyIcon.maxWidth = ImageManager.getImage(Images.reorganizeArmy).getWidth();
        }
        Game.unionManagerFlags.loadImages();
    }

    private final void loadImages_6() {
        Images.information = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/information.png");
        Images.arrowUpDown = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "minimap/arrowUpDown.png");
        Images.mapModesTerrain = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "minimap/mapModesTerrain.png");
        Images.mapModesCivs = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "minimap/mapModesCivs.png");
        Images.mapModesGoods = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "minimap/mapModesGoods.png");
        Images.mapModesWonders = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "minimap/mapModesWonders.png");
        Images.mapModesReligion = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "minimap/mapModesReligion.png");
        Images.mapModesInfrastructure = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "minimap/mapModesInfrastructure.png");
        Images.buttonPlay = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/buttonPlay.png");
        Images.buttonPlay2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/buttonPlay2.png");
        Images.missionMask = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/missionMask.png");
        Images.missionOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/missionOver.png");
        Images.techGray = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techGray.png");
        Images.techBlue = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techBlue.png");
        Images.techResearched = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techResearched.png");
        Images.techAvailable = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techAvailable.png");
        Images.techCorner = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techCorner.png");
        Images.techOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techOver.png");
        Images.techMask = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techMask.png");
        Images.techMaskSquare = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techMaskSquare.png");
        Images.techBattleWidth = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techBattleWidth.png");
        Images.techEmpty = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techEmpty.png");
        Images.techLegacy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techLegacy.png");
        Images.techGeneral = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techGeneral.png");
        Images.techDiscipline = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techDiscipline.png");
        Images.techMorale = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techMorale.png");
        Images.techDefense = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techDefense.png");
        Images.techSea = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techSea.png");
        Images.techNuke = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techNuke.png");
        Images.techAttack = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/techAttack.png");
        Images.lawOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/lawOver.png");
        Images.lawMask = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/lawMask.png");
        Images.advantagesOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + ClXgFvsSKQc.CMunt);
        Images.advantagesSmallOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/advantagesSmallOver.png");
        Images.advantagesSmallMask = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/advantagesSmallMask.png");
        Images.progressBar = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/progressBar.png");
        Images.progressBarOver = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/progressBarOver.png");
        Images.btnh_close = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "buttons/close_h.png");
        Images.boxEdge = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/boxEdge.png");
        Images.boxDetails = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/boxDetails.png");
        Images.boxBIG = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/bigBox.png");
        Images.boxBIG_Red = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/bigBoxRed.png");
        Images.bigBoxCorner = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/bigBoxCorner.png");
        Images.bigBoxCorner2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/bigBoxCorner2.png");
        Images.boxSimple = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/boxSimple.png");
    }

    private final void loadImages_7() {
        String str = CvuNnwgYwe.rNjnUypoJImLub;
        Renderer.boxBGExtraY = ImageManager.getImage(Images.boxBGLine).getWidth();
        Images.sliderEdge = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "boxes/sliderEdge.png");
        Images.flagBGClassic = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/flagBG.png");
        Images.topStatsClassic = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/topStats.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.topStats2Classic = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/topStats2.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.leftSideBarClassic = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/leftSideBar.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagBGUQ = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/flagBGUQ.png");
        Images.topStatsUQ = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/topStatsUQ.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.topStats2UQ = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/topStats2UQ.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.leftSideBarUQ = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/leftSideBarUQ.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.flagBG = Images.flagBGClassic;
        Images.topStats = Images.topStatsClassic;
        Images.topStats2 = Images.topStats2Classic;
        Images.leftSideBar = Images.leftSideBarClassic;
        Images.levelFrame = ImageManager.addImage("ui/level/levelFrame.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.levelMask = ImageManager.addImage("ui/level/levelMask.png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Nearest, Texture.TextureWrap.ClampToEdge);
        Images.play = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/play.png");
        Images.pause = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/pause.png");
        Images.plus = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/plus.png");
        Images.minus = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/minus.png");
        Images.outliner = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "top/outliner.png");
        Images.flagBelow = ImageManager.addImage("ui/flag/" + CFG.getRescouresPath_Short() + "flagBelow.png");
        Images.eventCorner = ImageManager.addImage("game/events/images/" + CFG.getRescouresPath_Short() + "corner.png");
        int i = Integer.parseInt(FileManager.loadFile("gfx/map/nuke/numOfImages.txt").readString());
        for (int i2 = 0; i2 < i; i2++) {
            Images.nukeImg.add(Integer.valueOf(ImageManager.addImage("gfx/map/nuke/" + i2 + ".png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat)));
        }
        Images.nukeIMGSize = i;
        Game.flagData = (Game.FlagData) new Json().fromJson(Game.FlagData.class, FileManager.loadFile("ui/flag/Config.json"));
        for (int i3 = 0; i3 < Game.flagData.NumOfFlags; i3++) {
            Images.flagMask.add(Integer.valueOf(ImageManager.addImage("ui/flag/" + CFG.getRescouresPath_Short() + i3 + "/flagMask.png")));
            Images.flagMaskLord.add(Integer.valueOf(ImageManager.addImage("ui/flag/" + CFG.getRescouresPath_Short() + i3 + "/flagMaskLord.png")));
            Images.flagOver.add(Integer.valueOf(ImageManager.addImage("ui/flag/" + CFG.getRescouresPath_Short() + i3 + "/flagOver.png")));
        }
        try {
            Images.boxTitleBORDERWIDTH = Integer.parseInt(FileManager.loadFile(CFG.FILE_UI_PATH + CFG.getRescouresPath() + CFG.FILE_UI_BOXES_PATH + "boxTitleBorder.txt").readString());
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        try {
            Images.buttonPlayPADDING = Integer.parseInt(FileManager.loadFile(CFG.FILE_UI_PATH + CFG.getRescouresPath() + CFG.FILE_UI_BUTTONS_PATH + "buttonPlayPadding.txt").readString());
        } catch (GdxRuntimeException e2) {
            CFG.exceptionStack(e2);
        }
        try {
            MessageButton.messageMaskY = Integer.parseInt(FileManager.loadFile(CFG.FILE_UI_PATH + CFG.getRescouresPath() + str + "messageMaskY.txt").readString());
        } catch (GdxRuntimeException e3) {
            CFG.exceptionStack(e3);
        }
        try {
            MessageWar.warMaskY = Integer.parseInt(FileManager.loadFile(CFG.FILE_UI_PATH + CFG.getRescouresPath() + str + "warMaskY.txt").readString());
        } catch (GdxRuntimeException e4) {
            CFG.exceptionStack(e4);
        }
    }

    private final void loadImages_8() {
        Images.build = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + lOow.wTuSE);
        Images.dice = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + CoLRpi.rypWDOsTZYgB);
        Images.manpower = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/manpower.png");
        Images.manpower2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/manpower2.png");
        Images.manpower3 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/manpower3.png");
        Images.manpowerUp = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/manpowerUp.png");
        Images.manpower2Up = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/manpower2Up.png");
        Images.manpower3Up = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/manpower3Up.png");
        Images.manpowerTime = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/manpowerTime.png");
        Images.manpower2Time = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/manpower2Time.png");
        Images.manpower3Time = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/manpower3Time.png");
        Images.morale = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + ClXgFvsSKQc.QZeBzzoj);
        Images.population = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/population.png");
        Images.buildTime = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/builtTime.png");
        Images.skull = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/skull.png");
        Images.devastation = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/devastation.png");
        Images.loot = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/loot.png");
        Images.general = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/general.png");
        Images.defensivePact = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/defensivePact.png");
        Images.armyMaintenance = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/armyMaintenance.png");
        Images.regimentsLimit = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + ATsAGKCnv.kGQohgnm);
        Images.populationGrowth = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/populationGrowth.png");
        Images.populationUp = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/populationUp.png");
        Images.economy = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/economy.png");
        Images.economy2 = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/economy2.png");
        Images.ai = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/ai.png");
        Images.revolutionRisk = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/revolutionRisk.png");
        Images.infrastructure = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/infrastructure.png");
        Images.infrastructureUp = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/infrastructureUp.png");
        Images.goods = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/goods.png");
        Images.provinces = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/provinces.png");
        Images.console = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/console.png");
        Images.settings = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/settings.png");
        Images.save = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/save.png");
        Images.discipline = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/discipline.png");
        Images.battleWidth = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/battleWidth.png");
        Images.retreat = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/retreat.png");
        Images.center = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/center.png");
        Images.conqueredCivs = ImageManager.addImage(CFG.FILE_UI_PATH + CFG.getRescouresPath() + "icons/conqueredCivs.png");
        Images.rebelsFlag = ImageManager.addImage("gfx/rebels/flag.png");
    }

    private final void loadSparks() {
        try {
            Images.SPARKS_SIZE = Integer.parseInt(FileManager.loadFile("gfx/sparks/numberOfImages.txt").readString());
            for (int i = 0; i < Images.SPARKS_SIZE; i++) {
                Images.sparks.add(ImageManager.loadImage("gfx/sparks/" + i + ".png", Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat));
            }
            Images.sparkWidth = Images.sparks.get(0).getWidth();
            Images.sparkHeight = Images.sparks.get(0).getHeight();
        } catch (GdxRuntimeException e) {
            CFG.exceptionStack(e);
        }
        Images.SPARKS_SIZE = Images.sparks.size();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        initGame();
        if (background != null) {
            spriteBatch.setColor(new Color(0.047058824f, 0.047058824f, 0.047058824f, 1.0f));
            Images.pix.draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, (iStepID / (iNumOfSteps + Game.map.getActiveMap_MapData().mapData.NumOfProvinces)) * 0.25f));
            Image image = background;
            int i3 = i + ((CFG.GAME_WIDTH - backgroundWidth) / 2);
            int i4 = CFG.GAME_HEIGHT;
            int i5 = backgroundHeight;
            image.draw(spriteBatch, i3, i2 + ((i4 - i5) / 2), backgroundWidth, i5);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, ((iStepID / (iNumOfSteps + Game.map.getActiveMap_MapData().mapData.NumOfProvinces)) * 0.05f) + 0.95f));
            spriteBatch.setShader(Renderer.shaderAlpha);
            background.getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            Image image2 = Images.gradientXY;
            int posX = getPosX() + ((CFG.GAME_WIDTH - backgroundWidth) / 2) + i;
            int posY = getPosY();
            int i6 = CFG.GAME_HEIGHT;
            int i7 = backgroundHeight;
            image2.draw(spriteBatch, posX, posY + ((i6 - i7) / 2) + i2, backgroundWidth, i7);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.6f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.PADDING * 3);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i, (CFG.GAME_HEIGHT - (CFG.PADDING * 3)) + i2, CFG.GAME_WIDTH, CFG.PADDING * 3, false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i2, z, status);
        int i8 = iStepID;
        if (i8 > 8) {
            Renderer.drawLoading(spriteBatch, i, i2, ((i8 * 0.88f) / (iNumOfSteps + Game.map.getActiveMap_MapData().mapData.NumOfProvinces)) + 0.12f);
            Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.loadingName, i + (CFG.PADDING * 4), i2 + (CFG.PADDING * 4), new Color(1.0f, 1.0f, 1.0f, 0.15f));
        }
    }

    public String getArmies_Path() {
        return loadArmy_Default() ? CFG.FILE_ARMY_MAP_PATH : cIUGJCqyPXfp.yTEWXPRggjWKlFA;
    }

    public void initGame() {
        String str = qIuEvFbUtcea.qZdz;
        int i = this.takeABreak;
        if (i > 0) {
            this.takeABreak = i - 1;
            return;
        }
        try {
            int i2 = iStepID;
            if (i2 == 0) {
                Game.gameThreadUpdate.start();
                try {
                    backgroundSize = Integer.parseInt(FileManager.loadFile("ui/loading/numberOfImages.txt").readString());
                } catch (GdxRuntimeException e) {
                    CFG.exceptionStack(e);
                }
                loadBackground();
                setLoadText("Loading");
            } else if (i2 == 1) {
                Renderer.clearFonts();
                Renderer.charset = Game.lang.get("charset");
                Renderer.loadFont(Game.lang.get("font"), Game.lang.get("charset"), Game.settingsManager.FONT_MAIN_SIZE);
                CFG.FONT_BOLD = Renderer.fontMain.size() - 1;
            } else if (i2 == 2) {
                loadImagesInit();
                if (Game.settingsManager.LANGUAGE_TAG == null) {
                    iStepID++;
                    this.reloadBoldFont = true;
                    Game.menuManager.setViewIDWithoutAnimation(View.INIT_GAME_MENU_LANGUAGE);
                    return;
                }
            } else if (i2 == 3) {
                if (Game.map.lMaps.size() > 1) {
                    iStepID++;
                    Game.menuManager.setViewIDWithoutAnimation(View.INIT_GAME_MENU_SELECT_MAP);
                    return;
                }
            } else if (i2 == 4) {
                if (this.reloadBoldFont && Game.settingsManager.LANGUAGE_TAG.length() > 0) {
                    Renderer.clearFonts();
                    Renderer.charset = Game.lang.get("charset");
                    Renderer.loadFont(Game.lang.get("font"), Game.lang.get("charset"), Game.settingsManager.FONT_MAIN_SIZE);
                    CFG.FONT_BOLD = Renderer.fontMain.size() - 1;
                }
                GameValues.init();
            } else if (i2 == 5) {
                Renderer.loadFont(Game.lang.get("font2"), Game.lang.get("charset"), Game.settingsManager.FONT_MAIN_SIZE);
                CFG.FONT_REGULAR = Renderer.fontMain.size() - 1;
                this.takeABreak = 2;
            } else if (i2 == 6) {
                Renderer.loadFont(Game.lang.get("font"), Game.lang.get("charset"), (int) Math.floor(Game.settingsManager.FONT_MAIN_SIZE * 0.9f));
                CFG.FONT_BOLD_SMALL = Renderer.fontMain.size() - 1;
                this.takeABreak = 2;
            } else if (i2 == 7) {
                Renderer.loadFont(Game.lang.get("fontArmy"), "0123456789.,+-/*?" + GameValues.fog.TEXT_UNKNOWN_ARMIES, Game.settingsManager.FONT_ARMY_SIZE < 0 ? loadArmy_Default() ? GameValues.value.DEFAULT_FONT_ARMY_SIZE : GameValues.value.DEFAULT_FONT_ARMY_SIZE_2 : Game.settingsManager.FONT_ARMY_SIZE);
                CFG.FONT_ARMY = Renderer.fontMain.size() - 1;
                Renderer.loadFontArmy_GlyphLayout(Game.lang.get("fontArmy"), "0123456789.,+-/*?" + GameValues.fog.TEXT_UNKNOWN_ARMIES, Game.settingsManager.FONT_ARMY_SIZE < 0 ? loadArmy_Default() ? GameValues.value.DEFAULT_FONT_ARMY_SIZE : GameValues.value.DEFAULT_FONT_ARMY_SIZE_2 : Game.settingsManager.FONT_ARMY_SIZE);
                this.takeABreak = 1;
            } else if (i2 == 8) {
                Renderer.loadFont(Game.lang.get("font4"), Game.lang.get("charset"), 15);
                CFG.FONT_CITIES = Renderer.fontMain.size() - 1;
                this.takeABreak = 2;
            } else if (i2 == 9) {
                Renderer.loadFont(Game.lang.get("font2"), Game.lang.get("charset"), (int) Math.floor(Game.settingsManager.FONT_MAIN_SIZE * 0.9f));
                CFG.FONT_REGULAR_SMALL = Renderer.fontMain.size() - 1;
                Renderer.loadFont_UpdateTextHeight();
                Renderer.loadFont_UpdateTextHeightSmall();
                this.takeABreak = 2;
                setLoadText("Loading");
            } else if (i2 == 10) {
                Game.menuManager.initColorPicker();
                Game.lang.loadModsLanguages(Game.settingsManager.LANGUAGE_TAG == null ? "" : Game.settingsManager.LANGUAGE_TAG);
            } else if (i2 == 11) {
                Game.loadAiValues();
                setLoadText("Loading Fonts");
            } else if (i2 == 12) {
                Renderer.loadFontBorder(Game.lang.get("fontCivNames"), Game.lang.get("charset2"));
                this.takeABreak = 2;
                setLoadText("Loading Fonts");
            } else if (i2 == 13) {
                Game.menuManager.dialogMenu = new Dialog();
                setLoadText("Loading");
            } else if (i2 == 14) {
                ProvinceBorder.updateDrawCivBorder();
                ProvinceNamesManager.updateDrawProvinceNames();
                setLoadText("Loading");
            } else {
                if (i2 == 15) {
                    SettingsProvince.init(Game.settingsManager.SETTINGS_PROVINCE_BORDER);
                    Game.mapCities.updateCitiesInGame();
                    Game.mapCities.updateCapitalCityName();
                    Game.loadCursor(false);
                    setLoadText("Loading Game Values");
                } else if (i2 == 16) {
                    setLoadText("Loading Map BG");
                } else if (i2 == 17) {
                    Game.mapBG.loadMapBG_Begin();
                    setLoadText("Loading Map BG #1");
                } else if (i2 == 18) {
                    if (Game.mapBG.loadMapBG()) {
                        setLoadText("Loading Map BG #" + (MapBG.loadMapBG_FileID + 1));
                        return;
                    }
                } else if (i2 == 19) {
                    Game.mapBG.loadMapBG_End();
                } else if (i2 == 20) {
                    setLoadText("Loading");
                } else if (i2 == 21) {
                    if (CFG.isDesktop()) {
                        SettingsDesktop.readConfig();
                    }
                    setLoadText("Loading");
                } else if (i2 == 22) {
                    MapBG.loadMapBG_FileID = 0;
                    setLoadText("Loading Map BG2");
                } else if (i2 == 23) {
                    if (Game.mapBG.loadMapBG_ZoomOut()) {
                        setLoadText(str + (MapBG.loadMapBG_FileID + 1));
                        return;
                    }
                    setLoadText("Loading Map");
                } else if (i2 == 24) {
                    Game.mapBG.loadMapBG_ZoomOut_End();
                    setLoadText("Loading Map");
                } else if (i2 == 25) {
                    Game.mapBG.loadMapBorder();
                    setLoadText("Loading Map");
                } else if (i2 == 26) {
                    Game.mapBG.loadMinimap();
                    setLoadText("Loading");
                } else if (i2 == 27 || i2 == 28) {
                    setLoadText("Loading");
                } else if (i2 == 29) {
                    setLoadText("Loading Audio");
                } else if (i2 == 30) {
                    Game.soundsManager.loadSounds();
                    setLoadText("Loading Audio");
                } else if (i2 == 31) {
                    Game.soundsManager.loadMusic_List();
                    setLoadText("Loading Audio");
                } else if (i2 == 32) {
                    Game.ambienceManager.loadSounds();
                    setLoadText("Loading Map");
                } else if (i2 == 33) {
                    Game.mapBG.updateWorldMap();
                    setLoadText("Loading Continents");
                } else if (i2 == 34) {
                    Game.continents.loadMapContinents();
                    Game.geographicalRegions.loadMapGeographicalRegions();
                    setLoadText("Loading Province Points");
                } else if (i2 == 35) {
                    if (LoadManager.loadProvincePoints()) {
                        setLoadText("Loading Province Points #" + (LoadManager.loadProvincePointsFileID + 1));
                        return;
                    }
                    setLoadText("Loading Overlays #1");
                } else if (i2 == 36) {
                    if (loadMapOverlays()) {
                        MapBG.loadMapBG_FileID = 0;
                        Game.mapOver.loadOverlay(CFG.FILE_MAP_OVERLAYS_FILE);
                    }
                    setLoadText("Loading Overlays #1");
                } else if (i2 == 37) {
                    if (loadMapOverlays()) {
                        if (Game.mapOver.loadOverlayImages()) {
                            return;
                        } else {
                            MapBG.loadMapBG_FileID = 0;
                        }
                    }
                    setLoadText("Loading Overlays #2");
                } else if (i2 == 38) {
                    if (loadMapOverlays()) {
                        if (Game.mapOver.loadOverlayImages_2()) {
                            return;
                        } else {
                            MapBG.loadMapBG_FileID = 0;
                        }
                    }
                    setLoadText("Loading Overlays #2");
                } else if (i2 == 39) {
                    if (loadMapOverlays()) {
                        MapBG.loadMapBG_FileID = 0;
                        Game.mapOverSea.loadOverlay(CFG.FILE_MAP_OVERLAYS_SEA_FILE);
                    }
                    setLoadText("Loading Overlays #2");
                } else if (i2 == 40) {
                    if (loadMapOverlays()) {
                        if (Game.mapOverSea.loadOverlayImages()) {
                            return;
                        } else {
                            MapBG.loadMapBG_FileID = 0;
                        }
                    }
                    setLoadText("Loading Overlays #2");
                } else if (i2 == 41) {
                    if (loadMapOverlays()) {
                        if (Game.mapOverSea.loadOverlayImages_2()) {
                            return;
                        } else {
                            MapBG.loadMapBG_FileID = 0;
                        }
                    }
                    setLoadText("Loading Images #1");
                } else if (i2 == 42) {
                    loadImages_1();
                    setLoadText("Loading Images #2");
                } else if (i2 == 43) {
                    loadImages_2();
                    setLoadText("Loading Images #3");
                } else if (i2 == 44) {
                    loadImages_3();
                    setLoadText("Loading Images #4");
                } else if (i2 == 45) {
                    loadImages_4();
                    setLoadText("Loading Images #5");
                } else if (i2 == 46) {
                    loadImages_5();
                    setLoadText("Loading Images #6");
                } else if (i2 == 47) {
                    loadImages_6();
                    setLoadText("Loading Images #7");
                } else if (i2 == 48) {
                    loadImages_7();
                    setLoadText("Loading Images #8");
                } else if (i2 == 49) {
                    loadImages_8();
                    loadSparks();
                    setLoadText("Loading Province Map Data");
                } else if (i2 == 50) {
                    LoadManager.loadProvinceMapData();
                    setLoadText("Loading Ages");
                } else if (i2 == 51) {
                    Game.player.fog.initFogOfWar();
                    Game.battleManager = new BattleManager();
                    Game.gameAges.loadAges();
                    setLoadText("Loading Regions");
                } else if (i2 == 52) {
                    Game.regions.loadRegions();
                    setLoadText("Loading Terrains");
                } else if (i2 == 53) {
                    Game.terrainManager.loadTerrains();
                    setLoadText("Loading Province Border");
                } else if (i2 == 54) {
                    if (LoadManager.loadProvinceBorder()) {
                        setLoadText("Loading Province Border #" + (LoadManager.loadProvinceBorderFileID + 1));
                        return;
                    }
                    setLoadText("Loading Neighboring Provinces");
                } else if (i2 == 55) {
                    LoadManager.buildNeighboringProvinces();
                    setLoadText("Loading Random Rulers");
                } else if (i2 == 56) {
                    RulersManager.initRandomRulers();
                    setLoadText("Loading Religions");
                } else if (i2 == 57) {
                    Game.ideologiesManager.loadIdeologies();
                    setLoadText("Loading Religions");
                } else if (i2 == 58) {
                    Game.religionManager.loadReligions();
                    setLoadText(cIUGJCqyPXfp.YqWO);
                } else if (i2 == 59) {
                    LegacyManager.loadLegacies();
                    setLoadText("Loading Laws");
                } else if (i2 == 60) {
                    LawsManager.loadLaws();
                    setLoadText("Loading Advantages");
                } else if (i2 == 61) {
                    AdvantagesManager.loadAdvantages();
                    setLoadText("Loading Units");
                } else if (i2 == 62) {
                    ArmyManager.loadUnits();
                    setLoadText("Loading Buildings");
                } else if (i2 == 63) {
                    BuildingsManager.loadBuildings();
                    AI_Build.initBuildings();
                    setLoadText("Loading Resources");
                } else if (i2 == 64) {
                    ResourcesManager.loadResources();
                    setLoadText("Loading Clouds");
                } else if (i2 == 65) {
                    Game.cloudsAnimation.updateCloudsInterface();
                    Game.cloudsAnimation.loadCloudsImages();
                    setLoadText("Loading Wonders");
                } else if (i2 == 66) {
                    InGame.initInGame();
                    WondersManager.loadWonders();
                    setLoadText("Loading Cities Images");
                } else if (i2 == 67) {
                    Game.mapCities.loadCitiesImages();
                    setLoadText("Loading Cities");
                } else if (i2 == 68) {
                    Game.mapCities.loadCities();
                    setLoadText("Loading Cities");
                } else if (i2 == 69) {
                    Game.mapCities.buildProvinceNames();
                    setLoadText("Loading Generals");
                } else if (i2 == 70) {
                    Game.generalManager.loadGenerals();
                    setLoadText("Loading Advisors");
                } else if (i2 == 71) {
                    Game.advisorManager.loadAdvisors();
                    setLoadText("Loading Scenarios");
                } else if (i2 == 72) {
                    Game.mapScenarios.loadScenarios(true);
                    setLoadText("Loading Technology Tree");
                } else if (i2 == 73) {
                    TechnologyTree.loadTechnology();
                    setLoadText("Build Data");
                } else if (i2 == 74) {
                    LoadManager.loadProvinceNamesPoints();
                    Game.addSimpleTask(new AnonymousClass1("buildProvNameData"));
                    setLoadText("Build Data");
                } else if (i2 == 75) {
                    TechnologyTree.buildTechUnlocks();
                    setLoadText("Build Data");
                } else if (i2 == 76) {
                    TechnologyTree.buildTechUnlocks_Units();
                    setLoadText("Build Data");
                } else if (i2 == 77) {
                    TechnologyTree.buildTechUnlocks_Laws();
                    TechnologyTree.buildTechnologiesNames();
                    setLoadText("Loading Diseases");
                } else if (i2 == 78) {
                    WondersManager.initProvinceWonders();
                    PlagueManager.loadDiseases();
                    setLoadText("Build Data");
                } else if (i2 == 79) {
                    EventsManager.loadScenarioEventsTag = Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID);
                    MissionTree.loadMissions();
                    Game.mapBG.updateMinimapResolution();
                    Game.mapBG.updatePreviewResolution();
                    ButtonFlag.EXTRA_RANDOM = Game.oR.nextInt(10);
                    setLoadText("Loading Scenario #1");
                } else if (i2 == 80) {
                    Game.mapScenarios.loadScenario_1();
                    setLoadText("Loading Scenario #2 Wasteland");
                } else if (i2 == 81) {
                    Game.mapScenarios.loadScenario_2();
                    setLoadText("Loading Scenario #3 Civilizations");
                } else if (i2 == 82) {
                    Game.mapScenarios.loadScenario_3(false);
                    setLoadText("Loading Scenario #3A Civilizations Names");
                } else if (i2 == 83) {
                    Game.mapScenarios.loadScenario_3_A();
                    setLoadText("Loading Scenario #3B Flags");
                } else if (i2 == 84) {
                    Game.mapScenarios.loadScenario_3_B();
                    setLoadText("Loading Scenario #3C Civilization's Provinces");
                } else if (i2 == 85) {
                    Game.mapScenarios.loadScenario_3_C();
                    setLoadText("Loading Scenario #4");
                } else if (i2 == 86) {
                    Game.mapScenarios.loadScenario_4();
                    setLoadText("Loading Scenario #5");
                } else if (i2 == 87) {
                    Game.mapScenarios.loadScenario_5();
                    setLoadText("Loading Scenario #6");
                } else if (i2 == 88) {
                    Game.mapScenarios.loadScenario_6();
                    setLoadText("Loading Scenario #7");
                } else if (i2 == 89) {
                    Game.mapScenarios.loadScenario_7();
                    setLoadText("Loading Scenario #8");
                } else if (i2 == 90) {
                    Game.mapScenarios.loadScenario_8();
                    setLoadText("Loading Scenario #9");
                } else if (i2 == 91) {
                    Game.mapScenarios.loadScenario_9();
                    setLoadText("Loading Scenario #10");
                } else if (i2 == 92) {
                    Game.mapScenarios.loadScenario_10();
                    setLoadText("Loading Scenario #11");
                } else if (i2 == 93) {
                    Game.mapScenarios.loadScenario_11();
                    setLoadText("Loading Scenario #12");
                } else if (i2 == 94) {
                    Game.mapScenarios.loadScenario_12();
                    setLoadText("Loading Scenario #13");
                } else if (i2 == 95) {
                    Game.mapScenarios.loadScenario_13();
                    setLoadText("Loading Scenario #14");
                } else if (i2 == 96) {
                    Game.mapScenarios.loadScenario_14();
                    setLoadText("Loading Scenario #15");
                } else if (i2 == 97) {
                    Game.mapScenarios.loadScenario_15();
                    setLoadText("Loading Scenario #16");
                } else if (i2 == 98) {
                    Game.mapScenarios.loadScenario_16();
                    setLoadText("Loading Scenario #17");
                } else if (i2 == 99) {
                    Game.mapScenarios.loadScenario_17();
                    setLoadText("Loading Scenario #18");
                } else if (i2 == 100) {
                    Game.mapScenarios.loadScenario_18();
                    setLoadText("Loading Scenario #19");
                } else if (i2 == 101) {
                    Game.mapScenarios.loadScenario_19();
                    setLoadText("Loading Scenario #20");
                } else if (i2 == 102) {
                    Game.mapScenarios.loadScenario_20();
                    setLoadText("Loading Scenario #21");
                } else if (i2 == 103) {
                    Game.mapScenarios.loadScenario_21();
                    setLoadText("Loading Scenario #22");
                } else if (i2 == 104) {
                    Game.mapScenarios.loadScenario_22();
                    setLoadText("Loading Scenario #23");
                } else if (i2 == 105) {
                    Game.mapScenarios.loadScenario_23();
                    setLoadText("Loading Scenario #24");
                } else if (i2 == 106) {
                    Game.mapScenarios.loadScenario_24();
                    setLoadText("Loading Scenario #25");
                } else if (i2 == 107) {
                    Game.mapScenarios.loadScenario_25(false);
                    setLoadText("Loading Scenario #26");
                } else if (i2 == 108) {
                    Game.mapScenarios.loadScenario_26();
                    setLoadText("Loading Scenario #27");
                } else if (i2 == 109) {
                    Game.mapScenarios.loadScenario_27();
                    setLoadText("Loading Scenario #28");
                } else if (i2 == 110) {
                    Game.mapScenarios.loadScenario_28();
                    setLoadText("Loading Scenario #29");
                } else if (i2 == 111) {
                    Game.mapScenarios.loadScenario_29();
                    setLoadText("Loading Scenario #30");
                } else if (i2 == 112) {
                    Game.mapScenarios.loadScenario_30();
                    setLoadText("Loading Scenario #31");
                } else if (i2 == 113) {
                    Game.mapScenarios.loadScenario_31();
                    setLoadText("Loading Scenario #32");
                } else if (i2 == 114) {
                    Game.mapScenarios.loadScenario_32();
                    setLoadText("Loading Scenario #33");
                } else if (i2 == 115) {
                    Game.mapScenarios.loadScenario_33();
                    setLoadText("Loading Scenario #34");
                } else if (i2 == 116) {
                    Game.mapScenarios.loadScenario_34();
                    setLoadText("Loading Scenario #35");
                } else if (i2 == 117) {
                    Game.mapScenarios.loadScenario_35();
                    setLoadText("Loading Scenario #36");
                } else if (i2 == 118) {
                    Game.mapScenarios.loadScenario_36(false);
                    setLoadText("Loading Scenario #37");
                } else if (i2 == 119) {
                    Game.mapScenarios.loadScenario_37();
                    setLoadText("Loading Scenario #38");
                } else if (i2 == 120) {
                    Game.mapScenarios.loadScenario_38(false);
                    setLoadText(CaiJWNfqszJNZ.bCOI);
                } else if (i2 == 121) {
                    setLoadText("Loading Scenario #39");
                } else if (i2 == 122) {
                    Game.mapScenarios.loadScenario_39(false);
                    setLoadText(lOow.TvFjTDV);
                } else if (i2 == 123) {
                    Game.mapScenarios.loadScenario_40(false);
                    setLoadText("Loading Scenario #41");
                } else if (i2 == 124) {
                    Game.mapScenarios.loadScenario_41(false);
                    setLoadText("Loading Scenario #42");
                } else if (i2 == 125) {
                    Game.mapScenarios.loadScenario_42();
                    setLoadText("Loading Scenario #43");
                } else if (i2 == 126) {
                    Game.mapScenarios.loadScenario_43();
                    setLoadText("Loading Scenario #44");
                } else if (i2 == 127) {
                    Game.mapScenarios.loadScenario_44();
                    setLoadText(uNBYrZVGzy.pKtxnHpGNy);
                } else if (i2 == 128) {
                    Game.mapScenarios.loadScenario_45();
                    setLoadText("Loading Scenario #46");
                } else if (i2 == 129) {
                    Game.mapScenarios.loadScenario_46();
                    setLoadText("Loading Scenario #47");
                } else if (i2 == 130) {
                    Game.mapScenarios.loadScenario_47();
                    setLoadText("Loading Scenario #48");
                } else if (i2 == 131) {
                    Game.mapScenarios.loadScenario_48();
                    setLoadText("Loading Scenario #49");
                } else if (i2 == 132) {
                    Game.mapScenarios.loadScenario_49(false);
                    setLoadText("Loading Scenario #50");
                } else if (i2 == 133) {
                    Game.mapScenarios.loadScenario_50(false);
                    setLoadText("Loading Scenario #51");
                } else if (i2 == 134) {
                    Game.mapScenarios.loadScenario_51(false);
                    setLoadText("Loading Scenario #52");
                } else if (i2 == 135) {
                    Game.mapScenarios.loadScenario_52();
                    setLoadText("Loading Scenario #53");
                } else if (i2 == 136) {
                    Game.mapScenarios.loadScenario_53();
                    setLoadText("Loading Scenario #54");
                } else if (i2 == 137) {
                    Game.mapScenarios.loadScenario_54();
                    setLoadText("Loading Scenario #55");
                } else if (i2 == 138) {
                    Game.mapScenarios.loadScenario_55();
                    setLoadText(TGqtTWl.zsIJll);
                } else if (i2 == 139) {
                    Game.mapScenarios.loadScenario_56();
                    setLoadText("Loading Scenario #57");
                } else if (i2 == 140) {
                    Game.mapScenarios.loadScenario_57();
                    setLoadText("Loading Scenario #58");
                } else if (i2 == 141) {
                    Game.mapScenarios.loadScenario_58();
                    setLoadText("Loading Scenario #59");
                } else if (i2 == 142) {
                    setLoadText("Loading Scenario #60");
                } else if (i2 == 143) {
                    Game.mapScenarios.loadScenario_60();
                    setLoadText("Loading Scenario #61");
                } else if (i2 == 144) {
                    Game.mapScenarios.loadScenario_61();
                    setLoadText("Loading Scenario #62 Formable Civilizations");
                } else if (i2 == 145) {
                    Game.mapScenarios.loadScenario_62(false);
                    setLoadText("Loading Scenario #63");
                } else if (i2 == 146) {
                    Game.mapScenarios.loadScenario_63();
                    setLoadText("Loading Scenario #64");
                } else if (i2 == 147) {
                    Game.mapScenarios.loadScenario_64();
                    setLoadText("Loading");
                } else if (i2 == 148) {
                    ShipManager.loadShipLines();
                    setLoadText("Loading");
                } else if (i2 == 149) {
                    ShipManager.loadShipLines_Provinces();
                    setLoadText("Loading Flags");
                } else if (i2 == 150) {
                    Game.flagManager.loadData();
                    Game.flagManager.initFlagEdit();
                    setLoadText("Loading");
                } else if (i2 == 151) {
                    setLoadText("Loading Events");
                } else if (i2 == 152) {
                    EventsManager.loadScenarioEventsTag = Game.mapScenarios.lScenarios_TagsList.get(Game.scenarioID);
                    EventsManager.loadEvents();
                    EventsManager.loadEvents_Scenario();
                    setLoadText("Loading HRE");
                } else {
                    if (i2 != 153) {
                        if (i2 >= 154 && i2 < Game.getProvincesSize() + Input.Keys.NUMPAD_DIVIDE) {
                            for (int i3 = 0; i3 < numOfProvincesBGToLoad && iStepID < Game.getProvincesSize() + Input.Keys.NUMPAD_DIVIDE; i3++) {
                                int i4 = iStepID;
                                iStepID = i4 + 1;
                                Game.loadProvinceBG(i4 - 154);
                            }
                            setLoadText("Loading Province BG #" + (iStepID - Input.Keys.NUMPAD_DIVIDE));
                            return;
                        }
                        if (this.justOnce) {
                            Game.mapScale.setEnableScaling(true);
                            Game.setUpdateProvincesInView(true);
                            CivilizationRegionsManager.updateRegionsInView = true;
                            Game.menuManager.setViewID(View.MAINMENU);
                            this.justOnce = false;
                            Game.gameThread.start();
                            Game.gameThreadTurns.start();
                            Game.gameThreadEvents.start();
                            Game.soundsManager.playStartMusic();
                            NewGame.setRandomCiv();
                            return;
                        }
                        return;
                    }
                    HREManager.loadReformsImages();
                    setLoadText("Loading Province BG #0");
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        iStepID++;
    }

    public boolean loadMapOverlays() {
        return CFG.isDesktop() || !GameValues.value.MOBILE_DISABLE_MAP_OVERLAYS;
    }

    public void setLoadText(String str) {
        this.loadingName = str;
    }
}
