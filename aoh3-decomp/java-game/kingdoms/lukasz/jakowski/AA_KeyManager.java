package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.map.map.MapEdgeMove;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menus.Settings.Settings_Menu;
import aoc.kingdoms.lukasz.menusEditor.GameCivsEdit;
import aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE;
import aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_BuildAtomicBomb;
import aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_Destroy;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology2;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_CallAllies;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DefensivePact;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DemandMilitaryAccess;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Guarantee;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_LiberateCivilization;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_NonAggression;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_OfferMilitaryAccess;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals_End;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendInsult;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendSpy;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageDefensivePact;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageDemandsMilitaryAccess;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageGift;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageGuarantee;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageInsult;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageNonAggressionPact;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.menusInGame.InGame_ConvertReligion;
import aoc.kingdoms.lukasz.menusInGame.InGame_MoveCapital_PopUp;
import aoc.kingdoms.lukasz.menusInGame.Laws.InGame_LawReform;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Invasion;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Regroup;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy;
import aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeCapital;
import aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeMilitaryAcademy;
import aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeMilitaryAcademyForGenerals;
import aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeNuclearReactor;
import aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeSupremeCourt;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapArmyPosition;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapLines;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapLinesWaves;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapPortPosition;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceConnections;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceNamePoints;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapSeaProvinces;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AA_KeyManager {
    public static boolean ALT_HOLD;
    public static boolean CTRL_HOLD;
    public static boolean SHIFT_HOLD;
    public static keyExtraAction keyExtraAction = new AnonymousClass1();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AA_KeyManager$1, reason: invalid class name */
    class AnonymousClass1 implements keyExtraAction {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.AA_KeyManager.keyExtraAction
        public boolean extraAction(int i) {
            return false;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AA_KeyManager$2, reason: invalid class name */
    class AnonymousClass2 implements keyExtraAction {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.AA_KeyManager.keyExtraAction
        public boolean extraAction(int i) {
            return EditorMapProvinceConnections.keyUp(i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AA_KeyManager$3, reason: invalid class name */
    class AnonymousClass3 implements keyExtraAction {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.AA_KeyManager.keyExtraAction
        public boolean extraAction(int i) {
            return EditorMapLines.keyUp(i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AA_KeyManager$4, reason: invalid class name */
    class AnonymousClass4 implements keyExtraAction {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.AA_KeyManager.keyExtraAction
        public boolean extraAction(int i) {
            return EditorMapLinesWaves.keyUp(i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AA_KeyManager$5, reason: invalid class name */
    class AnonymousClass5 implements keyExtraAction {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.AA_KeyManager.keyExtraAction
        public boolean extraAction(int i) {
            return EditorMapSeaProvinces.keyUp(i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AA_KeyManager$6, reason: invalid class name */
    class AnonymousClass6 implements keyExtraAction {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.AA_KeyManager.keyExtraAction
        public boolean extraAction(int i) {
            return EditorMapArmyPosition.keyUp(i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AA_KeyManager$7, reason: invalid class name */
    class AnonymousClass7 implements keyExtraAction {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.AA_KeyManager.keyExtraAction
        public boolean extraAction(int i) {
            return EditorMapProvinceNamePoints.keyUp(i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AA_KeyManager$8, reason: invalid class name */
    class AnonymousClass8 implements keyExtraAction {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.AA_KeyManager.keyExtraAction
        public boolean extraAction(int i) {
            return EditorMapPortPosition.keyUp(i);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.AA_KeyManager$9, reason: invalid class name */
    class AnonymousClass9 implements keyExtraAction {
        AnonymousClass9() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.AA_KeyManager.keyExtraAction
        public boolean extraAction(int i) {
            return false;
        }
    }

    public interface keyExtraAction {
        boolean extraAction(int i);
    }

    public static final void actionPinnedArmy(int i) {
        Game.ArmyPos armyPosFindArmy_FullCheck;
        try {
            if (Game.player.playerData.pinnedArmies.size() <= i || (armyPosFindArmy_FullCheck = Game.findArmy_FullCheck(Game.player.iCivID, Game.player.playerData.pinnedArmies.get(i))) == null) {
                return;
            }
            Game.setActiveArmy(armyPosFindArmy_FullCheck.iProvinceID, Game.player.playerData.pinnedArmies.get(i));
            InGame_ProvinceArmy.iActiveID = 0;
            InGame_ProvinceArmy.sActiveKEY = Game.player.playerData.pinnedArmies.get(i);
            Game.menuManager.rebuildInGame_ProvinceArmy();
            Game.menuManager.rebuildInGame_ProvinceArmy_HideMenus();
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.animationHover.resetAnimationData();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static boolean keyDown(int i) {
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode) {
            return true;
        }
        if (CFG.isDesktop()) {
            if (i == 59 || i == 60) {
                SHIFT_HOLD = true;
            }
            if (i == 129 || i == 130) {
                CTRL_HOLD = true;
            }
            if (i == 57 || i == 58) {
                ALT_HOLD = true;
            }
        }
        Game.soundsManager.playSound(SoundsManager.SOUND_CLICK_MAIN2);
        if (keyExtraAction.extraAction(i)) {
            return true;
        }
        if (!CTRL_HOLD) {
            if (i == 21 || i == 29) {
                Game.mapEdgeMove.MAP_MOVE_LEFT = true;
                Game.mapEdgeMove.MAP_MOVE_RIGHT = false;
                Game.mapEdgeMove.lScrollTime_MAP = CFG.currentTimeMillis;
                MapEdgeMove mapEdgeMove = Game.mapEdgeMove;
                MapEdgeMove mapEdgeMove2 = Game.mapEdgeMove;
                mapEdgeMove.iScroll_MAP = MapEdgeMove.DEFAULT_SCROLL;
                Game.mapEdgeMove.MAP_MOVE_KEYBOARD++;
            }
            if (i == 22 || i == 32) {
                Game.mapEdgeMove.MAP_MOVE_RIGHT = true;
                Game.mapEdgeMove.MAP_MOVE_LEFT = false;
                Game.mapEdgeMove.lScrollTime_MAP = CFG.currentTimeMillis;
                MapEdgeMove mapEdgeMove3 = Game.mapEdgeMove;
                MapEdgeMove mapEdgeMove4 = Game.mapEdgeMove;
                mapEdgeMove3.iScroll_MAP = MapEdgeMove.DEFAULT_SCROLL;
                Game.mapEdgeMove.MAP_MOVE_KEYBOARD++;
            }
            if (i == 19 || i == 51) {
                Game.mapEdgeMove.MAP_MOVE_TOP = true;
                Game.mapEdgeMove.MAP_MOVE_BOT = false;
                Game.mapEdgeMove.lScrollTime_MAP = CFG.currentTimeMillis;
                MapEdgeMove mapEdgeMove5 = Game.mapEdgeMove;
                MapEdgeMove mapEdgeMove6 = Game.mapEdgeMove;
                mapEdgeMove5.iScroll_MAP = MapEdgeMove.DEFAULT_SCROLL;
                Game.mapEdgeMove.MAP_MOVE_KEYBOARD++;
            }
            if (i == 20 || i == 47) {
                Game.mapEdgeMove.MAP_MOVE_BOT = true;
                Game.mapEdgeMove.MAP_MOVE_TOP = false;
                Game.mapEdgeMove.lScrollTime_MAP = CFG.currentTimeMillis;
                MapEdgeMove mapEdgeMove7 = Game.mapEdgeMove;
                MapEdgeMove mapEdgeMove8 = Game.mapEdgeMove;
                mapEdgeMove7.iScroll_MAP = MapEdgeMove.DEFAULT_SCROLL;
                Game.mapEdgeMove.MAP_MOVE_KEYBOARD++;
            }
        }
        return false;
    }

    public static boolean keyUp(int i) {
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode) {
            if (i == 66 || i == 160) {
                Keyboard keyboard2 = Game.keyboard;
                Keyboard.keyboardAction.save();
                return true;
            }
            if (i == 111) {
                Game.keyboard.hideKeyboard();
                return true;
            }
        }
        if (CFG.isDesktop()) {
            if (i == 59 || i == 60) {
                SHIFT_HOLD = false;
            }
            if (i == 129 || i == 130) {
                CTRL_HOLD = false;
            }
            if (i == 57 || i == 58) {
                ALT_HOLD = false;
            }
        }
        if (!Game.menuManager.getInMapEditorArmyPosition()) {
            if (i == 21 || i == 29) {
                Game.mapEdgeMove.MAP_MOVE_LEFT = false;
            }
            if (i == 22 || i == 32) {
                Game.mapEdgeMove.MAP_MOVE_RIGHT = false;
            }
            if (i == 19 || i == 51) {
                Game.mapEdgeMove.MAP_MOVE_TOP = false;
            }
            if (i == 20 || i == 47) {
                Game.mapEdgeMove.MAP_MOVE_BOT = false;
            }
        }
        Game.mapEdgeMove.MAP_MOVE_KEYBOARD--;
        Game.mapEdgeMove.MAP_MOVE_KEYBOARD = Math.max(0, Game.mapEdgeMove.MAP_MOVE_KEYBOARD);
        if (CFG.isDesktop()) {
            if (Game.menuManager.dialogMenu.getVisible()) {
                if (i == 66 || i == 160 || i == 62) {
                    Game.menuManager.dialogMenu.disableButtons();
                    Dialog.dialogTrue();
                    Game.menuManager.dialogMenu.closeMenu();
                } else if (i == 111 || i == 67) {
                    Game.menuManager.dialogMenu.disableButtons();
                    Dialog.dialogFalse();
                    Game.menuManager.dialogMenu.closeMenu();
                }
                return true;
            }
            if (i == 141) {
                Game.soundsManager.loadNextMusic();
                return true;
            }
            if (!Keyboard.keyboardMode) {
                if (i == 44) {
                    Game.mapScale.scrollScale(-1);
                } else if (i == 43) {
                    Game.mapScale.scrollScale(1);
                }
            }
            if (Game.menuManager.getInGameHideUI() && i == 111) {
                Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME);
                return true;
            }
            if (Game.menuManager.getInGame()) {
                if (InGame.ONLY_MAP_MODE) {
                    InGame.ONLY_MAP_MODE = false;
                    return true;
                }
                if (Keyboard.keyboardMode) {
                    return true;
                }
                if (!Game.menuManager.getVisibleInGame_Escape()) {
                    if (i == 131) {
                        InGame.action1();
                    } else if (i == 132) {
                        InGame.action2();
                    } else if (i == 133) {
                        InGame.action3();
                    } else if (i == 134) {
                        InGame.action4();
                    } else if (i == 135) {
                        InGame.action5();
                    } else if (i == 136) {
                        InGame.action6();
                    }
                }
                if (CTRL_HOLD && i == 29) {
                    Game.clearActiveArmy();
                    for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).iArmyPositionSize; i2++) {
                        int armyKeyID = Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i2)).getArmyKeyID(Game.getCiv(Game.player.iCivID).getArmyPositionKey(i2));
                        if (armyKeyID >= 0) {
                            Game.HoveredArmy hoveredArmy = new Game.HoveredArmy();
                            hoveredArmy.iCivID = Game.player.iCivID;
                            hoveredArmy.iProvinceID = Game.getCiv(Game.player.iCivID).getArmyPosition(i2);
                            hoveredArmy.key = Game.getCiv(Game.player.iCivID).getArmyPositionKey(i2);
                            hoveredArmy.iArmyID = armyKeyID;
                            Game.addActiveArmy(hoveredArmy);
                        }
                    }
                    if (Game.activeArmySize > 0) {
                        Game.setActiveProvinceID(-1);
                        Game.menuManager.rebuildInGame_ProvinceArmy();
                    } else {
                        Game.menuManager.setVisibleInGame_ProvinceArmy(false);
                    }
                    return true;
                }
                if (i == 145 || i == 8) {
                    Game.gameThread.updateSpeed(1);
                    Game.menuManager.TOAST_TIME = 0L;
                } else if (i == 146 || i == 9) {
                    Game.gameThread.updateSpeed(2);
                    Game.menuManager.TOAST_TIME = 0L;
                } else if (i == 147 || i == 10) {
                    Game.gameThread.updateSpeed(3);
                    Game.menuManager.TOAST_TIME = 0L;
                } else if (i == 148 || i == 11) {
                    Game.gameThread.updateSpeed(4);
                    Game.menuManager.TOAST_TIME = 0L;
                } else if (i == 149 || i == 12) {
                    Game.gameThread.updateSpeed(5);
                    Game.menuManager.TOAST_TIME = 0L;
                } else if (i == 34) {
                    if (Game.menuManager.getVisibleInGame_Court() && InGame_Court.inSearchProvinces) {
                        Game.menuManager.setVisibleInGame_Court(false);
                    } else {
                        InGame_CourtOptions2.actionCourt(InGame_CourtOptions2.idCourt);
                        InGame_Court.actionSearchProvinces();
                    }
                } else if (i == 50) {
                    if (Game.menuManager.getVisibleInGame_RecruitArmy() && Game.menuManager.inCreateNewArmy) {
                        Game.menuManager.setVisibleInGame_RecruitArmy(false);
                    } else {
                        Game.menuManager.hideMenus_RecruitArmy(false);
                        if (Game.menuManager.getVisibleInGame_Armies()) {
                            Game.menuManager.setVisibleInGame_Armies(false);
                        }
                        InGame_RecruitArmy.actionCreateNewArmy();
                        if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                            InGame_RecruitArmy_NewArmy.iProvinceID = Game.iActiveProvince;
                        }
                    }
                } else if (i == 30) {
                    if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.buildID != InGame_CourtOptions.iActiveID) {
                        InGame_CourtOptions2.actionBuildings(InGame_CourtOptions.buildID);
                    } else if (Game.menuManager.getVisibleInGame_Court()) {
                        Game.menuManager.setVisibleInGame_Court(false);
                    } else {
                        InGame.action1();
                        InGame_CourtOptions2.actionBuildings(InGame_CourtOptions.buildID);
                    }
                } else if (i == 40) {
                    if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iLawID != InGame_CourtOptions.iActiveID) {
                        InGame_CourtOptions2.actionLaws(InGame_CourtOptions.iLawID);
                    } else if (Game.menuManager.getVisibleInGame_Court()) {
                        Game.menuManager.setVisibleInGame_Court(false);
                    } else {
                        InGame.action1();
                        InGame_CourtOptions2.actionLaws(InGame_CourtOptions.iLawID);
                    }
                } else if (i == 35) {
                    if (Game.menuManager.getVisibleInGame_Generals()) {
                        Game.menuManager.setVisibleInGame_Generals(false);
                    } else {
                        InGame_RecruitArmy.actionGenerals();
                    }
                } else if (i == 41) {
                    if (!Game.menuManager.getVisibleInGame_Armies()) {
                        Game.menuManager.hideMenus_RecruitArmy(false);
                    }
                    InGame_RecruitArmy.actionArmies();
                } else if (i == 31) {
                    if (!Game.menuManager.getVisibleInGame_Armies()) {
                        Game.menuManager.hideMenus_RecruitArmy(false);
                    }
                    InGame_RecruitArmy.actionMercenaries();
                } else if (i == 46) {
                    InGame.actionRanking();
                } else if (i == 48) {
                    InGame.actionCurrent();
                } else if (i == 66 || i == 160) {
                    if (Game.menuManager.getVisibleInGame_RecruitArmy() && Game.menuManager.inCreateNewArmy) {
                        InGame_RecruitArmy_NewArmy.actionCreateNewArmy();
                    } else if (Game.regroupArmyMode) {
                        if (Game.iRegroupArmyProvincesSize > 0) {
                            InGame_ProvinceArmy_Regroup.confirm();
                        }
                    } else if (Game.invasionArmyMode) {
                        if (Game.invasionArmyProvincesSize > 0) {
                            InGame_ProvinceArmy_Invasion.confirm();
                        }
                    } else if (Game.menuManager.getVisibleInGame_PopUp()) {
                        MenuManager menuManager = Game.menuManager;
                        if (MenuManager.IN_GAME_POP_UP_MENU_ID == 0) {
                            InGame_ConvertReligion.confirm();
                        } else {
                            MenuManager menuManager2 = Game.menuManager;
                            if (MenuManager.IN_GAME_POP_UP_MENU_ID == 1) {
                                InGame_Destroy.confirm();
                            } else {
                                MenuManager menuManager3 = Game.menuManager;
                                if (MenuManager.IN_GAME_POP_UP_MENU_ID == 2) {
                                    InGame_UpgradeMilitaryAcademy.confirm();
                                } else {
                                    MenuManager menuManager4 = Game.menuManager;
                                    if (MenuManager.IN_GAME_POP_UP_MENU_ID == 3) {
                                        InGame_UpgradeMilitaryAcademyForGenerals.confirm();
                                    } else {
                                        MenuManager menuManager5 = Game.menuManager;
                                        if (MenuManager.IN_GAME_POP_UP_MENU_ID == 4) {
                                            InGame_UpgradeSupremeCourt.confirm();
                                        } else {
                                            MenuManager menuManager6 = Game.menuManager;
                                            if (MenuManager.IN_GAME_POP_UP_MENU_ID == 5) {
                                                InGame_UpgradeNuclearReactor.confirm();
                                            } else {
                                                MenuManager menuManager7 = Game.menuManager;
                                                if (MenuManager.IN_GAME_POP_UP_MENU_ID == 6) {
                                                    InGame_BuildAtomicBomb.confirm();
                                                } else {
                                                    MenuManager menuManager8 = Game.menuManager;
                                                    if (MenuManager.IN_GAME_POP_UP_MENU_ID == 7) {
                                                        InGame_MoveCapital_PopUp.confirm();
                                                    } else {
                                                        MenuManager menuManager9 = Game.menuManager;
                                                        if (MenuManager.IN_GAME_POP_UP_MENU_ID == 8) {
                                                            InGame_UpgradeCapital.confirm();
                                                        } else {
                                                            MenuManager menuManager10 = Game.menuManager;
                                                            if (MenuManager.IN_GAME_POP_UP_MENU_ID == 11) {
                                                                InGame_ChangeIdeology2.confirm();
                                                            } else {
                                                                MenuManager menuManager11 = Game.menuManager;
                                                                if (MenuManager.IN_GAME_POP_UP_MENU_ID == 12) {
                                                                    InGame_DeclareWar.confirm();
                                                                } else {
                                                                    MenuManager menuManager12 = Game.menuManager;
                                                                    if (MenuManager.IN_GAME_POP_UP_MENU_ID == 13) {
                                                                        InGame_SendInsult.confirm();
                                                                    } else {
                                                                        MenuManager menuManager13 = Game.menuManager;
                                                                        if (MenuManager.IN_GAME_POP_UP_MENU_ID == 16) {
                                                                            InGame_DefensivePact.confirm();
                                                                        } else {
                                                                            MenuManager menuManager14 = Game.menuManager;
                                                                            if (MenuManager.IN_GAME_POP_UP_MENU_ID == 17) {
                                                                                InGame_NonAggression.confirm();
                                                                            } else {
                                                                                MenuManager menuManager15 = Game.menuManager;
                                                                                if (MenuManager.IN_GAME_POP_UP_MENU_ID == 18) {
                                                                                    InGame_Alliance.confirm();
                                                                                } else {
                                                                                    MenuManager menuManager16 = Game.menuManager;
                                                                                    if (MenuManager.IN_GAME_POP_UP_MENU_ID == 19) {
                                                                                        InGame_DemandMilitaryAccess.confirm();
                                                                                    } else {
                                                                                        MenuManager menuManager17 = Game.menuManager;
                                                                                        if (MenuManager.IN_GAME_POP_UP_MENU_ID == 20) {
                                                                                            InGame_OfferMilitaryAccess.confirm();
                                                                                        } else {
                                                                                            MenuManager menuManager18 = Game.menuManager;
                                                                                            if (MenuManager.IN_GAME_POP_UP_MENU_ID == 21) {
                                                                                                InGame_Guarantee.confirm();
                                                                                            } else {
                                                                                                MenuManager menuManager19 = Game.menuManager;
                                                                                                if (MenuManager.IN_GAME_POP_UP_MENU_ID == 22) {
                                                                                                    InGame_SendGift.confirm();
                                                                                                } else {
                                                                                                    MenuManager menuManager20 = Game.menuManager;
                                                                                                    if (MenuManager.IN_GAME_POP_UP_MENU_ID == 24) {
                                                                                                        InGame_LawReform.confirm();
                                                                                                    } else {
                                                                                                        MenuManager menuManager21 = Game.menuManager;
                                                                                                        if (MenuManager.IN_GAME_POP_UP_MENU_ID == 25) {
                                                                                                            InGame_Rivals.confirm();
                                                                                                        } else {
                                                                                                            MenuManager menuManager22 = Game.menuManager;
                                                                                                            if (MenuManager.IN_GAME_POP_UP_MENU_ID == 27) {
                                                                                                                InGame_SendSpy.confirm();
                                                                                                            } else {
                                                                                                                MenuManager menuManager23 = Game.menuManager;
                                                                                                                if (MenuManager.IN_GAME_POP_UP_MENU_ID == 28) {
                                                                                                                    InGame_MessageGift.confirm();
                                                                                                                } else {
                                                                                                                    MenuManager menuManager24 = Game.menuManager;
                                                                                                                    if (MenuManager.IN_GAME_POP_UP_MENU_ID == 29) {
                                                                                                                        InGame_MessageAlliance.confirm();
                                                                                                                    } else {
                                                                                                                        MenuManager menuManager25 = Game.menuManager;
                                                                                                                        if (MenuManager.IN_GAME_POP_UP_MENU_ID == 30) {
                                                                                                                            InGame_MessageDefensivePact.confirm();
                                                                                                                        } else {
                                                                                                                            MenuManager menuManager26 = Game.menuManager;
                                                                                                                            if (MenuManager.IN_GAME_POP_UP_MENU_ID == 31) {
                                                                                                                                InGame_MessageNonAggressionPact.confirm();
                                                                                                                            } else {
                                                                                                                                MenuManager menuManager27 = Game.menuManager;
                                                                                                                                if (MenuManager.IN_GAME_POP_UP_MENU_ID == 32) {
                                                                                                                                    InGame_MessageDemandsMilitaryAccess.confirm();
                                                                                                                                } else {
                                                                                                                                    MenuManager menuManager28 = Game.menuManager;
                                                                                                                                    if (MenuManager.IN_GAME_POP_UP_MENU_ID == 33) {
                                                                                                                                        InGame_MessageGuarantee.confirm();
                                                                                                                                    } else {
                                                                                                                                        MenuManager menuManager29 = Game.menuManager;
                                                                                                                                        if (MenuManager.IN_GAME_POP_UP_MENU_ID == 34) {
                                                                                                                                            InGame_MessageInsult.confirm();
                                                                                                                                        } else {
                                                                                                                                            MenuManager menuManager30 = Game.menuManager;
                                                                                                                                            if (MenuManager.IN_GAME_POP_UP_MENU_ID == 36) {
                                                                                                                                                InGame_AllianceSpecialReformHRE.confirm();
                                                                                                                                            } else {
                                                                                                                                                MenuManager menuManager31 = Game.menuManager;
                                                                                                                                                if (MenuManager.IN_GAME_POP_UP_MENU_ID == 37) {
                                                                                                                                                    InGame_CallAllies.confirm();
                                                                                                                                                } else {
                                                                                                                                                    MenuManager menuManager32 = Game.menuManager;
                                                                                                                                                    if (MenuManager.IN_GAME_POP_UP_MENU_ID == 40) {
                                                                                                                                                        InGame_Rivals_End.confirm();
                                                                                                                                                    } else {
                                                                                                                                                        MenuManager menuManager33 = Game.menuManager;
                                                                                                                                                        if (MenuManager.IN_GAME_POP_UP_MENU_ID == 43) {
                                                                                                                                                            InGame_LiberateCivilization.confirm();
                                                                                                                                                        } else {
                                                                                                                                                            MenuManager menuManager34 = Game.menuManager;
                                                                                                                                                            if (MenuManager.IN_GAME_POP_UP_MENU_ID == 44) {
                                                                                                                                                                InGame_ShareTechnology.confirm();
                                                                                                                                                            } else {
                                                                                                                                                                MenuManager menuManager35 = Game.menuManager;
                                                                                                                                                                if (MenuManager.IN_GAME_POP_UP_MENU_ID == 48) {
                                                                                                                                                                    InGame_Intervene.confirm();
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (i == 61) {
                    if (Game.menuManager.getVisibleInGame_Civ()) {
                        InGame_Civ.diplomacyMode = !InGame_Civ.diplomacyMode;
                        InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
                        Game.menuManager.rebuildInGame_Civ(true);
                        InGame_Civ.lTime = 0L;
                    }
                } else if (i == 137) {
                    InGame.ONLY_MAP_MODE = !InGame.ONLY_MAP_MODE;
                } else if (i == 142) {
                    if (Game.menuManager.getVisibleInGame_Console()) {
                        Game.menuManager.setVisibleInGame_Console(false);
                    } else {
                        Game.menuManager.setVisibleInGame_Console(false);
                    }
                } else if (i != 3) {
                    if (i == 111) {
                        if (Game.regroupArmyMode) {
                            Game.setRegroupArmyMode(false);
                        } else if (Game.invasionArmyMode) {
                            Game.setInvasionArmyMode(false);
                        } else if (Game.menuManager.getVisibleInGame_SaveGame()) {
                            Game.menuManager.setVisibleInGame_SaveGame(false);
                        } else if (Game.menuManager.getVisibleInGame_Escape()) {
                            Game.menuManager.setVisibleInGame_Escape(!Game.menuManager.getVisibleInGame_Escape());
                        } else if (Game.menuManager.getVisibleInGame_Console()) {
                            Game.menuManager.setVisibleInGame_Console(false);
                        } else if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                            Game.menuManager.setVisibleInGame_TechnologyTree(false);
                        } else if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RECRUIT_ARMY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NEW_ARMY_CHOOSE_PROVINCE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NUKE_CHOOSE_PROVINCE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_COLONIZE_CHOOSE_PROVINCE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_WARS || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_BUILDING || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CONVERT_RELIGION || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CORE) {
                            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                        } else if (Game.menuManager.getVisibleInGame_PopUp()) {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        } else if (Game.menuManager.getVisibleInGame_TakeLoanRepay()) {
                            Game.menuManager.setVisibleInGame_TakeLoanRepay(false);
                        } else if (Game.menuManager.getVisibleInGame_TakeLoan()) {
                            Game.menuManager.setVisibleInGame_TakeLoan(false);
                        } else if (Game.menuManager.getVisibleInGame_Wonder()) {
                            Game.menuManager.setVisibleInGame_Wonder(false);
                            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_WONDERS) {
                                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                            }
                        } else if (Game.menuManager.getVisibleInGame_Nukes()) {
                            Game.menuManager.setVisibleInGame_Nukes(false);
                        } else if (Game.menuManager.getVisibleInGame_GoodsMarket()) {
                            Game.menuManager.setVisibleInGame_GoodsMarket(false);
                        } else if (Game.menuManager.getVisibleInGame_Goods()) {
                            Game.menuManager.setVisibleInGame_Goods(false);
                        } else if (Game.menuManager.getVisibleInGame_DisbandArmy()) {
                            Game.menuManager.setVisibleInGame_DisbandUnits(false);
                        } else if (Game.menuManager.getVisibleInGame_ReorganizeUnits()) {
                            Game.menuManager.setVisibleInGame_ReorganizeUnits(false);
                        } else if (Game.menuManager.getVisibleInGame_GeneralRecruit()) {
                            Game.menuManager.setVisibleInGame_GeneralRecruit(false);
                        } else if (Game.menuManager.getVisibleInGame_RecruitArmy()) {
                            Game.menuManager.setVisibleInGame_RecruitArmy(false);
                        } else if (Game.menuManager.getVisibleInGame_TechnologyChoose()) {
                            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
                        } else if (Game.menuManager.getVisibleInGame_Budget()) {
                            Game.menuManager.setVisibleInGame_Budget(false);
                        } else if (Game.menuManager.getVisibleInGame_Civ()) {
                            Game.menuManager.setVisibleInGame_Civ(false);
                        } else if (Game.menuManager.getVisibleInGame_Court()) {
                            Game.menuManager.setVisibleInGame_Court(false);
                        } else if (Game.menuManager.getVisibleInGame_ProvinceBonuses()) {
                            Game.menuManager.setVisibleInGame_ProvinceBonuses(false, false);
                        } else if (Game.menuManager.getVisibleInGame_CivBonuses()) {
                            Game.menuManager.setVisibleInGame_CivBonuses(false);
                        } else if (Game.menuManager.getVisibleInGame_Armies()) {
                            Game.menuManager.setVisibleInGame_Armies(false);
                        } else if (Game.menuManager.getVisibleInGame_Generals()) {
                            Game.menuManager.setVisibleInGame_Generals(false);
                        } else if (Game.menuManager.getVisibleInGame_Buildings()) {
                            Game.menuManager.setVisibleInGame_Buildings(false, false);
                        } else if (Game.menuManager.getVisibleInGame_CurrentSituation()) {
                            Game.menuManager.setVisibleInGame_CurrentSituation(false);
                        } else if (Game.menuManager.getVisibleInGame_Battle()) {
                            Game.menuManager.setVisibleInGame_Battle(false);
                        } else if (Game.menuManager.getVisibleInGame_Siege()) {
                            Game.menuManager.setVisibleInGame_Siege(false);
                        } else if (Game.menuManager.getVisibleInGame_War()) {
                            Game.menuManager.setVisibleInGame_War(false);
                        } else if (Game.menuManager.getVisibleInGame_Peace()) {
                            Game.menuManager.setVisibleInGame_Peace(false);
                        } else if (Game.menuManager.getVisibleInGame_ProvinceArmy()) {
                            Game.menuManager.setVisibleInGame_ProvinceArmy(false);
                            Game.clearActiveArmy();
                        } else if (Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
                            Game.gameActiveProvince.resetLastActiveProvince();
                            Game.setActiveProvinceID(-1);
                        } else if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INVEST_IN_ECONOMY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEVELOP_INFRASTRUCTURE || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_TAX_EFFICIENCY || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_MANPOWER || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MOVE_CAPITAL || Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_GROWTH_RATE) {
                            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                        } else {
                            Game.menuManager.setVisibleInGame_Escape(!Game.menuManager.getVisibleInGame_Escape());
                        }
                        return true;
                    }
                    if (i == 62) {
                        Game.gameThread.play = !Game.gameThread.play;
                    } else if (i == 69 || i == 156) {
                        Game.gameThread.updateSpeedMinus();
                        Game.menuManager.TOAST_TIME = 0L;
                    } else if (i == 81 || i == 157) {
                        Game.gameThread.updateSpeedPlus();
                        Game.menuManager.TOAST_TIME = 0L;
                    }
                } else if (Game.getCiv(Game.player.iCivID).getCapitalProvinceID() >= 0) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(Game.player.iCivID).getCapitalProvinceID());
                }
            } else if (Game.menuManager.getInGameLegacies()) {
                if (i == 111 || i == 131 || i == 132 || i == 133 || i == 134 || i == 135 || i == 136) {
                    Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME);
                }
            } else if (Game.menuManager.getInSettingsMenu()) {
                if (i == 111) {
                    Game.menuManager.setViewID(Settings_Menu.goBackToMenu);
                }
            } else if (Game.menuManager.getInScenarioAssign()) {
                if (i == 59 || i == 60) {
                    CFG.brushTool = !CFG.brushTool;
                } else if (i == 67) {
                    ScenarioAssign.popUndo();
                } else if (i == 45) {
                    CFG.iCreateScenario_AssignProvinces_Civ = 0;
                }
            } else if (Game.menuManager.getInScenarioAssignInGame()) {
                if (i == 59 || i == 60) {
                    CFG.brushTool = !CFG.brushTool;
                } else if (i == 45) {
                    CFG.iCreateScenario_AssignProvinces_Civ = 0;
                }
            } else if (Game.menuManager.getInScenarioCores()) {
                if (i == 59 || i == 60) {
                    CFG.brushTool = !CFG.brushTool;
                }
            } else if (Game.menuManager.getInScenarioReligion() || Game.menuManager.getInScenarioEditorBuildings()) {
                if (i == 59 || i == 60) {
                    CFG.brushTool = !CFG.brushTool;
                }
            } else if (Game.menuManager.getInNewGame()) {
                if (i == 33) {
                    GameCivsEdit.nCiv = Game.loadCivilization(Game.ideologiesManager.getRealTag(Game.getCiv(Game.player.iCivID).getCivTag()));
                    GameCivsEdit.goBackTo = View.NEW_GAME;
                    Game.menuManager.setViewID(View.EDITOR_GAMECIVS_EDIT);
                } else if (i == 46) {
                    GameCivsEdit.nCiv = Game.loadCivilization(Game.getCiv(Game.player.iCivID).getCivTag());
                    GameCivsEdit.goBackTo = View.NEW_GAME;
                    Game.menuManager.setViewID(View.EDITOR_GAMECIVS_EDIT);
                }
            }
        }
        return false;
    }

    public static final void updateKeyExtraAction() {
        if (Game.menuManager.getInMapEditorProvinceConnections()) {
            keyExtraAction = new AnonymousClass2();
            return;
        }
        if (Game.menuManager.getInMapEditorLines()) {
            keyExtraAction = new AnonymousClass3();
            return;
        }
        if (Game.menuManager.getInMapEditorWaves()) {
            keyExtraAction = new AnonymousClass4();
            return;
        }
        if (Game.menuManager.getInMapEditorSeaProvinces()) {
            keyExtraAction = new AnonymousClass5();
            return;
        }
        if (Game.menuManager.getInMapEditorArmyPosition()) {
            keyExtraAction = new AnonymousClass6();
            return;
        }
        if (Game.menuManager.getInMapEditorProvinceNamePoints()) {
            keyExtraAction = new AnonymousClass7();
        } else if (Game.menuManager.getInMapEditorPortPosition()) {
            keyExtraAction = new AnonymousClass8();
        } else {
            keyExtraAction = new AnonymousClass9();
        }
    }
}
