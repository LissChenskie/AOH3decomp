package aoc.kingdoms.lukasz.menus;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.map.LegacyManager;
import aoc.kingdoms.lukasz.map.advisors.Advisor;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses;
import aoc.kingdoms.lukasz.menusInGame.InGame_Legacies;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceConnections;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import aoc.kingdoms.lukasz.utilities.FPS;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Dialog extends Menu {
    public static String GO_TO_LINK = "";
    public static DialogType dialogType = DialogType.EXIT_GAME;
    private int animationChangePosY;
    private int iBackgroundAlpha = 5;
    private int animationStepID = 0;
    private boolean closeMenu = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Dialog$1, reason: invalid class name */
    class AnonymousClass1 extends Button {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.this.disableButtons();
            Dialog.dialogFalse();
            Dialog.this.closeMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            ImageManager.getImage(z ? Images.boxBIG_Red : Images.boxBIG).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
            spriteBatch.setColor(Colors.COLOR_BOX_FRAME);
            ImageManager.getImage(Images.line_32_vertical).draw(spriteBatch, ((getPosX() + getWidth()) - 1) + i, getPosY() + i2, 1, getHeight());
            spriteBatch.setColor(Color.WHITE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Dialog$2, reason: invalid class name */
    class AnonymousClass2 extends Button {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.this.disableButtons();
            Dialog.dialogTrue();
            Dialog.this.closeMenu();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            ImageManager.getImage(z ? Images.boxBIG_Red : Images.boxBIG).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), true, true);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), false, true);
            spriteBatch.setColor(Color.WHITE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Dialog$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType;

        static {
            int[] iArr = new int[DialogType.values().length];
            $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType = iArr;
            try {
                iArr[DialogType.EXIT_GAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.GENERATE_PROVINCE_CONNECTIONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.GENERATE_SUGGESTED_CIVILIZATIONS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.CORE_ALL_PROVINCES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.DELETE_SAVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.CONVERT_RELIGION_ALL_PROVINCES.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.UNLOCK_LEGACY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.REVERSE_WASTELAND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.EXIT_SCENARIO_EDITOR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.ESCAPE_TO_MAIN_MENU.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.CREATE_SCENARIO_ASSIGN_CIVILIZATION.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.CREATE_SCENARIO_REMOVE_CIVILIZATION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.FIRE_ADVISOR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[DialogType.GO_TO_LINK.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public enum DialogType {
        EXIT_GAME,
        PAUSE_GAME,
        FIRE_ADVISOR,
        UNLOCK_LEGACY,
        REVERSE_WASTELAND,
        EXIT_SCENARIO_EDITOR,
        DELETE_SAVE,
        CREATE_SCENARIO_REMOVE_CIVILIZATION,
        GENERATE_PROVINCE_CONNECTIONS,
        GENERATE_SUGGESTED_CIVILIZATIONS,
        CREATE_SCENARIO_ASSIGN_CIVILIZATION,
        ESCAPE_TO_MAIN_MENU,
        CORE_ALL_PROVINCES,
        CONVERT_RELIGION_ALL_PROVINCES,
        GO_TO_LINK
    }

    public Dialog() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 4);
        int i2 = CFG.LEFT_MENU_WIDTH + (CFG.LEFT_MENU_WIDTH / 2);
        int i3 = CFG.GAME_WIDTH <= i2 - (CFG.PADDING * 8) ? CFG.GAME_WIDTH - (CFG.PADDING * 8) : i2;
        int i4 = i3 / 2;
        arrayList.add(new AnonymousClass1(Game.lang.get("No"), 0, -1, 0, 0, i4, true));
        arrayList.add(new AnonymousClass2(Game.lang.get("Yes"), 0, -1, i4, 0, i3 - i4, true));
        initMenu(new MenuTitle("", 1.0f, i, true, true), (CFG.GAME_WIDTH / 2) - i4, ((CFG.GAME_HEIGHT / 2) - (CFG.BUTTON_HEIGHT / 2)) - (i / 2), i3, CFG.BUTTON_HEIGHT * 2, arrayList, false);
    }

    public static final void dialogFalse() {
        MenuElement_Hover.resetAnimation();
        int i = AnonymousClass3.$SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[dialogType.ordinal()];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final void dialogTrue() {
        MenuElement_Hover.resetAnimation();
        try {
            int i = 0;
            switch (AnonymousClass3.$SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[dialogType.ordinal()]) {
                case 1:
                    System.exit(0);
                    break;
                case 2:
                    EditorMapProvinceConnections.generateConnections();
                    Game.menuManager.addToast(Game.lang.get("Done"));
                    break;
                case 4:
                    while (i < Game.getCiv(Game.player.iCivID).getNumOfProvinces()) {
                        if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).coreCreation == null && !Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).haveACore(Game.player.iCivID)) {
                            Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).addCoreCreation();
                        }
                        i++;
                    }
                    Game.menuManager.rebuildInGame_CoreSavePos();
                    Game.menuManager.setVisibleInGame_Court(true);
                    InGame_Court.lTime = 0L;
                    Game.menuManager.addToast(Game.lang.get("Done"));
                    Game.player.currSituation.updateCurrentSituation();
                    break;
                case 5:
                    SaveGameManager.deleteSavedGame(SaveGameManager.deleteSavedGameKey, true);
                    if (Game.menuManager.getInLoadGamesList()) {
                        Game.menuManager.setViewID(View.LOAD_GAMES_LIST);
                    }
                    break;
                case 6:
                    while (i < Game.getCiv(Game.player.iCivID).getNumOfProvinces()) {
                        if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).religionConversion == null && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).getReligion() != Game.getCiv(Game.player.iCivID).getReligionID()) {
                            Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i)).addReligionConversion();
                        }
                        i++;
                    }
                    Game.menuManager.rebuildInGame_ReligionSavePos();
                    Game.menuManager.setVisibleInGame_Court(true);
                    InGame_Court.lTime = 0L;
                    Game.menuManager.addToast(Game.lang.get("Done"));
                    Game.player.currSituation.updateCurrentSituation();
                    break;
                case 7:
                    InGame_Legacies.unlockLegacy();
                    break;
                case 8:
                    for (int i2 = 0; i2 < Game.getProvincesSize(); i2++) {
                        if (!Game.getProvince(i2).getSeaProvince()) {
                            if (Game.getProvince(i2).getWasteland() < 0) {
                                Game.getProvince(i2).setWasteland(0);
                            } else {
                                Game.getProvince(i2).setWasteland(-1);
                            }
                        }
                    }
                    Game.updateProvincesInView = true;
                    Game.menuManager.addToast(Game.lang.get("Done"));
                    break;
                case 9:
                    Game.menuManager.setViewID(View.EDITOR_SCENARIOS_LIST);
                    break;
                case 10:
                    MainMenu.canContinue = true;
                    Game.menuManager.setVisibleInGame_Escape(false);
                    Game.menuManager.setViewID(View.MAINMENU);
                    break;
                case 11:
                    CFG.iCreateScenario_AssignProvinces_Civ = Game.getProvince(Game.iActiveProvince).getCivID();
                    break;
                case 12:
                    Game.menuManager.addToast(new Toast(Game.getCiv(Game.getProvince(CFG.iCreateScenario_ActiveProvinceID).getCivID()).getCivName() + " - " + Game.lang.get("Removed"), CFG.FONT_BOLD, Toast.TIME_INVIEW_LONG, Colors.HOVER_IMPORTANT));
                    Game.removeCivilization(Game.getProvince(CFG.iCreateScenario_ActiveProvinceID).getCivID());
                    Game.menuManager.rebuildScenarioCivilizationsList();
                    break;
                case 13:
                    if (InGame_Court.FIRE_ID == 0) {
                        if (Game.getCiv(Game.player.iCivID).advisorAdministration.sName != null) {
                            AdvisorManager advisorManager = Game.advisorManager;
                            AdvisorManager.updateCivBonuses(Game.getCiv(Game.player.iCivID).advisorAdministration, Game.player.iCivID, -1);
                            Game.menuManager.addToastGold(Game.lang.get("Done"), Images.v);
                        }
                        Game.getCiv(Game.player.iCivID).advisorAdministration = new Advisor();
                    } else if (InGame_Court.FIRE_ID == 1) {
                        if (Game.getCiv(Game.player.iCivID).advisorEconomy.sName != null) {
                            AdvisorManager advisorManager2 = Game.advisorManager;
                            AdvisorManager.updateCivBonuses(Game.getCiv(Game.player.iCivID).advisorEconomy, Game.player.iCivID, -1);
                            Game.menuManager.addToastGold(Game.lang.get("Done"), Images.v);
                        }
                        Game.getCiv(Game.player.iCivID).advisorEconomy = new Advisor();
                    } else if (InGame_Court.FIRE_ID == 2) {
                        if (Game.getCiv(Game.player.iCivID).advisorTechnology.sName != null) {
                            AdvisorManager advisorManager3 = Game.advisorManager;
                            AdvisorManager.updateCivBonuses(Game.getCiv(Game.player.iCivID).advisorTechnology, Game.player.iCivID, -1);
                            Game.menuManager.addToastGold(Game.lang.get("Done"), Images.v);
                        }
                        Game.getCiv(Game.player.iCivID).advisorTechnology = new Advisor();
                    } else if (InGame_Court.FIRE_ID == 3) {
                        if (Game.getCiv(Game.player.iCivID).advisorMilitary.sName != null) {
                            AdvisorManager advisorManager4 = Game.advisorManager;
                            AdvisorManager.updateCivBonuses(Game.getCiv(Game.player.iCivID).advisorMilitary, Game.player.iCivID, -1);
                            Game.menuManager.addToastGold(Game.lang.get("Done"), Images.v);
                        }
                        Game.getCiv(Game.player.iCivID).advisorMilitary = new Advisor();
                    }
                    Game.getCiv(Game.player.iCivID).updateResearchPerMonth();
                    Game.getCiv(Game.player.iCivID).updateLegacyPerMonth();
                    if (Game.menuManager.getVisibleInGame_Court()) {
                        Game.menuManager.rebuildInGame_CourtSavePos();
                        Game.menuManager.setVisibleInGame_Court(true);
                        InGame_Court.lTime = 0L;
                    }
                    if (Game.menuManager.getVisibleInGame_CivBonuses()) {
                        Game.menuManager.rebuildInGame_CivBonuses();
                        Game.menuManager.setVisibleInGame_CivBonuses(true);
                        InGame_CivBonuses.lTime = 0L;
                    }
                    break;
                case 14:
                    try {
                        Gdx.net.openURI(GO_TO_LINK);
                    } catch (GdxRuntimeException unused) {
                        Game.menuManager.addToast(Game.lang.get("Error"));
                        return;
                    }
                    break;
            }
        } catch (IndexOutOfBoundsException e) {
            CFG.exceptionStack(e);
        } catch (NullPointerException e2) {
            CFG.exceptionStack(e2);
        }
    }

    private final void resetAnimation() {
        this.animationStepID = 0;
        if (this.closeMenu) {
            return;
        }
        this.animationChangePosY = (CFG.GAME_HEIGHT / 2) + getTitle().getHeight();
    }

    public static final void setDialogType(DialogType dialogType2) {
        dialogType = dialogType2;
        Game.menuManager.dialogMenu.getMenuElement(0).setClickable(true);
        Game.menuManager.dialogMenu.getMenuElement(1).setClickable(true);
        try {
            switch (AnonymousClass3.$SwitchMap$aoc$kingdoms$lukasz$menus$Dialog$DialogType[dialogType.ordinal()]) {
                case 1:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("ExitTheGame"));
                    break;
                case 2:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("Generate"));
                    break;
                case 3:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("GenerateSuggestedCivilizations") + "?");
                    break;
                case 4:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("AddCore") + ": " + Game.lang.get("AllProvinces") + "?");
                    break;
                case 5:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("DeleteSavedGame") + " " + SaveGameManager.deleteSavedGameKey);
                    break;
                case 6:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("ConvertReligion") + ": " + Game.lang.get("AllProvinces") + "?");
                    break;
                case 7:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("Unlock") + ": " + Game.lang.get(LegacyManager.legacies.get(InGame_Legacies.UNLOCK_LEGACY_ID).Name));
                    break;
                case 8:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("Reverse") + "?");
                    break;
                case 9:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get(uNBYrZVGzy.IWjAQu) + "?");
                    break;
                case 10:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("AreYouSure") + " " + Game.lang.get("ExitToMainMenu") + "?");
                    break;
                case 11:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("Select") + " " + Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName() + "?");
                    break;
                case 12:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("Remove") + " " + Game.getCiv(Game.getProvince(CFG.iCreateScenario_ActiveProvinceID).getCivID()).getCivName() + "?");
                    break;
                case 13:
                    Game.menuManager.dialogMenu.getTitle().setText(Game.lang.get("FireAdvisor") + ": " + AdvisorManager.getAdvisorGroupName(InGame_Court.FIRE_ID));
                    break;
                case 14:
                    MenuTitle title = Game.menuManager.dialogMenu.getTitle();
                    StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Open")).append(" ");
                    String str = GO_TO_LINK;
                    title.setText(sbAppend.append(str.substring(0, Math.min(str.length(), 30))).append("?").toString());
                    break;
            }
        } catch (IndexOutOfBoundsException e) {
            CFG.exceptionStack(e);
        }
        Game.menuManager.dialogMenu.setVisible(true);
    }

    private final void updateChangePosY() {
        switch (this.animationStepID) {
            case 0:
            case 1:
            case 12:
                this.animationChangePosY = (int) (this.animationChangePosY - (((((CFG.GAME_HEIGHT / 2) + getTitle().getHeight()) * 2.5f) / 100.0f) * (this.closeMenu ? -1 : 1)));
                break;
            case 2:
            case 3:
            case 10:
            case 11:
                this.animationChangePosY = (int) (this.animationChangePosY - (((((CFG.GAME_HEIGHT / 2) + getTitle().getHeight()) * 5.0f) / 100.0f) * (this.closeMenu ? -1 : 1)));
                break;
            case 4:
            case 5:
            case 8:
            case 9:
                this.animationChangePosY = (int) (this.animationChangePosY - (((((CFG.GAME_HEIGHT / 2) + getTitle().getHeight()) * 10.0f) / 100.0f) * (this.closeMenu ? -1 : 1)));
                break;
            case 6:
            case 7:
                this.animationChangePosY = (int) (this.animationChangePosY - (((((CFG.GAME_HEIGHT / 2) + getTitle().getHeight()) * 15.0f) / 100.0f) * (this.closeMenu ? -1 : 1)));
                break;
            case 13:
                this.animationChangePosY = 0;
                break;
        }
        int i = Renderer.uFPS.iNumOfFPS;
        FPS fps = Renderer.uFPS;
        if (i < 22) {
            this.animationStepID = 13;
            this.animationChangePosY = 0;
        }
        if (this.closeMenu && this.animationStepID == 13) {
            this.animationChangePosY = CFG.GAME_HEIGHT;
            setVisible(false);
        }
        this.animationStepID++;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public final void closeMenu() {
        this.closeMenu = true;
        resetAnimation();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public final void disableButtons() {
        getMenuElement(0).setClickable(false);
        getMenuElement(1).setClickable(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (this.closeMenu) {
            int i3 = this.iBackgroundAlpha - 8;
            this.iBackgroundAlpha = i3;
            if (i3 <= 0) {
                this.iBackgroundAlpha = 0;
            }
            updateChangePosY();
        } else {
            int i4 = this.iBackgroundAlpha;
            if (i4 < 75) {
                this.iBackgroundAlpha = i4 + 4;
                updateChangePosY();
            }
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, (this.iBackgroundAlpha / 2.0f) / 255.0f));
        Images.pix.draw2(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (this.animationChangePosY + getPosY()) - getTitle().getHeight(), getWidth(), getTitle().getHeight() + CFG.BUTTON_HEIGHT);
        spriteBatch.setColor(new Color(0.0125f, 0.0125f, 0.0125f, (this.iBackgroundAlpha * 1.45f) / 255.0f));
        ImageManager.getImage(Images.patt).draw2(spriteBatch, i, i2, CFG.GAME_WIDTH, CFG.GAME_HEIGHT);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.4f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, this.animationChangePosY + ((getPosY() - getTitle().getHeight()) - Images.gradientXY.getHeight()), getWidth(), Images.gradientXY.getHeight());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + CFG.BUTTON_HEIGHT + this.animationChangePosY, getWidth(), Images.gradientXY.getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, this.animationChangePosY + i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public final void setVisible(boolean z) {
        super.setVisible(z);
        this.closeMenu = !z;
        this.iBackgroundAlpha = 5;
        resetAnimation();
    }
}
