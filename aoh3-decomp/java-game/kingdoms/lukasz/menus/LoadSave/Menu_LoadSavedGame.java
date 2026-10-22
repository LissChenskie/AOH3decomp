package aoc.kingdoms.lukasz.menus.LoadSave;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.graph.Graph;
import aoc.kingdoms.lukasz.menus.InitGame;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Menu_LoadSavedGame extends Menu {
    public int iNumOfSteps = Graph.ANIMATION_TIME;
    public String loadingName = "";
    public int iStepID = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadSavedGame$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.buildCivilizationsRegions();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadSavedGame$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Messages();
            Game.menuManager.rebuildInGame_Wars();
            Game.menuManager.rebuildInGame_Right();
            Game.menuManager.setOrderOfMenu_InGame();
            ProvinceDraw.updateDrawExtraDetails();
        }
    }

    public Menu_LoadSavedGame() {
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, new ArrayList(), true);
        setLoadText(Game.lang.get("Loading") + " #1");
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

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 13301. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:99)
        */
    public final void loadAction() {
        /*
            Method dump skipped, instruction units count: 1330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadSavedGame.loadAction():void");
    }

    public void setLoadText(String str) {
        this.loadingName = str;
    }
}
