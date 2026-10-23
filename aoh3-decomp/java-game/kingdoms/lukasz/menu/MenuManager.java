package aoc.kingdoms.lukasz.menu;

import aoc.kingdoms.lukasz.events.Event;
import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame;
import aoc.kingdoms.lukasz.jakowski.Renderer.SparksAnimation;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.jakowski.Touch;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.province.ProvinceHover;
import aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menus.CloudsMenu;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menus.EmptyMenu;
import aoc.kingdoms.lukasz.menus.InitGame;
import aoc.kingdoms.lukasz.menus.Init_SelectLanguage;
import aoc.kingdoms.lukasz.menus.Init_SelectMap;
import aoc.kingdoms.lukasz.menus.Init_SelectMap2;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadSaveScenario;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadSavedGame;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadSavingGame;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadScenario;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_Load_Workshop;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menus.MainMenu_Stats;
import aoc.kingdoms.lukasz.menus.MainMenu_StatsEmpty;
import aoc.kingdoms.lukasz.menus.Menu_LoadGames_List;
import aoc.kingdoms.lukasz.menus.NewGame.NewGame;
import aoc.kingdoms.lukasz.menus.NewGame.NewGameCiv;
import aoc.kingdoms.lukasz.menus.NewGame.NewGameFlags;
import aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings;
import aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios;
import aoc.kingdoms.lukasz.menus.NewGame.Scenarios.ScenariosList_NewGame;
import aoc.kingdoms.lukasz.menus.NewGame.Scenarios.ScenariosList_NewGame_Buttons;
import aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_Buttons;
import aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_Vertical;
import aoc.kingdoms.lukasz.menus.NewGame.Scenarios.Scenarios_Campaign_VerticalScenarios;
import aoc.kingdoms.lukasz.menus.Settings.Settings_Menu;
import aoc.kingdoms.lukasz.menus.Settings.Settings_Resolution;
import aoc.kingdoms.lukasz.menus.Settings.Settings_UIScale;
import aoc.kingdoms.lukasz.menus.WorkshopMenu;
import aoc.kingdoms.lukasz.menusEditor.CreateCiv;
import aoc.kingdoms.lukasz.menusEditor.CreateCivGroup;
import aoc.kingdoms.lukasz.menusEditor.CreateCivReligion;
import aoc.kingdoms.lukasz.menusEditor.CreateCiv_Flag;
import aoc.kingdoms.lukasz.menusEditor.Editor;
import aoc.kingdoms.lukasz.menusEditor.GameCivs;
import aoc.kingdoms.lukasz.menusEditor.GameCivsAlphabet;
import aoc.kingdoms.lukasz.menusEditor.GameCivsEdit;
import aoc.kingdoms.lukasz.menusEditor.GameCivsEditGroup;
import aoc.kingdoms.lukasz.menusEditor.GameCivsEditReligion;
import aoc.kingdoms.lukasz.menusEditor.ManageMods;
import aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial;
import aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecialReformHRE;
import aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_BuildAtomicBomb;
import aoc.kingdoms.lukasz.menusInGame.AtomicNukes.InGame_Nukes;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleArmy;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleArmyDefenders;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_BattleReport;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_Full;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle_FullEmpty;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battlefield;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_Budget;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetBalanceProvinces;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesBuildingsMaintenance;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetExpensesMaintenance;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeBuildings;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeEconomy;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProduction;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeProvinces;
import aoc.kingdoms.lukasz.menusInGame.Budget.InGame_BudgetIncomeTaxation;
import aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroup;
import aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroupID;
import aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_Destroy;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_CivRank;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_AggressiveExpansion;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_ArmiesRegiments;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_CapitalCity;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Compare;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Economy;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Government;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_List;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_MilitaryAcademy;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Population;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Provinces;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_Religion;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ_UnlockedTechnologies;
import aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology;
import aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeIdeology2;
import aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeReligion;
import aoc.kingdoms.lukasz.menusInGame.Court.ChangeGovernmentReligion.InGame_ChangeReligion2;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Core;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_DevelopInfrastructure;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Espionage;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_ExploitEconomy;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_GoldenAges;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseGrowthRate;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseManpower;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Law;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Missions;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Religion;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Stats;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldAlliances;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldDefensive;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldNonAggression;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldTruces;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldVassals;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldWars;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Alliance;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_AllianceList;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_CallAllies;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DeclareWar;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DefensivePact;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_DemandMilitaryAccess;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_FormCiv;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Guarantee;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Intervene;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_LiberateCivilization;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_NonAggression;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_OfferMilitaryAccess;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_RivalsList;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Rivals_End;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SellProvince;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendInsult;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendSpy;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Ultimatum;
import aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_Union;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageCallToWar;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageDefensivePact;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageDemandsMilitaryAccess;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageGift;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageGuarantee;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageInsult;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageNonAggressionPact;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsEmpty;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket_Resource;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_LargestProducers;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_Goods_Provinces;
import aoc.kingdoms.lukasz.menusInGame.Graph.InGame_GraphPopulation;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.menusInGame.InGame_AdvisorRecruit;
import aoc.kingdoms.lukasz.menusInGame.InGame_Armies;
import aoc.kingdoms.lukasz.menusInGame.InGame_ArmyCustomize;
import aoc.kingdoms.lukasz.menusInGame.InGame_Audio;
import aoc.kingdoms.lukasz.menusInGame.InGame_BattleTactics;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivilizationAdvantages2;
import aoc.kingdoms.lukasz.menusInGame.InGame_Console;
import aoc.kingdoms.lukasz.menusInGame.InGame_ConvertReligion;
import aoc.kingdoms.lukasz.menusInGame.InGame_CurrentSituation;
import aoc.kingdoms.lukasz.menusInGame.InGame_Disband;
import aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia;
import aoc.kingdoms.lukasz.menusInGame.InGame_Escape;
import aoc.kingdoms.lukasz.menusInGame.InGame_EscapeEmpty;
import aoc.kingdoms.lukasz.menusInGame.InGame_Event;
import aoc.kingdoms.lukasz.menusInGame.InGame_GameLost;
import aoc.kingdoms.lukasz.menusInGame.InGame_GeneralRecruit;
import aoc.kingdoms.lukasz.menusInGame.InGame_Generals;
import aoc.kingdoms.lukasz.menusInGame.InGame_HideUI;
import aoc.kingdoms.lukasz.menusInGame.InGame_Legacies;
import aoc.kingdoms.lukasz.menusInGame.InGame_LegaciesEmpty;
import aoc.kingdoms.lukasz.menusInGame.InGame_ListOfBuildings;
import aoc.kingdoms.lukasz.menusInGame.InGame_ListOfUnits;
import aoc.kingdoms.lukasz.menusInGame.InGame_Loan;
import aoc.kingdoms.lukasz.menusInGame.InGame_LoanRepay;
import aoc.kingdoms.lukasz.menusInGame.InGame_MapModes;
import aoc.kingdoms.lukasz.menusInGame.InGame_Messages;
import aoc.kingdoms.lukasz.menusInGame.InGame_MessagesWars;
import aoc.kingdoms.lukasz.menusInGame.InGame_MissionTree;
import aoc.kingdoms.lukasz.menusInGame.InGame_Missions;
import aoc.kingdoms.lukasz.menusInGame.InGame_MoveCapital_PopUp;
import aoc.kingdoms.lukasz.menusInGame.InGame_Notifications;
import aoc.kingdoms.lukasz.menusInGame.InGame_Ranking;
import aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal;
import aoc.kingdoms.lukasz.menusInGame.InGame_ReorganizeUnits;
import aoc.kingdoms.lukasz.menusInGame.InGame_Revolutions;
import aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox;
import aoc.kingdoms.lukasz.menusInGame.InGame_SaveGame;
import aoc.kingdoms.lukasz.menusInGame.InGame_War;
import aoc.kingdoms.lukasz.menusInGame.InGame_Wonder;
import aoc.kingdoms.lukasz.menusInGame.InGame_Wonders;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info_2;
import aoc.kingdoms.lukasz.menusInGame.Laws.InGame_LawReform;
import aoc.kingdoms.lukasz.menusInGame.Laws.InGame_Laws;
import aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyTopBar;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmyUnits;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Invasion;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Move;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy_Regroup;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceBonuses;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfoBuildings;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo_Army;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceSiege;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy_Battlefield;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitMercenaries;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitSameType;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_Right;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightEconomy;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoods;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGoodsProvinces;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightGovernment;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightInfrastructure;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightPopulation;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightProvinceIncome;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightQueue;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightReligion;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightTaxEfficiency;
import aoc.kingdoms.lukasz.menusInGame.Right.InGame_RightWonders;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyChoose;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTree;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTreeEmpty;
import aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeCapital;
import aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeMilitaryAcademy;
import aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeMilitaryAcademyForGenerals;
import aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeNuclearReactor;
import aoc.kingdoms.lukasz.menusInGame.Upgrade.InGame_UpgradeSupremeCourt;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapArmyPosition;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapContinents;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapContinentsList;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy_Random;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapEdit;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapGeoRegions;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapGeoRegionsList;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapGrowthRate;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapGrowthRate_Random;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapLines;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapLinesWaves;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapOptimizationRegions;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapPortPosition;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceConnections;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceConnectionsList;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceNamePoints;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapResources;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapResourcesList;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapSeaProvinces;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapTerrainType;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapTerrainTypeList;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMap_CivSelect;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCiv;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivClaimants;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivFormable;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivs;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMap_GenerateSuggestedCivilizations;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMap_PrintMap;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMaps;
import aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioAlliances;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioAlliancesList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDeclareWar;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDeclareWarList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDefensive;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDefensiveList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioGuarantee;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioGuaranteeList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioMilitaryAccess;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioMilitaryAccessList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioNonAggression;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioNonAggressionList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioRelations;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioRelationsList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioTruces;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioTrucesList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioVassals;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioVassalsList;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioArmies_List;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssignCivs;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssignList;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign_InGame;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign_InGameCivs;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign_InGameList;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioBuildings;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioBuildings_List;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizationsList;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCores;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCores_InProvinces;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCores_List;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAlliance;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAlliance_Alliances;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAlliance_AlliancesList;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioEconomy;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioEconomy_List;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGeneratePreview;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioGovernment_List;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioPopulation;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioPopulation_List;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioReligion;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioReligion_List;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings;
import aoc.kingdoms.lukasz.menusScenarioEditor.Scenario_Calendar;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenariosList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Technology.ScenarioTechnologyCivs;
import aoc.kingdoms.lukasz.menusScenarioEditor.Technology.ScenarioTechnologyCivs_List;
import aoc.kingdoms.lukasz.menusScenarioEditor.Technology.ScenarioTechnology_Default;
import aoc.kingdoms.lukasz.menusScenarioEditor.Technology.ScenarioTechnology_Default_List;
import aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWasteland;
import aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWastelandContinents;
import aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWastelandContinentsList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWastelandOptions;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import aoc.kingdoms.lukasz.utilities.FPS;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuManager {
    private ColorPicker colorPicker;
    public static SparksAnimation sparksAnimation = new SparksAnimation();
    public static SparksAnimation sparksAnimationHover = new SparksAnimation();
    public static SparksAnimation sparksAnimationSidebar = new SparksAnimation();
    public static SparksAnimation sparksAnimationSidebarActive = new SparksAnimation();
    public static boolean orderOfMenuInGame = false;
    public static List<ClickAnimation> clickAnimations = new ArrayList();
    public static int clickAnimationsSize = 0;
    public static boolean mapEditorDrawProvinces = true;
    public static boolean currentSituationMode = false;
    public static int IN_GAME_POP_UP_MENU_ID = 0;
    public static int IN_GAME_POP_UP_MENU_FORM_CIV = 39;
    public static int IN_GAME_POP_UP_MENU_ID_DECLARE_WAR = 12;
    private List<List<Menu>> menus = new ArrayList();
    private List<List<Integer>> orderOfMenu = new ArrayList();
    public Menu dialogMenu = new Dialog();
    private List<Toast> lToast = new ArrayList();
    private int iToastSize = 0;
    private int viewID = 0;
    public int INIT_GAME_MENU = -1;
    public int INIT_GAME_MENU_SELECT_MAP = -1;
    public int INIT_GAME_MENU_LANGUAGE = -1;
    public int MAINMENU = -1;
    public int MAINMENU_STATS = -1;
    public int LOAD_GAMES_LIST = -1;
    public int CLOUDS_MENU = -1;
    public int IN_GAME = -1;
    public int IN_GAME_MAPMODES = -1;
    public int IN_GAME_PROVINCE_ARMY = -1;
    public int IN_GAME_PROVINCE_ARMY_UNITS = -1;
    public int IN_GAME_PROVINCE_ARMY_TOP_BAR = -1;
    public int IN_GAME_PROVINCE_ARMY_MOVE = -1;
    public int IN_GAME_ESCAPE = -1;
    public int IN_GAME_ESCAPE_EMPTY = -1;
    public int IN_GAME_RECRUIT_ARMY = -1;
    public int IN_GAME_RECRUIT_ARMY_BATTLEFIELD = -1;
    public int IN_GAME_GENERALS = -1;
    public int IN_GAME_GENERAL_RECRUIT = -1;
    public int IN_GAME_BUILDINGS = -1;
    public int IN_GAME_BUILDINGS_GROUP_0 = -1;
    public int IN_GAME_BUILDINGS_GROUP_1 = -1;
    public int IN_GAME_BUILDINGS_GROUP_2 = -1;
    public int IN_GAME_BUILDINGS_GROUP_3 = -1;
    public int IN_GAME_ARMIES = -1;
    public int IN_GAME_CIV = -1;
    public int IN_GAME_COURT = -1;
    public int IN_GAME_COURT_OPTIONS = -1;
    public int IN_GAME_COURT_OPTIONS2 = -1;
    public int IN_GAME_RIGHT = -1;
    public int IN_GAME_RIGHT_QUEUE = -1;
    public int IN_GAME_NOTIFICATION = -1;
    public int IN_GAME_ADVISOR_RECRUIT = -1;
    public int IN_GAME_CHOOSE_TECHNOLOGY = -1;
    public int IN_GAME_NUKES = -1;
    public int IN_GAME_TECHNOLOGY_TREE = -1;
    public int IN_GAME_TECHNOLOGY_TREE_EMPTY = -1;
    public int IN_GAME_BATTLE_FULL = -1;
    public int IN_GAME_BATTLE_FULL_EMPTY = -1;
    public int IN_GAME_BUDGET = -1;
    public int IN_GAME_TAKE_LOAN = -1;
    public int IN_GAME_TAKE_LOAN_REPAY = -1;
    public int IN_GAME_EVENT = -1;
    public int IN_GAME_CURRENT_SITUATION = -1;
    public int IN_GAME_MESSAGES = -1;
    public int IN_GAME_WARS = -1;
    public int IN_GAME_CONSOLE = -1;
    public int IN_GAME_SAVE_GAME = -1;
    public int IN_GAME_POP_UP = -1;
    public int IN_GAME_CIV_BONUSES = -1;
    public int IN_GAME_PROVINCE_BONUSES = -1;
    public int IN_GAME_GOODS_CIV = -1;
    public int IN_GAME_GOODS = -1;
    public int IN_GAME_GOODS_EMPTY = -1;
    public int IN_GAME_WONDER = -1;
    public int IN_GAME_LEGACIES = -1;
    public int IN_GAME_LEGACIES_EMPTY = -1;
    public int IN_GAME_LEGACIES_INFO = -1;
    public int IN_GAME_HIDE_UI = -1;
    public int IN_GAME_INFO = -1;
    public int IN_GAME_PROVINCE_INFO = -1;
    public int IN_GAME_PROVINCE_INFO_BUILDINGS = -1;
    public int IN_GAME_PROVINCE_INFO_ARMY = -1;
    public int IN_GAME_REORGANIZE_UNITS = -1;
    public int IN_GAME_DISBAND_UNITS = -1;
    public int IN_GAME_BATTLE = -1;
    public int IN_GAME_BATTLE_ARMY = -1;
    public int IN_GAME_BATTLE_ARMY_DEFENDERS = -1;
    public int IN_GAME_SIEGE = -1;
    public int IN_GAME_WAR = -1;
    public int IN_GAME_PEACE = -1;
    public int NEW_GAME = -1;
    public int NEW_GAME_CIV = -1;
    public int NEW_GAME_SETTINGS = -1;
    public int NEW_GAME_FLAGS = -1;
    public int SCENARIOS = -1;
    public int SCENARIOS_CAMPAIGN = -1;
    public int GAME_LOST = -1;
    public int EDITOR = -1;
    public int EDITOR_GAMECIVS = -1;
    public int EDITOR_GAMECIVS_EDIT = -1;
    public int EDITOR_GAMECIVS_EDIT_RELIGION = -1;
    public int EDITOR_GAMECIVS_EDIT_GROUP = -1;
    public int CREATE_CIV = -1;
    public int CREATE_CIV_RELIGION = -1;
    public int CREATE_CIV_GROUP = -1;
    public int CREATE_CIV_FLAG = -1;
    public int EDITOR_MAPS = -1;
    public int EDITOR_MAPS_EDIT_PROVINCE_CONNECTIONS = -1;
    public int EDITOR_MAPS_EDIT = -1;
    public int EDITOR_MAPS_EDIT_SEA_PROVINCES = -1;
    public int EDITOR_MAPS_EDIT_ARMY_POSITION = -1;
    public int EDITOR_MAPS_EDIT_PORT_POSITION = -1;
    public int EDITOR_MAPS_EDIT_TERRAIN = -1;
    public int EDITOR_MAPS_EDIT_RESOURCE = -1;
    public int EDITOR_SELECT_PROVINCES = -1;
    public int EDITOR_MAPS_EDIT_CONTINENTS = -1;
    public int EDITOR_MAPS_EDIT_GEO_REGION = -1;
    public int EDITOR_MAPS_EDIT_OPTIMIZATION_REGIONS = -1;
    public int EDITOR_MAPS_EDIT_GROWTH_RATE = -1;
    public int EDITOR_MAPS_EDIT_FORMABLE_CIVS = -1;
    public int EDITOR_MAPS_EDIT_FORMABLE_CIV = -1;
    public int EDITOR_MAPS_EDIT_CIV_SELECT = -1;
    public int EDITOR_MAPS_EDIT_ECONOMY = -1;
    public int EDITOR_MAPS_EDIT_PROVINCE_NAMES = -1;
    public int EDITOR_MAPS_EDIT_LINES = -1;
    public int EDITOR_MAPS_EDIT_WAVES = -1;
    public int EDITOR_MAPS_EDIT_SUGGESTED_CIVILIZATIONS = -1;
    public int PRINT_A_MAP = -1;
    public int SETTINGS = -1;
    public int SETTINGS_RESOLUTION = -1;
    public int SETTINGS_UI = -1;
    public int EDITOR_SCENARIOS_LIST = -1;
    public int SCENARIO_WASTELAND_CONTINENTS = -1;
    public int SCENARIO_WASTELAND = -1;
    public int SCENARIO_CIVILIZATIONS = -1;
    public int SCENARIO_CIVILIZATIONS_LIST = -1;
    public int SCENARIO_ASSIGN = -1;
    public int SCENARIO_ASSIGN_CIVS = -1;
    public int SCENARIO_TECHNOLOGIES = -1;
    public int SCENARIO_TECHNOLOGIES_CIVS = -1;
    public int SCENARIO_SETTINGS = -1;
    public int SCENARIO_CALENDAR = -1;
    public int SCENARIO_ARMIES = -1;
    public int SCENARIO_POPULATION = -1;
    public int SCENARIO_ECONOMY = -1;
    public int SCENARIO_GOVERNMENT = -1;
    public int SCENARIO_BUILDINGS = -1;
    public int SCENARIO_CORES = -1;
    public int SCENARIO_CORES_LIST = -1;
    public int SCENARIO_CORES_LIST_IN_PROVINCE = -1;
    public int SCENARIO_RELIGION = -1;
    public int SCENARIO_RELIGION_LIST = -1;
    public int SCENARIO_ASSIGN_IN_GAME = -1;
    public int SCENARIO_ASSIGN_IN_GAME_CIVS = -1;
    public int SCENARIO_PREVIEW = -1;
    public int SCENARIO_RELATIONS = -1;
    public int SCENARIO_VASSALS = -1;
    public int SCENARIO_TRUCES = -1;
    public int SCENARIO_DECLARE_WAR = -1;
    public int SCENARIO_ALLIANCES = -1;
    public int SCENARIO_NON_AGGRESSION = -1;
    public int SCENARIO_GUARANTEE = -1;
    public int SCENARIO_DEFENSIVE = -1;
    public int SCENARIO_MILITARY_ACCESS = -1;
    public int SCENARIO_CREATE_ALLIANCE = -1;
    public int SCENARIO_CREATE_ALLIANCE_EDIT = -1;
    public int WORKSHOP = -1;
    public int MANAGE_MODS = -1;
    public int LOAD_STUFF = -1;
    private int activeSliderMenuID = -1;
    private int activeMenuElementID = -1;
    private boolean menu_MoveInnerElements = false;
    private int iSliderMenuStartPosY = 0;
    private int iSliderMenuActionDownPosY = 0;
    private boolean updateSliderMenuPosY = false;
    private int iSliderMenuStartPosX = 0;
    private int iSliderMenuActionDownPosX = 0;
    private boolean updateSliderMenuPosX = false;
    private boolean menu_MoveByTitleMode = false;
    private boolean menuResizeMode = false;
    private boolean menuResizeLEFT = false;
    private boolean closeMenuMode = false;
    private boolean colorPickerMode = false;
    private boolean pieChartMode = false;
    private boolean textScrollableMode = false;
    private boolean sliderMode = false;
    public boolean graphVertical_ScrollMode_Y = false;
    public boolean graphVertical_ScrollMode_X = false;
    private int fromViewID = -1;
    private int toViewID = -1;
    private boolean backAnimation = false;
    private float animationChangeViewPosX = 0.0f;
    private int animationStepID = 0;
    public int ANIMATION_TIME = 1000;
    public long TOAST_TIME = 0;
    public int WAR_ANIMATION_TIME = 3000;
    public long WAR_TIME = 0;
    public boolean inCreateNewArmy = false;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.MenuManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_RightQueue();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.MenuManager$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$aoc$kingdoms$lukasz$menu$View;
        static final /* synthetic */ int[] $SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type;

        static {
            int[] iArr = new int[MenuElement_Type.values().length];
            $SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type = iArr;
            try {
                iArr[MenuElement_Type.SLIDER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type[MenuElement_Type.PIECHART_WITH_STATS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type[MenuElement_Type.TEXT_SCROLLABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type[MenuElement_Type.GRAPH_VERTICAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[View.values().length];
            $SwitchMap$aoc$kingdoms$lukasz$menu$View = iArr2;
            try {
                iArr2[View.INIT_GAME_MENU.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.INIT_GAME_MENU_SELECT_MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.INIT_GAME_MENU_LANGUAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.LOAD_SCENARIO.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.LOAD_SAVE_SCENARIO.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.LOAD_SAVE_GAME.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.LOAD_SAVED_GAME.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.LOAD_WORKSHOP_PUBLISH.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.MAINMENU.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.MAINMENU_STATS.ordinal()] = 10;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.LOAD_GAMES_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.NEW_GAME.ordinal()] = 12;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.GAME_LOST.ordinal()] = 13;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.CLOUDS_MENU.ordinal()] = 14;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.WORKSHOP.ordinal()] = 15;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.MANAGE_MODS.ordinal()] = 16;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIOS.ordinal()] = 17;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIOS_CAMPAIGN.ordinal()] = 18;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SETTINGS.ordinal()] = 19;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SETTINGS_RESOLUTION.ordinal()] = 20;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SETTINGS_UI.ordinal()] = 21;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.IN_GAME_LEGACIES.ordinal()] = 22;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.IN_GAME_HIDE_UI.ordinal()] = 23;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.IN_GAME.ordinal()] = 24;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR.ordinal()] = 25;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_GAMECIVS.ordinal()] = 26;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.CREATE_CIV.ordinal()] = 27;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_GAMECIVS_EDIT.ordinal()] = 28;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS.ordinal()] = 29;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT.ordinal()] = 30;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_PROVINCE_CONNECTIONS.ordinal()] = 31;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_GROWTH_RATE.ordinal()] = 32;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_FORMABLE_CIVS.ordinal()] = 33;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_FORMABLE_CIV.ordinal()] = 34;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_CIV_SELECT.ordinal()] = 35;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_ECONOMY.ordinal()] = 36;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_SEA_PROVINCES.ordinal()] = 37;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_ARMY_POSITION.ordinal()] = 38;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_PROVINCE_NAMES.ordinal()] = 39;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_LINES.ordinal()] = 40;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_WAVES.ordinal()] = 41;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_SUGGESTED_CIVILIZATIONS.ordinal()] = 42;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.PRINT_A_MAP.ordinal()] = 43;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_PORT_POSITION.ordinal()] = 44;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_TERRAIN.ordinal()] = 45;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_RESOURCE.ordinal()] = 46;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_SELECT_PROVINCES.ordinal()] = 47;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_CONTINENTS.ordinal()] = 48;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_GEO_REGION.ordinal()] = 49;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_MAPS_EDIT_OPTIMIZATION_REGIONS.ordinal()] = 50;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.EDITOR_SCENARIOS_LIST.ordinal()] = 51;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_WASTELAND_CONTINENTS.ordinal()] = 52;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_WASTELAND.ordinal()] = 53;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_CIVILIZATIONS.ordinal()] = 54;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_ASSIGN.ordinal()] = 55;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_ASSIGN_IN_GAME.ordinal()] = 56;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_TECHNOLOGIES.ordinal()] = 57;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_TECHNOLOGIES_CIVS.ordinal()] = 58;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_ARMIES.ordinal()] = 59;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_POPULATION.ordinal()] = 60;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_ECONOMY.ordinal()] = 61;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_GOVERNMENT.ordinal()] = 62;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_BUILDINGS.ordinal()] = 63;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_CORES.ordinal()] = 64;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_RELIGION.ordinal()] = 65;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_RELATIONS.ordinal()] = 66;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_ALLIANCES.ordinal()] = 67;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_VASSALS.ordinal()] = 68;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_TRUCES.ordinal()] = 69;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_DECLARE_WAR.ordinal()] = 70;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_NON_AGGRESSION.ordinal()] = 71;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_MILITARY_ACCESS.ordinal()] = 72;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_CREATE_ALLIANCE.ordinal()] = 73;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_CREATE_ALLIANCE_EDIT.ordinal()] = 74;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_DEFENSIVE.ordinal()] = 75;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_GUARANTEE.ordinal()] = 76;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_PREVIEW.ordinal()] = 77;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$View[View.SCENARIO_SETTINGS.ordinal()] = 78;
            } catch (NoSuchFieldError unused82) {
            }
        }
    }

    private final boolean actionDown_CloseMenu(int i, int i2) {
        for (int i3 = 0; i3 < getActiveMenu().size(); i3++) {
            try {
                if (getActiveMenu().get(getActiveOrder(i3)).getVisible() && getActiveMenu().get(getActiveOrder(i3)).getCloseable() && i >= getActiveMenu().get(getActiveOrder(i3)).menuClose.getCloseMenu_PosX() && i <= getActiveMenu().get(getActiveOrder(i3)).menuClose.getCloseMenu_PosX() + getActiveMenu().get(getActiveOrder(i3)).menuClose.getCloseMenu_Width() && i2 >= getActiveMenu().get(getActiveOrder(i3)).menuClose.getCloseMenu_PosY() && i2 <= getActiveMenu().get(getActiveOrder(i3)).menuClose.getCloseMenu_PosY() + getActiveMenu().get(getActiveOrder(i3)).menuClose.getCloseMenu_Height()) {
                    this.activeSliderMenuID = i3;
                    this.closeMenuMode = true;
                    return true;
                }
            } catch (IndexOutOfBoundsException e) {
                CFG.exceptionStack(e);
            } catch (NullPointerException e2) {
                CFG.exceptionStack(e2);
            }
        }
        return false;
    }

    private final boolean actionDown_MenuTitle(int i, int i2) {
        for (int i3 = 0; i3 < getActiveMenu().size(); i3++) {
            try {
                if (getActiveMenu().get(getActiveOrder(i3)).getVisible() && getActiveMenu().get(getActiveOrder(i3)).getTitle() != null && i >= getActiveMenu().get(getActiveOrder(i3)).getPosX() && i <= getActiveMenu().get(getActiveOrder(i3)).getPosX() + getActiveMenu().get(getActiveOrder(i3)).getWidth() && i2 >= getActiveMenu().get(getActiveOrder(i3)).getPosY() - getActiveMenu().get(getActiveOrder(i3)).getTitle().getHeight() && i2 <= getActiveMenu().get(getActiveOrder(i3)).getPosY()) {
                    this.menu_MoveByTitleMode = true;
                    this.activeSliderMenuID = getActiveOrder(i3);
                    this.iSliderMenuStartPosX = getActiveMenu().get(this.activeSliderMenuID).getPosX() - i;
                    this.iSliderMenuStartPosY = getActiveMenu().get(this.activeSliderMenuID).getPosY() - i2;
                    this.iSliderMenuActionDownPosX = i;
                    this.iSliderMenuActionDownPosY = i2;
                    setOrderOfMenu(getActiveOrder(i3));
                    getActiveMenu().get(this.activeSliderMenuID).stopScrolling();
                    return true;
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        return false;
    }

    private final boolean actionDown_ResizeMenu(int i, int i2) {
        for (int i3 = 0; i3 < getActiveMenu().size(); i3++) {
            try {
                if (getActiveMenu().get(getActiveOrder(i3)).getVisible() && getActiveMenu().get(getActiveOrder(i3)).getResizable()) {
                    if (i >= (getActiveMenu().get(getActiveOrder(i3)).getPosX() + getActiveMenu().get(getActiveOrder(i3)).getWidth()) - (CFG.PADDING * 6) && i <= getActiveMenu().get(getActiveOrder(i3)).getPosX() + getActiveMenu().get(getActiveOrder(i3)).getWidth() && i2 >= (getActiveMenu().get(getActiveOrder(i3)).getPosY() + getActiveMenu().get(getActiveOrder(i3)).getHeight()) - (CFG.PADDING * 6) && i2 <= getActiveMenu().get(getActiveOrder(i3)).getPosY() + getActiveMenu().get(getActiveOrder(i3)).getHeight()) {
                        startMenuResizeMode(getActiveOrder(i3), i, i2, false);
                        setOrderOfMenu(getActiveOrder(i3));
                        return true;
                    }
                    if (i >= getActiveMenu().get(getActiveOrder(i3)).getPosX() && i <= getActiveMenu().get(getActiveOrder(i3)).getPosX() + (CFG.PADDING * 6) && i2 >= (getActiveMenu().get(getActiveOrder(i3)).getPosY() + getActiveMenu().get(getActiveOrder(i3)).getHeight()) - (CFG.PADDING * 6) && i2 <= getActiveMenu().get(getActiveOrder(i3)).getPosY() + getActiveMenu().get(getActiveOrder(i3)).getHeight()) {
                        startMenuResizeMode(getActiveOrder(i3), i, i2, true);
                        this.iSliderMenuActionDownPosX = i;
                        setOrderOfMenu(getActiveOrder(i3));
                        return true;
                    }
                }
            } catch (IndexOutOfBoundsException e) {
                CFG.exceptionStack(e);
            } catch (NullPointerException e2) {
                CFG.exceptionStack(e2);
            }
        }
        return false;
    }

    private final void actionMoveSlider(int i, int i2) {
        if (getActiveMenuElement().getClickable()) {
            if (i >= getActiveMenuElement().getPosX() + getActiveMenu().get(this.activeSliderMenuID).getPosX() && i <= getActiveMenuElement().getPosX() + getActiveMenuElement().getWidth() + getActiveMenu().get(this.activeSliderMenuID).getPosX()) {
                getActiveMenuElement().updateSlider(i - getActiveMenu().get(this.activeSliderMenuID).getPosX());
            } else if (i < getActiveMenuElement().getPosX() + getActiveMenu().get(this.activeSliderMenuID).getPosX()) {
                getActiveMenuElement().updateSlider(getActiveMenuElement().getPosX());
            } else {
                getActiveMenuElement().updateSlider(getActiveMenuElement().getPosX() + getActiveMenuElement().getWidth());
            }
            getActiveMenu().get(this.activeSliderMenuID).actionElement(this.activeMenuElementID);
        }
    }

    private final void actionMove_MenuInnerElements(int i, int i2) {
        try {
            if (getActiveMenu().get(this.activeSliderMenuID).getScrollableY()) {
                if (this.updateSliderMenuPosY) {
                    this.iSliderMenuStartPosY = getActiveMenu().get(this.activeSliderMenuID).getMenuPosY() - i2;
                    this.updateSliderMenuPosY = false;
                } else {
                    getActiveMenu().get(this.activeSliderMenuID).setMenuPosY(this.iSliderMenuStartPosY + i2);
                }
            }
            if (getActiveMenu().get(this.activeSliderMenuID).getScrollableX()) {
                if (!this.updateSliderMenuPosX) {
                    getActiveMenu().get(this.activeSliderMenuID).setMenuPosX(this.iSliderMenuStartPosX + i);
                } else {
                    this.iSliderMenuStartPosX = getActiveMenu().get(this.activeSliderMenuID).getMenuPosX() - i;
                    this.updateSliderMenuPosX = false;
                }
            }
        } catch (IndexOutOfBoundsException e) {
            CFG.exceptionStack(e);
        } catch (NullPointerException e2) {
            CFG.exceptionStack(e2);
        }
    }

    private final void actionMove_MenuTitle(int i, int i2) {
        if (getActiveMenu().get(this.activeSliderMenuID).getMoveable()) {
            if (((this.iSliderMenuStartPosX + i) + getActiveMenu().get(this.activeSliderMenuID).getWidth()) - getActiveMenu().get(this.activeSliderMenuID).getMinWidth() > 0 && this.iSliderMenuStartPosX + i < CFG.GAME_WIDTH - getActiveMenu().get(this.activeSliderMenuID).getMinWidth()) {
                getActiveMenu().get(this.activeSliderMenuID).setPosX(this.iSliderMenuStartPosX + i);
                getActiveMenu().get(this.activeSliderMenuID).updateMenuPosX(getActiveMenu().get(this.activeSliderMenuID).getMenuPosX() + (i - this.iSliderMenuActionDownPosX));
                this.iSliderMenuActionDownPosX = i;
            }
            if (this.iSliderMenuStartPosY + i2 <= getActiveMenu().get(this.activeSliderMenuID).getMinHeight() || this.iSliderMenuStartPosY + i2 >= CFG.GAME_HEIGHT - getActiveMenu().get(this.activeSliderMenuID).getMinHeight()) {
                return;
            }
            getActiveMenu().get(this.activeSliderMenuID).setPosY(this.iSliderMenuStartPosY + i2);
            getActiveMenu().get(this.activeSliderMenuID).updateMenuPosY(getActiveMenu().get(this.activeSliderMenuID).getMenuPosY() + (i2 - this.iSliderMenuActionDownPosY));
            this.iSliderMenuActionDownPosY = i2;
        }
    }

    private final void actionMove_ResizeMenu(int i, int i2) {
        getActiveMenu().get(this.activeSliderMenuID).setHeight(i2 + this.iSliderMenuStartPosY);
        getActiveMenu().get(this.activeSliderMenuID).setMenuPosY(getActiveMenu().get(this.activeSliderMenuID).getMenuPosY());
        getActiveMenu().get(this.activeSliderMenuID).updateScrollable();
        getActiveMenu().get(this.activeSliderMenuID).updateMenuElements_IsInView();
        if (!this.menuResizeLEFT) {
            getActiveMenu().get(this.activeSliderMenuID).setWidth(i + this.iSliderMenuStartPosX);
            if (getActiveMenu().get(this.activeSliderMenuID).getPosX() + getActiveMenu().get(this.activeSliderMenuID).getWidth() > CFG.GAME_WIDTH) {
                getActiveMenu().get(this.activeSliderMenuID).setWidth(CFG.GAME_WIDTH - getActiveMenu().get(this.activeSliderMenuID).getPosX());
                return;
            }
            return;
        }
        if (getActiveMenu().get(this.activeSliderMenuID).setWidth_Resize(getActiveMenu().get(this.activeSliderMenuID).getWidth() - (i - this.iSliderMenuActionDownPosX))) {
            this.iSliderMenuActionDownPosX = i;
        } else {
            this.iSliderMenuActionDownPosX = getActiveMenu().get(this.activeSliderMenuID).getPosX();
        }
        if (getActiveMenu().get(this.activeSliderMenuID).getPosX() < 0) {
            getActiveMenu().get(this.activeSliderMenuID).setWidth(getActiveMenu().get(this.activeSliderMenuID).getWidth() + getActiveMenu().get(this.activeSliderMenuID).getPosX());
            getActiveMenu().get(this.activeSliderMenuID).setPosX(0);
        }
    }

    private final void actionMove_ScrollPosX(int i, int i2) {
        if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getScrollable()) {
            if (!this.updateSliderMenuPosX) {
                getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).setScrollPosX(this.iSliderMenuStartPosX + i);
            } else {
                this.iSliderMenuStartPosX = getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getScrollPosX() - i;
                this.updateSliderMenuPosX = false;
            }
        }
    }

    private final void actionMove_ScrollPosY(int i, int i2) {
        if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getScrollable()) {
            if (!this.updateSliderMenuPosY) {
                getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).setScrollPosY(this.iSliderMenuStartPosY + i2);
            } else {
                this.iSliderMenuStartPosY = getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getScrollPosY() - i2;
                this.updateSliderMenuPosY = false;
            }
        }
    }

    private final void actionUp_CloseMenu(int i, int i2) {
        if (!getActiveMenu().get(getActiveOrder(this.activeSliderMenuID)).getVisible() || !getActiveMenu().get(getActiveOrder(this.activeSliderMenuID)).getCloseable() || i < getActiveMenu().get(getActiveOrder(this.activeSliderMenuID)).menuClose.getCloseMenu_PosX() || i > getActiveMenu().get(getActiveOrder(this.activeSliderMenuID)).menuClose.getCloseMenu_PosX() + getActiveMenu().get(getActiveOrder(this.activeSliderMenuID)).menuClose.getCloseMenu_Width() || i2 < getActiveMenu().get(getActiveOrder(this.activeSliderMenuID)).menuClose.getCloseMenu_PosY() || i2 > getActiveMenu().get(getActiveOrder(this.activeSliderMenuID)).menuClose.getCloseMenu_PosY() + getActiveMenu().get(getActiveOrder(this.activeSliderMenuID)).menuClose.getCloseMenu_Height()) {
            return;
        }
        getActiveMenu().get(getActiveOrder(this.activeSliderMenuID)).actionCloseMenu();
    }

    public static final void addClickAnimation(ClickAnimation clickAnimation) {
        try {
            if (GameValues.clickAnim.ENABLE_ACTION_DOTS_ANIMATION) {
                clickAnimations.add(clickAnimation);
                clickAnimationsSize = clickAnimations.size();
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    private final int addMenu(Menu menu) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(menu);
        this.menus.add(arrayList);
        ArrayList arrayList2 = new ArrayList();
        List<List<Menu>> list = this.menus;
        arrayList2.add(Integer.valueOf(list.get(list.size() - 1).size() - 1));
        this.orderOfMenu.add(arrayList2);
        return this.menus.size() - 1;
    }

    private final void clearToast() {
        this.lToast.clear();
        this.iToastSize = 0;
    }

    private final void hideCivCourt_Menus() {
        if (getVisibleInGame_ProvinceInfo()) {
            setVisibleInGame_ProvinceInfo(false);
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
        }
        if (getVisibleInGame_ProvinceArmy()) {
            Game.clearActiveArmy();
            setVisibleInGame_ProvinceArmy(false);
        }
        if (getVisibleInGame_Battle()) {
            setVisibleInGame_Battle(false);
        }
        if (getVisibleInGame_Siege()) {
            setVisibleInGame_Siege(false);
        }
        if (getVisibleInGame_War()) {
            setVisibleInGame_War(false);
        }
        if (getVisibleInGame_Peace()) {
            setVisibleInGame_Peace(false);
        }
        if (getVisibleInGame_RecruitArmy()) {
            setVisibleInGame_RecruitArmy(false);
        }
        if (getVisibleInGame_Armies()) {
            setVisibleInGame_Armies(false);
        }
        if (getVisibleInGame_DisbandArmy()) {
            setVisibleInGame_DisbandUnits(false);
        }
        if (getVisibleInGame_ReorganizeUnits()) {
            setVisibleInGame_ReorganizeUnits(false);
        }
        if (getVisibleInGame_TechnologyChoose()) {
            setVisibleInGame_TechnologyChoose(false);
        }
        if (getVisibleDeclareWar()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisible_SpecialAlliance()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleInGame_Nukes()) {
            setVisibleInGame_Nukes(false);
        }
        if (getVisibleInGame_CurrentSituation()) {
            setVisibleInGame_CurrentSituation(false);
        }
        if (getVisibleInGame_TechnologyTree()) {
            setVisibleInGame_TechnologyTree(false);
        }
        if (getVisibleInGame_Wonder()) {
            setVisibleInGame_Wonder(false);
        }
        if (getVisibleInGame_Generals()) {
            setVisibleInGame_Generals(false);
        }
        if (getVisibleInGame_GeneralRecruit()) {
            setVisibleInGame_GeneralRecruit(false);
        }
    }

    private final void resetChangeViewMode() {
        this.toViewID = -1;
        this.fromViewID = -1;
        this.animationChangeViewPosX = 0.0f;
        this.backAnimation = false;
        this.animationStepID = 0;
    }

    private final void updateDrawProvinces() {
        if (this.viewID > 0) {
            RendererGame.updateRenderer();
            ProvinceDraw.updateDrawProvinces();
            CivilizationRegionsManager.updateRenderer_CivNames();
            try {
                ProvinceHover.updateProvinceHoverBuild();
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        Game.mapCoords.updateMinMaxPosY();
    }

    public final boolean actionDown(int i, int i2) {
        if (getInGame() && InGame.ONLY_MAP_MODE) {
            return false;
        }
        try {
            if (this.dialogMenu.getVisible()) {
                for (int i3 = 0; i3 < this.dialogMenu.getMenuElementsSize(); i3++) {
                    if (i >= this.dialogMenu.getPosX() + this.dialogMenu.getMenuElement(i3).getPosX() && i <= this.dialogMenu.getPosX() + this.dialogMenu.getMenuElement(i3).getPosX() + this.dialogMenu.getMenuElement(i3).getWidth() && i2 >= this.dialogMenu.getPosY() + this.dialogMenu.getMenuElement(i3).getPosY() && i2 <= this.dialogMenu.getPosY() + this.dialogMenu.getMenuElement(i3).getPosY() + this.dialogMenu.getMenuElement(i3).getHeight()) {
                        this.activeMenuElementID = i3;
                        return true;
                    }
                }
                return true;
            }
            if (this.colorPickerMode) {
                this.colorPicker.touch(i, i2);
                return true;
            }
            if (this.colorPicker.getVisible() && i >= this.colorPicker.getPosX() && i <= this.colorPicker.getPosX() + this.colorPicker.getWidth() && i2 >= this.colorPicker.getPosY() && i2 <= this.colorPicker.getPosY() + this.colorPicker.getHeight()) {
                this.colorPickerMode = true;
                this.colorPicker.touch(i, i2);
                return true;
            }
            if (actionDown_CloseMenu(i, i2) || actionDown_ResizeMenu(i, i2)) {
                return true;
            }
            if (actionDown_MenuTitle(i, i2)) {
                try {
                    getActiveMenu().get(this.activeSliderMenuID).getTitle().onHovered();
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
                return true;
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        for (int i4 = 0; i4 < getActiveMenu().size(); i4++) {
            try {
                if (getActiveMenu().get(getActiveOrder(i4)).getVisible() && i >= getActiveMenu().get(getActiveOrder(i4)).getPosX() && i <= getActiveMenu().get(getActiveOrder(i4)).getPosX() + getActiveMenu().get(getActiveOrder(i4)).getWidth() && i2 >= getActiveMenu().get(getActiveOrder(i4)).getPosY() && i2 <= getActiveMenu().get(getActiveOrder(i4)).getPosY() + getActiveMenu().get(getActiveOrder(i4)).getHeight()) {
                    this.activeSliderMenuID = getActiveOrder(i4);
                    getActiveMenu().get(this.activeSliderMenuID).stopScrolling();
                    if (getActiveMenu().get(getActiveOrder(i4)).getScrollableY() || getActiveMenu().get(getActiveOrder(i4)).getScrollableX()) {
                        this.menu_MoveInnerElements = true;
                        this.iSliderMenuStartPosY = getActiveMenu().get(getActiveOrder(i4)).getMenuPosY() - i2;
                        this.iSliderMenuActionDownPosY = i2;
                        this.iSliderMenuStartPosX = getActiveMenu().get(getActiveOrder(i4)).getMenuPosX() - i;
                        this.iSliderMenuActionDownPosX = i;
                    }
                    for (int i5 = 0; i5 < getActiveMenu().get(getActiveOrder(i4)).getMenuElementsSize(); i5++) {
                        if (getActiveMenu().get(getActiveOrder(i4)).getMenuElement(i5).getVisible() && i >= getActiveMenu().get(getActiveOrder(i4)).getMenuElement(i5).getPosX() + getActiveMenu().get(getActiveOrder(i4)).getMenuPosX() && i <= getActiveMenu().get(getActiveOrder(i4)).getMenuElement(i5).getPosX() + getActiveMenu().get(getActiveOrder(i4)).getMenuPosX() + getActiveMenu().get(getActiveOrder(i4)).getMenuElement(i5).getWidth() && i2 >= getActiveMenu().get(getActiveOrder(i4)).getMenuElement(i5).getPosY() + getActiveMenu().get(getActiveOrder(i4)).getMenuPosY() && i2 <= getActiveMenu().get(getActiveOrder(i4)).getMenuElement(i5).getPosY() + getActiveMenu().get(getActiveOrder(i4)).getMenuElement(i5).getHeight() + getActiveMenu().get(getActiveOrder(i4)).getMenuPosY()) {
                            this.activeMenuElementID = i5;
                            if (CFG.isAndroid) {
                                if (Game.hoverManager.hoverActiveSliderMenuID == this.activeSliderMenuID && Game.hoverManager.hoverActiveMenuElementID == i5) {
                                    HoverManager hoverManager = Game.hoverManager;
                                    HoverManager.hoverMobileTime = CFG.currentTimeMillis;
                                } else {
                                    if (Game.hoverManager.hoverActiveMenuElementID >= 0 && Game.hoverManager.hoverActiveSliderMenuID >= 0) {
                                        Game.hoverManager.resetHoverActive_Menu();
                                    }
                                    Game.hoverManager.hoverActiveSliderMenuID = this.activeSliderMenuID;
                                    Game.hoverManager.hoverActiveMenuElementID = this.activeMenuElementID;
                                    HoverManager.hoverTime = CFG.currentTimeMillis;
                                    getActiveMenu().get(Game.hoverManager.hoverActiveSliderMenuID).getMenuElement(Game.hoverManager.hoverActiveMenuElementID).setIsHovered(true);
                                    getActiveMenu().get(Game.hoverManager.hoverActiveSliderMenuID).getMenuElement(Game.hoverManager.hoverActiveMenuElementID).buildElementHover();
                                    Game.hoverManager.updateHoveredFlag();
                                    HoverManager hoverManager2 = Game.hoverManager;
                                    HoverManager.hoverMobileTime = CFG.currentTimeMillis;
                                }
                            }
                            setOrderOfMenu(getActiveOrder(i4));
                            getActiveMenu().get(this.activeSliderMenuID).onHovered();
                            int i6 = AnonymousClass2.$SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type[getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getTypeOfElement().ordinal()];
                            if (i6 != 1) {
                                if (i6 == 2) {
                                    this.pieChartMode = true;
                                    if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getScrollable()) {
                                        this.menu_MoveInnerElements = false;
                                        this.iSliderMenuStartPosY = getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getScrollPosY() - i2;
                                        this.iSliderMenuActionDownPosX = i;
                                        this.iSliderMenuActionDownPosY = i2;
                                    }
                                } else if (i6 != 3) {
                                    if (i6 == 4) {
                                        if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getMoveable()) {
                                            if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getInStatisticsMode()) {
                                                this.iSliderMenuStartPosY = getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getCurrent() - i2;
                                                this.graphVertical_ScrollMode_Y = true;
                                            } else {
                                                this.iSliderMenuStartPosX = getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getCurrent() - i;
                                                this.graphVertical_ScrollMode_X = true;
                                            }
                                            getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).stopScrolling();
                                        } else {
                                            this.graphVertical_ScrollMode_X = true;
                                        }
                                        this.iSliderMenuActionDownPosY = i2;
                                        this.iSliderMenuActionDownPosX = i;
                                        this.iSliderMenuStartPosX = getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getCurrent() - i;
                                        this.iSliderMenuActionDownPosX = i;
                                        this.menu_MoveInnerElements = false;
                                    }
                                } else if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getScrollable()) {
                                    this.textScrollableMode = true;
                                    this.menu_MoveInnerElements = false;
                                    this.iSliderMenuStartPosX = getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getScrollPosX() - i;
                                    this.iSliderMenuActionDownPosX = i;
                                    this.iSliderMenuActionDownPosY = i2;
                                }
                            } else if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getClickable()) {
                                this.sliderMode = true;
                                getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).updateSlider(i - getActiveMenu().get(this.activeSliderMenuID).getPosX());
                            }
                            return true;
                        }
                    }
                }
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
        return false;
    }

    protected final void actionElement(int i, int i2, boolean z) {
        Game.keyboard.hideKeyboard();
        if (z) {
            getActiveMenu().get(i).actionElementPPM(i2);
        } else {
            getActiveMenu().get(i).actionElement(i2);
        }
    }

    public final boolean actionMove(int i, int i2) {
        try {
            if (this.dialogMenu.getVisible()) {
                return true;
            }
            if (this.colorPickerMode) {
                this.colorPicker.touch(i, i2);
                return true;
            }
            if (this.menuResizeMode) {
                actionMove_ResizeMenu(i, i2);
                return true;
            }
            if (this.menu_MoveByTitleMode) {
                actionMove_MenuTitle(i, i2);
                return true;
            }
            if (this.menu_MoveInnerElements) {
                actionMove_MenuInnerElements(i, i2);
                getActiveMenu().get(this.activeSliderMenuID).setScrollPosY(i2);
                getActiveMenu().get(this.activeSliderMenuID).setScrollPosX(i);
                return true;
            }
            if (this.pieChartMode) {
                actionMove_ScrollPosY(i, i2);
                return true;
            }
            if (this.textScrollableMode) {
                actionMove_ScrollPosX(i, i2);
                return true;
            }
            if (this.sliderMode) {
                actionMoveSlider(i, i2);
                return true;
            }
            if (this.graphVertical_ScrollMode_Y) {
                if (this.activeSliderMenuID >= 0 && this.activeMenuElementID >= 0) {
                    if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getMoveable()) {
                        actionMove_MenuInnerElements(i, i2);
                        getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).setScrollPosY(i2);
                        if (this.updateSliderMenuPosY) {
                            this.iSliderMenuStartPosY = getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getCurrent() - i2;
                            this.updateSliderMenuPosY = false;
                        } else {
                            getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).setCurrent(this.iSliderMenuStartPosY + i2);
                        }
                    }
                    return true;
                }
            } else if (this.graphVertical_ScrollMode_X) {
                if (this.activeSliderMenuID >= 0 && this.activeMenuElementID >= 0) {
                    if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getMoveable()) {
                        actionMove_MenuInnerElements(i, i2);
                        getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).setScrollPosY(i);
                        if (this.updateSliderMenuPosX) {
                            this.iSliderMenuStartPosX = getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getCurrent() - i;
                            this.updateSliderMenuPosX = false;
                        } else {
                            getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).setCurrent(this.iSliderMenuStartPosX + i);
                        }
                    }
                    return true;
                }
            } else if (this.activeMenuElementID >= 0 || this.closeMenuMode) {
                return true;
            }
            return false;
        } catch (IndexOutOfBoundsException e) {
            CFG.exceptionStack(e);
        } catch (NullPointerException e2) {
            CFG.exceptionStack(e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:130:0x03c3 A[Catch: IndexOutOfBoundsException | Exception -> 0x0411, IndexOutOfBoundsException | Exception -> 0x0411, TryCatch #1 {IndexOutOfBoundsException | Exception -> 0x0411, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x000e, B:9:0x001a, B:11:0x002f, B:13:0x0051, B:15:0x0066, B:17:0x0088, B:19:0x0097, B:20:0x00a4, B:22:0x00a8, B:24:0x00be, B:27:0x00c3, B:29:0x00c7, B:31:0x00d9, B:33:0x00eb, B:35:0x010e, B:37:0x0135, B:39:0x0147, B:41:0x015b, B:43:0x015f, B:45:0x016b, B:49:0x0174, B:51:0x0178, B:53:0x017c, B:55:0x0180, B:57:0x0184, B:59:0x0188, B:61:0x018c, B:63:0x0194, B:65:0x019b, B:67:0x01a3, B:69:0x01aa, B:73:0x01d7, B:74:0x01f5, B:76:0x01ff, B:80:0x0208, B:82:0x020c, B:84:0x0210, B:87:0x0216, B:89:0x021a, B:91:0x0222, B:93:0x0229, B:95:0x0231, B:97:0x0238, B:99:0x0250, B:101:0x0279, B:103:0x02b9, B:105:0x02e2, B:108:0x0322, B:111:0x0349, B:111:0x0349, B:115:0x0352, B:115:0x0352, B:110:0x033e, B:110:0x033e, B:117:0x0356, B:117:0x0356, B:119:0x0366, B:119:0x0366, B:121:0x0374, B:121:0x0374, B:123:0x0384, B:123:0x0384, B:125:0x0392, B:125:0x0392, B:129:0x03bf, B:129:0x03bf, B:133:0x03f0, B:133:0x03f0, B:137:0x03f9, B:137:0x03f9, B:130:0x03c3, B:130:0x03c3, B:132:0x03db, B:132:0x03db, B:139:0x03fd, B:139:0x03fd, B:141:0x0401, B:141:0x0401), top: B:147:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x03db A[Catch: IndexOutOfBoundsException | Exception -> 0x0411, IndexOutOfBoundsException | Exception -> 0x0411, TryCatch #1 {IndexOutOfBoundsException | Exception -> 0x0411, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x000e, B:9:0x001a, B:11:0x002f, B:13:0x0051, B:15:0x0066, B:17:0x0088, B:19:0x0097, B:20:0x00a4, B:22:0x00a8, B:24:0x00be, B:27:0x00c3, B:29:0x00c7, B:31:0x00d9, B:33:0x00eb, B:35:0x010e, B:37:0x0135, B:39:0x0147, B:41:0x015b, B:43:0x015f, B:45:0x016b, B:49:0x0174, B:51:0x0178, B:53:0x017c, B:55:0x0180, B:57:0x0184, B:59:0x0188, B:61:0x018c, B:63:0x0194, B:65:0x019b, B:67:0x01a3, B:69:0x01aa, B:73:0x01d7, B:74:0x01f5, B:76:0x01ff, B:80:0x0208, B:82:0x020c, B:84:0x0210, B:87:0x0216, B:89:0x021a, B:91:0x0222, B:93:0x0229, B:95:0x0231, B:97:0x0238, B:99:0x0250, B:101:0x0279, B:103:0x02b9, B:105:0x02e2, B:108:0x0322, B:111:0x0349, B:111:0x0349, B:115:0x0352, B:115:0x0352, B:110:0x033e, B:110:0x033e, B:117:0x0356, B:117:0x0356, B:119:0x0366, B:119:0x0366, B:121:0x0374, B:121:0x0374, B:123:0x0384, B:123:0x0384, B:125:0x0392, B:125:0x0392, B:129:0x03bf, B:129:0x03bf, B:133:0x03f0, B:133:0x03f0, B:137:0x03f9, B:137:0x03f9, B:130:0x03c3, B:130:0x03c3, B:132:0x03db, B:132:0x03db, B:139:0x03fd, B:139:0x03fd, B:141:0x0401, B:141:0x0401), top: B:147:0x0001 }] */
    public final boolean actionUp(int i, int i2, int i3, int i4) {
        try {
            if (this.dialogMenu.getVisible()) {
                int i5 = this.activeMenuElementID;
                if (i5 < 0) {
                    this.dialogMenu.disableButtons();
                    Dialog.dialogFalse();
                    this.dialogMenu.closeMenu();
                } else if (this.dialogMenu.getMenuElement(i5).getClickable() && i >= this.dialogMenu.getPosX() + this.dialogMenu.getMenuElement(this.activeMenuElementID).getPosX() && i <= this.dialogMenu.getPosX() + this.dialogMenu.getMenuElement(this.activeMenuElementID).getPosX() + this.dialogMenu.getMenuElement(this.activeMenuElementID).getWidth() && i2 >= this.dialogMenu.getPosY() + this.dialogMenu.getMenuElement(this.activeMenuElementID).getPosY() && i2 <= this.dialogMenu.getPosY() + this.dialogMenu.getMenuElement(this.activeMenuElementID).getPosY() + this.dialogMenu.getMenuElement(this.activeMenuElementID).getHeight()) {
                    Game.soundsManager.playSound(SoundsManager.SOUND_CLICK2);
                    this.dialogMenu.actionElement(this.activeMenuElementID);
                    return true;
                }
            }
            if (this.colorPickerMode) {
                this.colorPicker.touch(i, i2);
                this.colorPicker.touchUp();
                Game.soundsManager.playSound(Game.soundsManager.getClickMain());
                return true;
            }
            if (this.menuResizeMode) {
                return true;
            }
            if (this.menu_MoveByTitleMode) {
                if (getActiveMenu().get(this.activeSliderMenuID).getTitle() != null && i >= getActiveMenu().get(this.activeSliderMenuID).getPosX() && i <= getActiveMenu().get(this.activeSliderMenuID).getPosX() + getActiveMenu().get(this.activeSliderMenuID).getWidth() && i2 >= getActiveMenu().get(this.activeSliderMenuID).getPosY() - getActiveMenu().get(this.activeSliderMenuID).getTitle().getHeight() && i2 <= getActiveMenu().get(this.activeSliderMenuID).getPosY()) {
                    getActiveMenu().get(this.activeSliderMenuID).getTitle().action();
                }
                return true;
            }
            if (this.sliderMode) {
                this.sliderMode = false;
                if (getActiveMenuElement().getClickable()) {
                    actionElement(this.activeSliderMenuID, this.activeMenuElementID, i4 == 1);
                }
                return true;
            }
            if (this.closeMenuMode) {
                actionUp_CloseMenu(i, i2);
                return true;
            }
            if (this.activeMenuElementID >= 0 && this.activeSliderMenuID >= 0) {
                if (this.pieChartMode) {
                    if (this.iSliderMenuActionDownPosY >= i2 - CFG.PADDING && this.iSliderMenuActionDownPosY <= i2 + CFG.PADDING && this.iSliderMenuActionDownPosX >= i - CFG.PADDING && this.iSliderMenuActionDownPosX <= i + CFG.PADDING) {
                        getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).setDescription(!getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getDescription());
                        Game.soundsManager.playSound(getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getSFX());
                    }
                    if (getActiveMenuElement().getClickable()) {
                        actionElement(this.activeSliderMenuID, this.activeMenuElementID, i4 == 1);
                    }
                    return true;
                }
                if (!this.graphVertical_ScrollMode_X && !this.graphVertical_ScrollMode_Y) {
                    if ((!this.menu_MoveInnerElements || (this.iSliderMenuActionDownPosY >= i2 - CFG.PADDING && this.iSliderMenuActionDownPosY <= CFG.PADDING + i2 && this.iSliderMenuActionDownPosX >= i - CFG.PADDING && this.iSliderMenuActionDownPosX <= CFG.PADDING + i)) && getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getClickable() && i >= getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getPosX() + getActiveMenu().get(this.activeSliderMenuID).getMenuPosX() && i <= getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getPosX() + getActiveMenu().get(this.activeSliderMenuID).getMenuPosX() + getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getWidth() && i2 >= getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getPosY() + getActiveMenu().get(this.activeSliderMenuID).getMenuPosY() && i2 <= getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getPosY() + getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getHeight() + getActiveMenu().get(this.activeSliderMenuID).getMenuPosY()) {
                        try {
                            Game.soundsManager.playSound(getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getSFX());
                        } catch (IndexOutOfBoundsException unused) {
                            Game.soundsManager.playSound(Game.soundsManager.getClickMain());
                        }
                        actionElement(this.activeSliderMenuID, this.activeMenuElementID, i4 == 1);
                        return true;
                    }
                }
                float f = i2;
                if (this.iSliderMenuActionDownPosY >= f - (CFG.PADDING * CFG.GUI_SCALE) && this.iSliderMenuActionDownPosY <= f + (CFG.PADDING * CFG.GUI_SCALE)) {
                    float f2 = i;
                    if (this.iSliderMenuActionDownPosX >= f2 - (CFG.PADDING * CFG.GUI_SCALE) && this.iSliderMenuActionDownPosX <= f2 + (CFG.PADDING * CFG.GUI_SCALE)) {
                        getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).setInStatisticsMode(!getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getInStatisticsMode());
                    } else if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getMoveable()) {
                        getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).scrollTheMenu();
                    }
                } else if (getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).getMoveable()) {
                    getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID).scrollTheMenu();
                }
                actionElement(this.activeSliderMenuID, this.activeMenuElementID, i4 == 1);
                return true;
            }
            if (this.menu_MoveInnerElements) {
                getActiveMenu().get(this.activeSliderMenuID).scrollTheMenu();
                return true;
            }
            return false;
        } catch (IndexOutOfBoundsException | Exception unused2) {
        }
    }

    public final void addMenuToOrderAtTheTop(int i) {
        try {
            this.orderOfMenu.get(i).add(Integer.valueOf(this.menus.get(i).size() - 1));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final int addNextMenuToView(int i, Menu menu) {
        this.menus.get(i).add(menu);
        addMenuToOrderAtTheTop(i);
        return this.menus.get(i).size() - 1;
    }

    public final void addRebuildInGame_RightQueue() {
        Game.addSimpleTask(new AnonymousClass1("rebuildInGame_RightQueue"));
    }

    public final void addToast(Toast toast) {
        this.lToast.add(toast);
        if (this.lToast.size() > GameValues.notifications.TOAST_MAX_SIZE) {
            for (int i = 0; i < this.lToast.size() - GameValues.notifications.TOAST_MAX_SIZE; i++) {
                this.lToast.remove(i);
            }
        }
        this.iToastSize = this.lToast.size();
        this.TOAST_TIME = CFG.currentTimeMillis;
    }

    public final void addToast(String str) {
        addToast(new Toast(str, 0));
    }

    public final void addToast(String str, int i) {
        addToast(new Toast(str, i));
    }

    public final void addToast(String str, int i, int i2) {
        addToast(new Toast(str, i, i2));
    }

    public final void addToastBonus(String str, String str2, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Flag(i2, 0, CFG.PADDING));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_VERY_LONG));
    }

    public final void addToastGold(String str, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_VERY_LONG));
    }

    public final void addToastGold(String str, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        addToast(new Toast(arrayList, 0, i2));
    }

    public final void addToastGold_Short(String str, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_SHORT));
    }

    public final void addToastInsufficient(String str, String str2, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_VERY_LONG));
    }

    public final void addToastNegative(String str, String str2, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2, Colors.HOVER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_STANDARD));
    }

    public final void addToastPositive(String str, String str2, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str2, Colors.HOVER_POSITIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_STANDARD));
    }

    public final void addToast_Error(String str) {
        addToast(new Toast(str, 0, Toast.TIME_INVIEW_VERY_LONG, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
    }

    public final void addToast_Error(String str, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_VERY_LONG));
    }

    public final void addToast_Error(String str, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(str, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(i, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        addToast(new Toast(arrayList, 0, i2));
    }

    public final Menu createCivFlag() {
        return this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_FLAG);
    }

    public final Menu createCivGroup() {
        return this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_GROUP);
    }

    public final Menu createCivReligion() {
        return this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_RELIGION);
    }

    public final void draw(SpriteBatch spriteBatch) {
        try {
            if (getInGame() && InGame.ONLY_MAP_MODE) {
                return;
            }
            if (this.TOAST_TIME + ((long) this.ANIMATION_TIME) >= CFG.currentTimeMillis) {
                spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.8f - (((CFG.currentTimeMillis - this.TOAST_TIME) / this.ANIMATION_TIME) * 0.8f)));
                Images.gradientXY.draw(spriteBatch, CFG.GAME_WIDTH / 4, CFG.GAME_HEIGHT - (CFG.BUTTON_HEIGHT * 2), CFG.GAME_WIDTH / 2, CFG.BUTTON_HEIGHT * 2);
                spriteBatch.setColor(Color.WHITE);
            }
            if (this.WAR_TIME + ((long) this.WAR_ANIMATION_TIME) >= CFG.currentTimeMillis) {
                spriteBatch.setColor(new Color(DiplomacyManager.COLOR_WAR.r, DiplomacyManager.COLOR_WAR.g, DiplomacyManager.COLOR_WAR.b, 0.4f - (((CFG.currentTimeMillis - this.WAR_TIME) / this.WAR_ANIMATION_TIME) * 0.4f)));
                Images.gradientXY.draw(spriteBatch, 0, CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT, CFG.GAME_WIDTH, CFG.BUTTON_HEIGHT);
                Images.gradientXY.draw(spriteBatch, CFG.GAME_WIDTH / 4, CFG.GAME_HEIGHT - (CFG.BUTTON_HEIGHT / 2), CFG.GAME_WIDTH / 2, CFG.BUTTON_HEIGHT / 2);
                spriteBatch.setColor(Color.WHITE);
            }
            int i = this.fromViewID;
            if (i < 0) {
                draw(spriteBatch, this.viewID, 0, 0);
            } else {
                draw(spriteBatch, i, (int) this.animationChangeViewPosX, 0);
                draw(spriteBatch, this.toViewID, ((int) this.animationChangeViewPosX) + (CFG.GAME_WIDTH * (this.backAnimation ? -1 : 1)), 0);
            }
            if (clickAnimationsSize > 0) {
                try {
                    spriteBatch.setColor(Color.WHITE);
                    Renderer.oSBBorder.end();
                    Renderer.oSBBorder.begin();
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
                try {
                    for (int i2 = clickAnimationsSize - 1; i2 >= 0; i2--) {
                        try {
                            if (clickAnimations.get(i2).draw(spriteBatch)) {
                                clickAnimations.remove(i2);
                            }
                        } catch (Exception e2) {
                            CFG.exceptionStack(e2);
                        }
                    }
                    clickAnimationsSize = clickAnimations.size();
                } catch (Exception e3) {
                    try {
                        CFG.exceptionStack(e3);
                    } catch (Exception e4) {
                        CFG.exceptionStack(e4);
                    }
                    Renderer.oSBBorder.end();
                    Renderer.oSBBorder.begin();
                    drawToast(spriteBatch);
                }
                try {
                    Renderer.oSBBorder.end();
                    Renderer.oSBBorder.begin();
                } catch (Exception e5) {
                    CFG.exceptionStack(e5);
                }
            }
            drawToast(spriteBatch);
        } catch (Exception e6) {
            CFG.exceptionStack(e6);
        }
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, int i3) {
        try {
            for (int size = this.menus.get(i).size() - 1; size >= 0; size--) {
                try {
                    if (this.menus.get(i).get(this.orderOfMenu.get(i).get(size).intValue()).getVisible()) {
                        this.menus.get(i).get(this.orderOfMenu.get(i).get(size).intValue()).draw(spriteBatch, i2, i3, !this.dialogMenu.getVisible() && this.orderOfMenu.get(i).get(size).intValue() == this.activeSliderMenuID, getTitleStatus(i, size));
                        Renderer.clearUnclearedScissors(spriteBatch);
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
        try {
            if (Game.hoverManager.hoverActiveSliderMenuID >= 0 && Game.hoverManager.hoverActiveMenuElementID >= 0) {
                Game.hoverManager.updateElementHover_Animation();
                getActiveMenu().get(Game.hoverManager.hoverActiveSliderMenuID).drawHover(spriteBatch, i2, 0, Game.hoverManager.hoverActiveMenuElementID);
            } else if (Game.provinceHover_Informations != null) {
                Game.hoverManager.updateElementHover_Animation();
                Game.provinceHover_Informations.drawProvinceInfo(spriteBatch, Touch.getMousePosX() + Renderer.getHover_ExtraPosX(), Touch.getMousePosY() + Renderer.getHover_ExtraPosY());
            }
            if (this.colorPicker.getVisible()) {
                this.colorPicker.draw(spriteBatch, i2);
            }
            if (this.dialogMenu.getVisible()) {
                this.dialogMenu.draw(spriteBatch, i2, i3, true, Status.DEFAULT);
            }
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
    }

    public final void drawToast(SpriteBatch spriteBatch) {
        for (int i = this.iToastSize - 1; i >= 0; i--) {
            if (!this.lToast.get(i).inView) {
                this.lToast.remove(i);
                this.iToastSize = this.lToast.size();
            }
        }
        int i2 = 0;
        for (int i3 = this.iToastSize - 1; i3 >= 0; i3--) {
            this.lToast.get(i3).draw(spriteBatch, 0, i2);
            if (this.lToast.get(i3).iPosX == -1) {
                i2 += this.lToast.get(i3).iHeight + CFG.PADDING;
            }
        }
    }

    public final Menu editorGameCivsEditGroup() {
        return this.menus.get(this.EDITOR_GAMECIVS_EDIT).get(this.EDITOR_GAMECIVS_EDIT_GROUP);
    }

    public final Menu editorGameCivsEditReligion() {
        return this.menus.get(this.EDITOR_GAMECIVS_EDIT).get(this.EDITOR_GAMECIVS_EDIT_RELIGION);
    }

    public final List<Menu> getActiveMenu() {
        try {
            return this.menus.get(this.viewID);
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return this.menus.get(0);
        }
    }

    public final MenuElement getActiveMenuElement() {
        try {
            try {
                return getActiveMenu().get(this.activeSliderMenuID).getMenuElement(this.activeMenuElementID);
            } catch (IndexOutOfBoundsException e) {
                CFG.exceptionStack(e);
                return this.menus.get(0).get(0).getMenuElement(0);
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
            return new Button();
        }
    }

    public final int getActiveMenuElementID() {
        return this.activeMenuElementID;
    }

    public final int getActiveOrder(int i) {
        try {
            return this.orderOfMenu.get(this.viewID).get(i).intValue();
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return 0;
        }
    }

    public final int getActiveSliderMenuID() {
        return this.activeSliderMenuID;
    }

    public final boolean getCloseMenuMode() {
        return this.closeMenuMode;
    }

    public final ColorPicker getColorPicker() {
        return this.colorPicker;
    }

    public final boolean getColorPickerMode() {
        return this.colorPickerMode;
    }

    public final int getFromViewID() {
        return this.fromViewID;
    }

    public final boolean getInCloudsMenu() {
        return this.viewID == this.CLOUDS_MENU;
    }

    public final boolean getInEditorCreateCiv() {
        return this.viewID == this.CREATE_CIV;
    }

    public final boolean getInEditorFormableCiv() {
        return this.viewID == this.EDITOR_MAPS_EDIT_FORMABLE_CIV;
    }

    public final boolean getInEditorGameCivsEdit() {
        return this.viewID == this.EDITOR_GAMECIVS_EDIT;
    }

    public final boolean getInEditorSelectProvinces() {
        return this.viewID == this.EDITOR_SELECT_PROVINCES;
    }

    public final boolean getInGame() {
        return this.viewID == this.IN_GAME || getInGameHideUI();
    }

    public final boolean getInGameHideUI() {
        return this.viewID == this.IN_GAME_HIDE_UI;
    }

    public final boolean getInGameLegacies() {
        return this.viewID == this.IN_GAME_LEGACIES;
    }

    public final boolean getInGameLost() {
        return this.viewID == this.GAME_LOST;
    }

    public final void getInGame_Civ_updateLanguage() {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).updateLanguage();
    }

    public final int getInGame_MapModesPosY() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_MAPMODES).getPosY();
    }

    public final void getInGame_ProvinceInfo_updateLanguage() {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_INFO).updateLanguage();
    }

    public final void getInGame_RecruitSameType_UpdateLanguage() {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY).updateLanguage();
    }

    public final boolean getInInitGameMenu() {
        return this.viewID == this.INIT_GAME_MENU;
    }

    public final boolean getInInitGame_Menus() {
        int i = this.viewID;
        return i == this.INIT_GAME_MENU_SELECT_MAP || i == this.INIT_GAME_MENU_LANGUAGE;
    }

    public final boolean getInLoadGamesList() {
        return this.viewID == this.LOAD_GAMES_LIST;
    }

    public final boolean getInLoadScenario() {
        return this.viewID == this.LOAD_STUFF;
    }

    public final boolean getInMainMenu() {
        int i = this.viewID;
        return i == this.MAINMENU || i == this.MAINMENU_STATS;
    }

    public final boolean getInMapEditorArmyPosition() {
        return this.viewID == this.EDITOR_MAPS_EDIT_ARMY_POSITION;
    }

    public final boolean getInMapEditorContinents() {
        return this.viewID == this.EDITOR_MAPS_EDIT_CONTINENTS;
    }

    public final boolean getInMapEditorEconomy() {
        return this.viewID == this.EDITOR_MAPS_EDIT_ECONOMY;
    }

    public final boolean getInMapEditorGeoRegions() {
        return this.viewID == this.EDITOR_MAPS_EDIT_GEO_REGION;
    }

    public final boolean getInMapEditorGrowthRate() {
        return this.viewID == this.EDITOR_MAPS_EDIT_GROWTH_RATE;
    }

    public final boolean getInMapEditorLines() {
        return this.viewID == this.EDITOR_MAPS_EDIT_LINES;
    }

    public final boolean getInMapEditorOptimizationRegions() {
        return this.viewID == this.EDITOR_MAPS_EDIT_OPTIMIZATION_REGIONS;
    }

    public final boolean getInMapEditorPortPosition() {
        return this.viewID == this.EDITOR_MAPS_EDIT_PORT_POSITION;
    }

    public final boolean getInMapEditorProvinceConnections() {
        return this.viewID == this.EDITOR_MAPS_EDIT_PROVINCE_CONNECTIONS;
    }

    public final boolean getInMapEditorProvinceNamePoints() {
        return this.viewID == this.EDITOR_MAPS_EDIT_PROVINCE_NAMES;
    }

    public final boolean getInMapEditorResource() {
        return this.viewID == this.EDITOR_MAPS_EDIT_RESOURCE;
    }

    public final boolean getInMapEditorSeaProvinces() {
        return this.viewID == this.EDITOR_MAPS_EDIT_SEA_PROVINCES;
    }

    public final boolean getInMapEditorTerrain() {
        return this.viewID == this.EDITOR_MAPS_EDIT_TERRAIN;
    }

    public final boolean getInMapEditorWaves() {
        return this.viewID == this.EDITOR_MAPS_EDIT_WAVES;
    }

    public final boolean getInNewGame() {
        return this.viewID == this.NEW_GAME;
    }

    public final boolean getInNewGame_Scenarios() {
        return this.viewID == this.SCENARIOS;
    }

    public final boolean getInNewGame_ScenariosCampaign() {
        return this.viewID == this.SCENARIOS_CAMPAIGN;
    }

    public final boolean getInPrintMap() {
        return this.viewID == this.PRINT_A_MAP;
    }

    public final boolean getInScenarioAssign() {
        return this.viewID == this.SCENARIO_ASSIGN;
    }

    public final boolean getInScenarioAssignInGame() {
        return this.viewID == this.SCENARIO_ASSIGN_IN_GAME;
    }

    public final boolean getInScenarioCivilizations() {
        return this.viewID == this.SCENARIO_CIVILIZATIONS;
    }

    public final boolean getInScenarioCores() {
        return this.viewID == this.SCENARIO_CORES;
    }

    public final boolean getInScenarioEditorAlliances() {
        return this.viewID == this.SCENARIO_ALLIANCES;
    }

    public final boolean getInScenarioEditorArmies() {
        return this.viewID == this.SCENARIO_ARMIES;
    }

    public final boolean getInScenarioEditorBuildings() {
        return this.viewID == this.SCENARIO_BUILDINGS;
    }

    public final boolean getInScenarioEditorDeclareWar() {
        return this.viewID == this.SCENARIO_DECLARE_WAR;
    }

    public final boolean getInScenarioEditorDefensive() {
        return this.viewID == this.SCENARIO_DEFENSIVE;
    }

    public final boolean getInScenarioEditorGovernment() {
        return this.viewID == this.SCENARIO_GOVERNMENT;
    }

    public final boolean getInScenarioEditorGuarantee() {
        return this.viewID == this.SCENARIO_GUARANTEE;
    }

    public final boolean getInScenarioEditorMilitaryAccess() {
        return this.viewID == this.SCENARIO_MILITARY_ACCESS;
    }

    public final boolean getInScenarioEditorNonAggression() {
        return this.viewID == this.SCENARIO_NON_AGGRESSION;
    }

    public final boolean getInScenarioEditorRelations() {
        return this.viewID == this.SCENARIO_RELATIONS;
    }

    public final boolean getInScenarioEditorTechnologiesCivs() {
        return this.viewID == this.SCENARIO_TECHNOLOGIES_CIVS;
    }

    public final boolean getInScenarioEditorTruces() {
        return this.viewID == this.SCENARIO_TRUCES;
    }

    public final boolean getInScenarioEditorVassals() {
        return this.viewID == this.SCENARIO_VASSALS;
    }

    public final boolean getInScenarioEditor_CreateAllianceEdit() {
        return this.viewID == this.SCENARIO_CREATE_ALLIANCE_EDIT;
    }

    public final boolean getInScenarioReligion() {
        return this.viewID == this.SCENARIO_RELIGION;
    }

    public final boolean getInScenarioSettings() {
        return this.viewID == this.SCENARIO_SETTINGS;
    }

    public final boolean getInScenarioWasteland() {
        return this.viewID == this.SCENARIO_WASTELAND;
    }

    public final boolean getInScenarioWastelandContinents() {
        return this.viewID == this.SCENARIO_WASTELAND_CONTINENTS;
    }

    public final boolean getInScenariosList() {
        return this.viewID == this.EDITOR_SCENARIOS_LIST;
    }

    public final boolean getInScenarios_NewGame() {
        return this.viewID == this.SCENARIOS;
    }

    public final boolean getInSettingsMenu() {
        return this.viewID == this.SETTINGS;
    }

    public final MenuElement getMenuElement(int i, int i2) {
        return getActiveMenu().get(i).getMenuElement(i2);
    }

    public final boolean getMenuResizeLEFT() {
        return this.menuResizeLEFT;
    }

    public final boolean getMenuResizeMode() {
        return this.menuResizeMode;
    }

    public final boolean getMenu_MoveInnerElements() {
        return this.menu_MoveInnerElements;
    }

    public final boolean getMoveMenu_ByTitleMode() {
        return this.menu_MoveByTitleMode;
    }

    public final boolean getTextScrollableMode() {
        return this.textScrollableMode;
    }

    public final Status getTitleStatus(int i, int i2) {
        try {
            if (this.fromViewID < 0) {
                if (this.menu_MoveByTitleMode) {
                    if (this.activeSliderMenuID == this.orderOfMenu.get(i).get(i2).intValue()) {
                        return Status.ACTIVE;
                    }
                } else if (Game.hoverManager.hoverActiveMenuTitleID == this.orderOfMenu.get(i).get(i2).intValue()) {
                    return Game.hoverManager.hoverActiveMenuTitleCloseHovered ? Status.CLOSE_HOVERED : Status.HOVERED;
                }
            }
        } catch (Exception unused) {
        }
        return Status.DEFAULT;
    }

    public final int getViewID() {
        return this.viewID;
    }

    public final int getViewID(View view) {
        try {
            switch (AnonymousClass2.$SwitchMap$aoc$kingdoms$lukasz$menu$View[view.ordinal()]) {
                case 1:
                    if (this.INIT_GAME_MENU == -1) {
                        this.INIT_GAME_MENU = addMenu(new InitGame());
                    }
                    return this.INIT_GAME_MENU;
                case 2:
                    if (this.INIT_GAME_MENU_SELECT_MAP == -1) {
                        if (CFG.isDesktop()) {
                            this.INIT_GAME_MENU_SELECT_MAP = addMenu(new Init_SelectMap());
                        } else {
                            this.INIT_GAME_MENU_SELECT_MAP = addMenu(new Init_SelectMap2());
                        }
                    }
                    return this.INIT_GAME_MENU_SELECT_MAP;
                case 3:
                    if (this.INIT_GAME_MENU_LANGUAGE == -1) {
                        this.INIT_GAME_MENU_LANGUAGE = addMenu(new Init_SelectLanguage());
                    }
                    return this.INIT_GAME_MENU_LANGUAGE;
                case 4:
                    int i = this.LOAD_STUFF;
                    if (i == -1) {
                        this.LOAD_STUFF = addMenu(new Menu_LoadScenario());
                    } else {
                        this.menus.get(i).set(0, new Menu_LoadScenario());
                    }
                    return this.LOAD_STUFF;
                case 5:
                    int i2 = this.LOAD_STUFF;
                    if (i2 == -1) {
                        this.LOAD_STUFF = addMenu(new Menu_LoadSaveScenario());
                    } else {
                        this.menus.get(i2).set(0, new Menu_LoadSaveScenario());
                    }
                    return this.LOAD_STUFF;
                case 6:
                    int i3 = this.LOAD_STUFF;
                    if (i3 == -1) {
                        this.LOAD_STUFF = addMenu(new Menu_LoadSavingGame());
                    } else {
                        this.menus.get(i3).set(0, new Menu_LoadSavingGame());
                    }
                    return this.LOAD_STUFF;
                case 7:
                    int i4 = this.LOAD_STUFF;
                    if (i4 == -1) {
                        this.LOAD_STUFF = addMenu(new Menu_LoadSavedGame());
                    } else {
                        this.menus.get(i4).set(0, new Menu_LoadSavedGame());
                    }
                    return this.LOAD_STUFF;
                case 8:
                    int i5 = this.LOAD_STUFF;
                    if (i5 == -1) {
                        this.LOAD_STUFF = addMenu(new Menu_Load_Workshop());
                    } else {
                        this.menus.get(i5).set(0, new Menu_Load_Workshop());
                    }
                    return this.LOAD_STUFF;
                case 9:
                    int i6 = this.MAINMENU;
                    if (i6 == -1) {
                        this.MAINMENU = addMenu(new MainMenu());
                    } else {
                        this.menus.get(i6).get(0).setVisible(false);
                        this.menus.get(this.MAINMENU).set(0, new MainMenu());
                    }
                    return this.MAINMENU;
                case 10:
                    int i7 = this.MAINMENU_STATS;
                    if (i7 == -1) {
                        int iAddMenu = addMenu(new MainMenu_Stats());
                        this.MAINMENU_STATS = iAddMenu;
                        addNextMenuToView(iAddMenu, new MainMenu_StatsEmpty());
                    } else {
                        this.menus.get(i7).get(0).setVisible(false);
                        this.menus.get(this.MAINMENU_STATS).set(0, new MainMenu_Stats());
                    }
                    return this.MAINMENU_STATS;
                case 11:
                    int i8 = this.LOAD_GAMES_LIST;
                    if (i8 == -1) {
                        this.LOAD_GAMES_LIST = addMenu(new Menu_LoadGames_List());
                    } else {
                        this.menus.get(i8).get(0).setVisible(false);
                        this.menus.get(this.LOAD_GAMES_LIST).set(0, new Menu_LoadGames_List());
                    }
                    return this.LOAD_GAMES_LIST;
                case 12:
                    if (this.NEW_GAME == -1) {
                        int iAddMenu2 = addMenu(new NewGame());
                        this.NEW_GAME = iAddMenu2;
                        this.NEW_GAME_CIV = addNextMenuToView(iAddMenu2, new NewGameCiv());
                        this.NEW_GAME_SETTINGS = addNextMenuToView(this.NEW_GAME, new NewGame_Settings());
                        this.NEW_GAME_FLAGS = addNextMenuToView(this.NEW_GAME, new NewGameFlags());
                    } else {
                        NewGame.lTime = CFG.currentTimeMillis;
                        rebuildNewGameCiv();
                        this.menus.get(this.NEW_GAME).set(this.NEW_GAME_FLAGS, new NewGameFlags());
                    }
                    return this.NEW_GAME;
                case 13:
                    int i9 = this.GAME_LOST;
                    if (i9 == -1) {
                        this.GAME_LOST = addMenu(new InGame_GameLost());
                    } else {
                        this.menus.get(i9).set(0, new InGame_GameLost());
                    }
                    return this.GAME_LOST;
                case 14:
                    int i10 = this.CLOUDS_MENU;
                    if (i10 == -1) {
                        this.CLOUDS_MENU = addMenu(new CloudsMenu());
                    } else {
                        this.menus.get(i10).set(0, new CloudsMenu());
                    }
                    return this.CLOUDS_MENU;
                case 15:
                    int i11 = this.WORKSHOP;
                    if (i11 == -1) {
                        this.WORKSHOP = addMenu(new WorkshopMenu());
                    } else {
                        this.menus.get(i11).set(0, new WorkshopMenu());
                    }
                    return this.WORKSHOP;
                case 16:
                    int i12 = this.MANAGE_MODS;
                    if (i12 == -1) {
                        this.MANAGE_MODS = addMenu(new ManageMods());
                    } else {
                        this.menus.get(i12).set(0, new ManageMods());
                    }
                    return this.MANAGE_MODS;
                case 17:
                    int i13 = this.SCENARIOS;
                    if (i13 == -1) {
                        this.SCENARIOS = addMenu(new Scenarios());
                        if (Scenarios.SCENARIOS_DEFAULT_MODE) {
                            addNextMenuToView(this.SCENARIOS, new ScenariosList_NewGame());
                        } else {
                            addNextMenuToView(this.SCENARIOS, new ScenariosList_NewGame_Buttons());
                        }
                    } else {
                        this.menus.get(i13).set(0, new Scenarios());
                        if (Scenarios.SCENARIOS_DEFAULT_MODE) {
                            this.menus.get(this.SCENARIOS).set(1, new ScenariosList_NewGame());
                        } else {
                            this.menus.get(this.SCENARIOS).set(1, new ScenariosList_NewGame_Buttons());
                        }
                    }
                    return this.SCENARIOS;
                case 18:
                    int i14 = this.SCENARIOS_CAMPAIGN;
                    if (i14 == -1) {
                        this.SCENARIOS_CAMPAIGN = addMenu(new Scenarios_Campaign_Vertical());
                        if (Scenarios.SCENARIOS_DEFAULT_MODE) {
                            addNextMenuToView(this.SCENARIOS_CAMPAIGN, new Scenarios_Campaign_VerticalScenarios());
                        } else {
                            addNextMenuToView(this.SCENARIOS_CAMPAIGN, new Scenarios_Campaign_Buttons());
                        }
                    } else {
                        this.menus.get(i14).set(0, new Scenarios_Campaign_Vertical());
                        if (Scenarios.SCENARIOS_DEFAULT_MODE) {
                            this.menus.get(this.SCENARIOS_CAMPAIGN).set(1, new Scenarios_Campaign_VerticalScenarios());
                        } else {
                            this.menus.get(this.SCENARIOS_CAMPAIGN).set(1, new Scenarios_Campaign_Buttons());
                        }
                    }
                    return this.SCENARIOS_CAMPAIGN;
                case 19:
                    int i15 = this.SETTINGS;
                    if (i15 == -1) {
                        int iAddMenu3 = addMenu(new Settings_Menu());
                        this.SETTINGS = iAddMenu3;
                        addNextMenuToView(iAddMenu3, new EmptyMenu());
                    } else {
                        this.menus.get(i15).set(0, new Settings_Menu());
                        this.menus.get(this.SETTINGS).set(1, new EmptyMenu());
                    }
                    return this.SETTINGS;
                case 20:
                    int i16 = this.SETTINGS_RESOLUTION;
                    if (i16 == -1) {
                        int iAddMenu4 = addMenu(new Settings_Resolution());
                        this.SETTINGS_RESOLUTION = iAddMenu4;
                        addNextMenuToView(iAddMenu4, new EmptyMenu());
                    } else {
                        this.menus.get(i16).set(0, new Settings_Resolution());
                        this.menus.get(this.SETTINGS_RESOLUTION).set(1, new EmptyMenu());
                    }
                    return this.SETTINGS_RESOLUTION;
                case 21:
                    int i17 = this.SETTINGS_UI;
                    if (i17 == -1) {
                        int iAddMenu5 = addMenu(new Settings_UIScale());
                        this.SETTINGS_UI = iAddMenu5;
                        addNextMenuToView(iAddMenu5, new EmptyMenu());
                    } else {
                        this.menus.get(i17).set(0, new Settings_UIScale());
                        this.menus.get(this.SETTINGS_UI).set(1, new EmptyMenu());
                    }
                    return this.SETTINGS_UI;
                case 22:
                    if (this.IN_GAME_LEGACIES == -1) {
                        int iAddMenu6 = addMenu(new InGame_Legacies());
                        this.IN_GAME_LEGACIES = iAddMenu6;
                        this.IN_GAME_LEGACIES_EMPTY = addNextMenuToView(iAddMenu6, new InGame_LegaciesEmpty());
                        this.IN_GAME_LEGACIES_INFO = addNextMenuToView(this.IN_GAME_LEGACIES, new EmptyMenu());
                    } else {
                        rebuildInGame_Legacies();
                    }
                    return this.IN_GAME_LEGACIES;
                case 23:
                    int i18 = this.IN_GAME_HIDE_UI;
                    if (i18 == -1) {
                        this.IN_GAME_HIDE_UI = addMenu(new InGame_HideUI());
                    } else {
                        this.menus.get(i18).set(0, new InGame_HideUI());
                    }
                    return this.IN_GAME_HIDE_UI;
                case 24:
                    int i19 = this.IN_GAME;
                    if (i19 == -1) {
                        int iAddMenu7 = addMenu(new InGame());
                        this.IN_GAME = iAddMenu7;
                        this.IN_GAME_MAPMODES = addNextMenuToView(iAddMenu7, new InGame_MapModes());
                        this.IN_GAME_CIV_BONUSES = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_PROVINCE_ARMY = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_PROVINCE_ARMY_UNITS = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_PROVINCE_ARMY_TOP_BAR = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_PROVINCE_ARMY_MOVE = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_ESCAPE = addNextMenuToView(this.IN_GAME, new InGame_Escape());
                        this.IN_GAME_ESCAPE_EMPTY = addNextMenuToView(this.IN_GAME, new InGame_EscapeEmpty());
                        this.IN_GAME_RECRUIT_ARMY = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_BUILDINGS = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_BUILDINGS_GROUP_0 = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_BUILDINGS_GROUP_1 = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_BUILDINGS_GROUP_2 = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_BUILDINGS_GROUP_3 = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_GOODS = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_GOODS_EMPTY = addNextMenuToView(this.IN_GAME, new InGame_GoodsEmpty());
                        this.IN_GAME_GOODS_CIV = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_WONDER = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_INFO = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_PROVINCE_INFO = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_PROVINCE_INFO_BUILDINGS = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_PROVINCE_INFO_ARMY = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_REORGANIZE_UNITS = addNextMenuToView(this.IN_GAME, new InGame_ReorganizeUnits());
                        this.IN_GAME_DISBAND_UNITS = addNextMenuToView(this.IN_GAME, new InGame_Disband());
                        this.IN_GAME_BATTLE = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_BATTLE_ARMY = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_BATTLE_ARMY_DEFENDERS = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_SIEGE = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_WAR = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_PEACE = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_GENERALS = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_GENERAL_RECRUIT = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_ARMIES = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_RIGHT = addNextMenuToView(this.IN_GAME, new InGame_Right());
                        this.IN_GAME_RIGHT_QUEUE = addNextMenuToView(this.IN_GAME, new InGame_RightQueue());
                        this.IN_GAME_NOTIFICATION = addNextMenuToView(this.IN_GAME, new InGame_Notifications());
                        this.IN_GAME_PROVINCE_BONUSES = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_CIV = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_COURT = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_COURT_OPTIONS = addNextMenuToView(this.IN_GAME, new InGame_CourtOptions());
                        this.IN_GAME_COURT_OPTIONS2 = addNextMenuToView(this.IN_GAME, new InGame_CourtOptions2());
                        this.IN_GAME_ADVISOR_RECRUIT = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_CHOOSE_TECHNOLOGY = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_TECHNOLOGY_TREE = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_TECHNOLOGY_TREE_EMPTY = addNextMenuToView(this.IN_GAME, new InGame_TechnologyTreeEmpty());
                        this.IN_GAME_BATTLE_FULL = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_BATTLE_FULL_EMPTY = addNextMenuToView(this.IN_GAME, new InGame_Battle_FullEmpty());
                        this.IN_GAME_NUKES = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_TAKE_LOAN = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_TAKE_LOAN_REPAY = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_CONSOLE = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_SAVE_GAME = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_POP_UP = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_BUDGET = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_EVENT = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_CURRENT_SITUATION = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_MESSAGES = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                        this.IN_GAME_WARS = addNextMenuToView(this.IN_GAME, new EmptyMenu());
                    } else {
                        this.menus.get(i19).set(this.IN_GAME_COURT_OPTIONS2, new InGame_CourtOptions2());
                    }
                    InGame.updateDrawOver();
                    return this.IN_GAME;
                case 25:
                    if (this.EDITOR == -1) {
                        this.EDITOR = addMenu(new Editor());
                    }
                    return this.EDITOR;
                case 26:
                    int i20 = this.EDITOR_GAMECIVS;
                    if (i20 == -1) {
                        int iAddMenu8 = addMenu(new GameCivs());
                        this.EDITOR_GAMECIVS = iAddMenu8;
                        addNextMenuToView(iAddMenu8, new GameCivsAlphabet());
                    } else {
                        this.menus.get(i20).get(0).setVisible(false);
                        this.menus.get(this.EDITOR_GAMECIVS).set(0, new GameCivs());
                        this.menus.get(this.EDITOR_GAMECIVS).set(1, new GameCivsAlphabet());
                    }
                    return this.EDITOR_GAMECIVS;
                case 27:
                    int i21 = this.CREATE_CIV;
                    if (i21 == -1) {
                        int iAddMenu9 = addMenu(new CreateCiv());
                        this.CREATE_CIV = iAddMenu9;
                        this.CREATE_CIV_RELIGION = addNextMenuToView(iAddMenu9, new CreateCivReligion());
                        this.CREATE_CIV_GROUP = addNextMenuToView(this.CREATE_CIV, new CreateCivGroup());
                        this.CREATE_CIV_FLAG = addNextMenuToView(this.CREATE_CIV, new CreateCiv_Flag());
                    } else {
                        this.menus.get(i21).set(0, new CreateCiv());
                        this.menus.get(this.CREATE_CIV).set(this.CREATE_CIV_RELIGION, new CreateCivReligion());
                        this.menus.get(this.CREATE_CIV).set(this.CREATE_CIV_GROUP, new CreateCivGroup());
                        this.menus.get(this.CREATE_CIV).set(this.CREATE_CIV_FLAG, new CreateCiv_Flag());
                    }
                    return this.CREATE_CIV;
                case 28:
                    int i22 = this.EDITOR_GAMECIVS_EDIT;
                    if (i22 == -1) {
                        int iAddMenu10 = addMenu(new GameCivsEdit());
                        this.EDITOR_GAMECIVS_EDIT = iAddMenu10;
                        this.EDITOR_GAMECIVS_EDIT_RELIGION = addNextMenuToView(iAddMenu10, new GameCivsEditReligion());
                        this.EDITOR_GAMECIVS_EDIT_GROUP = addNextMenuToView(this.EDITOR_GAMECIVS_EDIT, new GameCivsEditGroup());
                    } else {
                        this.menus.get(i22).set(0, new GameCivsEdit());
                    }
                    return this.EDITOR_GAMECIVS_EDIT;
                case Input.Keys.A /* 29 */:
                    if (this.EDITOR_MAPS == -1) {
                        this.EDITOR_MAPS = addMenu(new EditorMaps());
                    }
                    return this.EDITOR_MAPS;
                case 30:
                    if (this.EDITOR_MAPS_EDIT == -1) {
                        this.EDITOR_MAPS_EDIT = addMenu(new EditorMapEdit());
                    }
                    return this.EDITOR_MAPS_EDIT;
                case Input.Keys.C /* 31 */:
                    if (this.EDITOR_MAPS_EDIT_PROVINCE_CONNECTIONS == -1) {
                        int iAddMenu11 = addMenu(new EditorMapProvinceConnections());
                        this.EDITOR_MAPS_EDIT_PROVINCE_CONNECTIONS = iAddMenu11;
                        addNextMenuToView(iAddMenu11, new EditorMapProvinceConnectionsList());
                    }
                    return this.EDITOR_MAPS_EDIT_PROVINCE_CONNECTIONS;
                case 32:
                    if (this.EDITOR_MAPS_EDIT_GROWTH_RATE == -1) {
                        int iAddMenu12 = addMenu(new EditorMapGrowthRate());
                        this.EDITOR_MAPS_EDIT_GROWTH_RATE = iAddMenu12;
                        addNextMenuToView(iAddMenu12, new EditorMapGrowthRate_Random());
                    }
                    return this.EDITOR_MAPS_EDIT_GROWTH_RATE;
                case 33:
                    int i23 = this.EDITOR_MAPS_EDIT_FORMABLE_CIVS;
                    if (i23 == -1) {
                        this.EDITOR_MAPS_EDIT_FORMABLE_CIVS = addMenu(new EditorMap_FormableCivs());
                    } else {
                        this.menus.get(i23).set(0, new EditorMap_FormableCivs());
                    }
                    return this.EDITOR_MAPS_EDIT_FORMABLE_CIVS;
                case 34:
                    int i24 = this.EDITOR_MAPS_EDIT_FORMABLE_CIV;
                    if (i24 == -1) {
                        int iAddMenu13 = addMenu(new EditorMap_FormableCiv());
                        this.EDITOR_MAPS_EDIT_FORMABLE_CIV = iAddMenu13;
                        addNextMenuToView(iAddMenu13, new EditorMap_FormableCivClaimants());
                        addNextMenuToView(this.EDITOR_MAPS_EDIT_FORMABLE_CIV, new EditorMap_FormableCivFormable());
                    } else {
                        this.menus.get(i24).set(0, new EditorMap_FormableCiv());
                        this.menus.get(this.EDITOR_MAPS_EDIT_FORMABLE_CIV).set(1, new EditorMap_FormableCivClaimants());
                        this.menus.get(this.EDITOR_MAPS_EDIT_FORMABLE_CIV).set(2, new EditorMap_FormableCivFormable());
                    }
                    return this.EDITOR_MAPS_EDIT_FORMABLE_CIV;
                case 35:
                    int i25 = this.EDITOR_MAPS_EDIT_CIV_SELECT;
                    if (i25 == -1) {
                        this.EDITOR_MAPS_EDIT_CIV_SELECT = addMenu(new EditorMap_CivSelect());
                    } else {
                        this.menus.get(i25).set(0, new EditorMap_CivSelect());
                    }
                    return this.EDITOR_MAPS_EDIT_CIV_SELECT;
                case 36:
                    if (this.EDITOR_MAPS_EDIT_ECONOMY == -1) {
                        int iAddMenu14 = addMenu(new EditorMapEconomy());
                        this.EDITOR_MAPS_EDIT_ECONOMY = iAddMenu14;
                        addNextMenuToView(iAddMenu14, new EditorMapEconomy_Random());
                    }
                    return this.EDITOR_MAPS_EDIT_ECONOMY;
                case 37:
                    if (this.EDITOR_MAPS_EDIT_SEA_PROVINCES == -1) {
                        this.EDITOR_MAPS_EDIT_SEA_PROVINCES = addMenu(new EditorMapSeaProvinces());
                    }
                    return this.EDITOR_MAPS_EDIT_SEA_PROVINCES;
                case 38:
                    if (this.EDITOR_MAPS_EDIT_ARMY_POSITION == -1) {
                        this.EDITOR_MAPS_EDIT_ARMY_POSITION = addMenu(new EditorMapArmyPosition());
                    }
                    return this.EDITOR_MAPS_EDIT_ARMY_POSITION;
                case 39:
                    if (this.EDITOR_MAPS_EDIT_PROVINCE_NAMES == -1) {
                        this.EDITOR_MAPS_EDIT_PROVINCE_NAMES = addMenu(new EditorMapProvinceNamePoints());
                    }
                    return this.EDITOR_MAPS_EDIT_PROVINCE_NAMES;
                case 40:
                    if (this.EDITOR_MAPS_EDIT_LINES == -1) {
                        this.EDITOR_MAPS_EDIT_LINES = addMenu(new EditorMapLines());
                    }
                    return this.EDITOR_MAPS_EDIT_LINES;
                case 41:
                    if (this.EDITOR_MAPS_EDIT_WAVES == -1) {
                        this.EDITOR_MAPS_EDIT_WAVES = addMenu(new EditorMapLinesWaves());
                    }
                    return this.EDITOR_MAPS_EDIT_WAVES;
                case 42:
                    int i26 = this.EDITOR_MAPS_EDIT_SUGGESTED_CIVILIZATIONS;
                    if (i26 == -1) {
                        this.EDITOR_MAPS_EDIT_SUGGESTED_CIVILIZATIONS = addMenu(new EditorMap_GenerateSuggestedCivilizations());
                    } else {
                        this.menus.get(i26).set(0, new EditorMap_GenerateSuggestedCivilizations());
                    }
                    return this.EDITOR_MAPS_EDIT_SUGGESTED_CIVILIZATIONS;
                case 43:
                    int i27 = this.PRINT_A_MAP;
                    if (i27 == -1) {
                        this.PRINT_A_MAP = addMenu(new EditorMap_PrintMap());
                    } else {
                        this.menus.get(i27).set(0, new EditorMap_PrintMap());
                    }
                    return this.PRINT_A_MAP;
                case 44:
                    if (this.EDITOR_MAPS_EDIT_PORT_POSITION == -1) {
                        this.EDITOR_MAPS_EDIT_PORT_POSITION = addMenu(new EditorMapPortPosition());
                    }
                    return this.EDITOR_MAPS_EDIT_PORT_POSITION;
                case 45:
                    if (this.EDITOR_MAPS_EDIT_TERRAIN == -1) {
                        int iAddMenu15 = addMenu(new EditorMapTerrainType());
                        this.EDITOR_MAPS_EDIT_TERRAIN = iAddMenu15;
                        addNextMenuToView(iAddMenu15, new EditorMapTerrainTypeList());
                    }
                    return this.EDITOR_MAPS_EDIT_TERRAIN;
                case 46:
                    if (this.EDITOR_MAPS_EDIT_RESOURCE == -1) {
                        int iAddMenu16 = addMenu(new EditorMapResources());
                        this.EDITOR_MAPS_EDIT_RESOURCE = iAddMenu16;
                        addNextMenuToView(iAddMenu16, new EditorMapResourcesList());
                    }
                    return this.EDITOR_MAPS_EDIT_RESOURCE;
                case 47:
                    if (this.EDITOR_SELECT_PROVINCES == -1) {
                        this.EDITOR_SELECT_PROVINCES = addMenu(new EditorSelectProvinces());
                    }
                    return this.EDITOR_SELECT_PROVINCES;
                case Input.Keys.T /* 48 */:
                    if (this.EDITOR_MAPS_EDIT_CONTINENTS == -1) {
                        int iAddMenu17 = addMenu(new EditorMapContinents());
                        this.EDITOR_MAPS_EDIT_CONTINENTS = iAddMenu17;
                        addNextMenuToView(iAddMenu17, new EditorMapContinentsList());
                    }
                    return this.EDITOR_MAPS_EDIT_CONTINENTS;
                case Input.Keys.U /* 49 */:
                    if (this.EDITOR_MAPS_EDIT_GEO_REGION == -1) {
                        int iAddMenu18 = addMenu(new EditorMapGeoRegions());
                        this.EDITOR_MAPS_EDIT_GEO_REGION = iAddMenu18;
                        addNextMenuToView(iAddMenu18, new EditorMapGeoRegionsList());
                    }
                    return this.EDITOR_MAPS_EDIT_GEO_REGION;
                case Input.Keys.V /* 50 */:
                    if (this.EDITOR_MAPS_EDIT_OPTIMIZATION_REGIONS == -1) {
                        this.EDITOR_MAPS_EDIT_OPTIMIZATION_REGIONS = addMenu(new EditorMapOptimizationRegions());
                    }
                    return this.EDITOR_MAPS_EDIT_OPTIMIZATION_REGIONS;
                case Input.Keys.W /* 51 */:
                    int i28 = this.EDITOR_SCENARIOS_LIST;
                    if (i28 == -1) {
                        this.EDITOR_SCENARIOS_LIST = addMenu(new ScenariosList());
                    } else {
                        this.menus.get(i28).set(0, new ScenariosList());
                    }
                    ScenarioWasteland.lUndo.clear();
                    return this.EDITOR_SCENARIOS_LIST;
                case Input.Keys.X /* 52 */:
                    if (this.SCENARIO_WASTELAND_CONTINENTS == -1) {
                        int iAddMenu19 = addMenu(new ScenarioWastelandContinents());
                        this.SCENARIO_WASTELAND_CONTINENTS = iAddMenu19;
                        addNextMenuToView(iAddMenu19, new ScenarioWastelandContinentsList());
                    }
                    return this.SCENARIO_WASTELAND_CONTINENTS;
                case Input.Keys.Y /* 53 */:
                    if (this.SCENARIO_WASTELAND == -1) {
                        int iAddMenu20 = addMenu(new ScenarioWasteland());
                        this.SCENARIO_WASTELAND = iAddMenu20;
                        addNextMenuToView(iAddMenu20, new ScenarioWastelandOptions());
                    }
                    return this.SCENARIO_WASTELAND;
                case Input.Keys.Z /* 54 */:
                    int i29 = this.SCENARIO_CIVILIZATIONS;
                    if (i29 == -1) {
                        int iAddMenu21 = addMenu(new ScenarioCivilizations());
                        this.SCENARIO_CIVILIZATIONS = iAddMenu21;
                        this.SCENARIO_CIVILIZATIONS_LIST = addNextMenuToView(iAddMenu21, new ScenarioCivilizationsList());
                    } else {
                        this.menus.get(i29).set(this.SCENARIO_CIVILIZATIONS_LIST, new ScenarioCivilizationsList());
                    }
                    try {
                        ProvinceBorderManager.clearProvinceBorder();
                        break;
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                    return this.SCENARIO_CIVILIZATIONS;
                case Input.Keys.COMMA /* 55 */:
                    int i30 = this.SCENARIO_ASSIGN;
                    if (i30 == -1) {
                        int iAddMenu22 = addMenu(new ScenarioAssign());
                        this.SCENARIO_ASSIGN = iAddMenu22;
                        addNextMenuToView(iAddMenu22, new ScenarioAssignList());
                        this.SCENARIO_ASSIGN_CIVS = addNextMenuToView(this.SCENARIO_ASSIGN, new ScenarioAssignCivs());
                    } else {
                        this.menus.get(i30).set(this.SCENARIO_ASSIGN_CIVS, new ScenarioAssignCivs());
                    }
                    return this.SCENARIO_ASSIGN;
                case Input.Keys.PERIOD /* 56 */:
                    int i31 = this.SCENARIO_ASSIGN_IN_GAME;
                    if (i31 == -1) {
                        int iAddMenu23 = addMenu(new ScenarioAssign_InGame());
                        this.SCENARIO_ASSIGN_IN_GAME = iAddMenu23;
                        addNextMenuToView(iAddMenu23, new ScenarioAssign_InGameList());
                        this.SCENARIO_ASSIGN_IN_GAME_CIVS = addNextMenuToView(this.SCENARIO_ASSIGN_IN_GAME, new ScenarioAssign_InGameCivs());
                    } else {
                        this.menus.get(i31).set(this.SCENARIO_ASSIGN_IN_GAME_CIVS, new ScenarioAssign_InGameCivs());
                    }
                    return this.SCENARIO_ASSIGN_IN_GAME;
                case Input.Keys.ALT_LEFT /* 57 */:
                    int i32 = this.SCENARIO_TECHNOLOGIES;
                    if (i32 == -1) {
                        int iAddMenu24 = addMenu(new ScenarioTechnology_Default());
                        this.SCENARIO_TECHNOLOGIES = iAddMenu24;
                        addNextMenuToView(iAddMenu24, new ScenarioTechnology_Default_List());
                    } else {
                        this.menus.get(i32).set(0, new ScenarioTechnology_Default());
                    }
                    return this.SCENARIO_TECHNOLOGIES;
                case Input.Keys.ALT_RIGHT /* 58 */:
                    int i33 = this.SCENARIO_TECHNOLOGIES_CIVS;
                    if (i33 == -1) {
                        int iAddMenu25 = addMenu(new ScenarioTechnologyCivs());
                        this.SCENARIO_TECHNOLOGIES_CIVS = iAddMenu25;
                        addNextMenuToView(iAddMenu25, new ScenarioTechnologyCivs_List());
                    } else {
                        this.menus.get(i33).set(0, new ScenarioTechnologyCivs());
                        this.menus.get(this.SCENARIO_TECHNOLOGIES_CIVS).set(1, new ScenarioTechnologyCivs_List());
                    }
                    return this.SCENARIO_TECHNOLOGIES_CIVS;
                case Input.Keys.SHIFT_LEFT /* 59 */:
                    if (this.SCENARIO_ARMIES == -1) {
                        int iAddMenu26 = addMenu(new ScenarioArmies());
                        this.SCENARIO_ARMIES = iAddMenu26;
                        addNextMenuToView(iAddMenu26, new ScenarioArmies_List());
                    }
                    return this.SCENARIO_ARMIES;
                case 60:
                    int i34 = this.SCENARIO_POPULATION;
                    if (i34 == -1) {
                        int iAddMenu27 = addMenu(new ScenarioPopulation());
                        this.SCENARIO_POPULATION = iAddMenu27;
                        addNextMenuToView(iAddMenu27, new ScenarioPopulation_List());
                    } else {
                        this.menus.get(i34).set(1, new ScenarioPopulation_List());
                    }
                    return this.SCENARIO_POPULATION;
                case Input.Keys.TAB /* 61 */:
                    int i35 = this.SCENARIO_ECONOMY;
                    if (i35 == -1) {
                        int iAddMenu28 = addMenu(new ScenarioEconomy());
                        this.SCENARIO_ECONOMY = iAddMenu28;
                        addNextMenuToView(iAddMenu28, new ScenarioEconomy_List());
                    } else {
                        this.menus.get(i35).set(0, new ScenarioEconomy());
                        this.menus.get(this.SCENARIO_ECONOMY).set(1, new ScenarioEconomy_List());
                    }
                    return this.SCENARIO_ECONOMY;
                case Input.Keys.SPACE /* 62 */:
                    int i36 = this.SCENARIO_GOVERNMENT;
                    if (i36 == -1) {
                        int iAddMenu29 = addMenu(new ScenarioGovernment());
                        this.SCENARIO_GOVERNMENT = iAddMenu29;
                        addNextMenuToView(iAddMenu29, new ScenarioGovernment_List());
                    } else {
                        this.menus.get(i36).set(0, new ScenarioGovernment());
                        this.menus.get(this.SCENARIO_GOVERNMENT).set(1, new ScenarioGovernment_List());
                    }
                    return this.SCENARIO_GOVERNMENT;
                case 63:
                    int i37 = this.SCENARIO_BUILDINGS;
                    if (i37 == -1) {
                        int iAddMenu30 = addMenu(new ScenarioBuildings());
                        this.SCENARIO_BUILDINGS = iAddMenu30;
                        addNextMenuToView(iAddMenu30, new ScenarioBuildings_List());
                    } else {
                        this.menus.get(i37).set(1, new ScenarioBuildings_List());
                    }
                    return this.SCENARIO_BUILDINGS;
                case 64:
                    int i38 = this.SCENARIO_CORES;
                    if (i38 == -1) {
                        int iAddMenu31 = addMenu(new ScenarioCores());
                        this.SCENARIO_CORES = iAddMenu31;
                        this.SCENARIO_CORES_LIST = addNextMenuToView(iAddMenu31, new ScenarioCores_List());
                        this.SCENARIO_CORES_LIST_IN_PROVINCE = addNextMenuToView(this.SCENARIO_CORES, new ScenarioCores_InProvinces());
                    } else {
                        this.menus.get(i38).set(this.SCENARIO_CORES_LIST, new ScenarioCores_List());
                        this.menus.get(this.SCENARIO_CORES).set(this.SCENARIO_CORES_LIST_IN_PROVINCE, new ScenarioCores_InProvinces());
                    }
                    return this.SCENARIO_CORES;
                case Input.Keys.ENVELOPE /* 65 */:
                    int i39 = this.SCENARIO_RELIGION;
                    if (i39 == -1) {
                        int iAddMenu32 = addMenu(new ScenarioReligion());
                        this.SCENARIO_RELIGION = iAddMenu32;
                        this.SCENARIO_RELIGION_LIST = addNextMenuToView(iAddMenu32, new ScenarioReligion_List());
                    } else {
                        this.menus.get(i39).set(this.SCENARIO_RELIGION_LIST, new ScenarioReligion_List());
                    }
                    return this.SCENARIO_RELIGION;
                case Input.Keys.ENTER /* 66 */:
                    int i40 = this.SCENARIO_RELATIONS;
                    if (i40 == -1) {
                        int iAddMenu33 = addMenu(new ScenarioRelations());
                        this.SCENARIO_RELATIONS = iAddMenu33;
                        addNextMenuToView(iAddMenu33, new ScenarioRelationsList());
                    } else {
                        this.menus.get(i40).set(1, new ScenarioRelationsList());
                    }
                    return this.SCENARIO_RELATIONS;
                case 67:
                    int i41 = this.SCENARIO_ALLIANCES;
                    if (i41 == -1) {
                        int iAddMenu34 = addMenu(new ScenarioAlliances());
                        this.SCENARIO_ALLIANCES = iAddMenu34;
                        addNextMenuToView(iAddMenu34, new ScenarioAlliancesList());
                    } else {
                        this.menus.get(i41).set(1, new ScenarioAlliancesList());
                    }
                    return this.SCENARIO_ALLIANCES;
                case 68:
                    int i42 = this.SCENARIO_VASSALS;
                    if (i42 == -1) {
                        int iAddMenu35 = addMenu(new ScenarioVassals());
                        this.SCENARIO_VASSALS = iAddMenu35;
                        addNextMenuToView(iAddMenu35, new ScenarioVassalsList());
                    } else {
                        this.menus.get(i42).set(1, new ScenarioVassalsList());
                    }
                    return this.SCENARIO_VASSALS;
                case Input.Keys.MINUS /* 69 */:
                    int i43 = this.SCENARIO_TRUCES;
                    if (i43 == -1) {
                        int iAddMenu36 = addMenu(new ScenarioTruces());
                        this.SCENARIO_TRUCES = iAddMenu36;
                        addNextMenuToView(iAddMenu36, new ScenarioTrucesList());
                    } else {
                        this.menus.get(i43).set(1, new ScenarioTrucesList());
                    }
                    return this.SCENARIO_TRUCES;
                case Input.Keys.EQUALS /* 70 */:
                    int i44 = this.SCENARIO_DECLARE_WAR;
                    if (i44 == -1) {
                        int iAddMenu37 = addMenu(new ScenarioDeclareWar());
                        this.SCENARIO_DECLARE_WAR = iAddMenu37;
                        addNextMenuToView(iAddMenu37, new ScenarioDeclareWarList());
                    } else {
                        this.menus.get(i44).set(1, new ScenarioDeclareWarList());
                    }
                    return this.SCENARIO_DECLARE_WAR;
                case Input.Keys.LEFT_BRACKET /* 71 */:
                    int i45 = this.SCENARIO_NON_AGGRESSION;
                    if (i45 == -1) {
                        int iAddMenu38 = addMenu(new ScenarioNonAggression());
                        this.SCENARIO_NON_AGGRESSION = iAddMenu38;
                        addNextMenuToView(iAddMenu38, new ScenarioNonAggressionList());
                    } else {
                        this.menus.get(i45).set(1, new ScenarioNonAggressionList());
                    }
                    return this.SCENARIO_NON_AGGRESSION;
                case Input.Keys.RIGHT_BRACKET /* 72 */:
                    int i46 = this.SCENARIO_MILITARY_ACCESS;
                    if (i46 == -1) {
                        int iAddMenu39 = addMenu(new ScenarioMilitaryAccess());
                        this.SCENARIO_MILITARY_ACCESS = iAddMenu39;
                        addNextMenuToView(iAddMenu39, new ScenarioMilitaryAccessList());
                    } else {
                        this.menus.get(i46).set(1, new ScenarioMilitaryAccessList());
                    }
                    return this.SCENARIO_MILITARY_ACCESS;
                case Input.Keys.BACKSLASH /* 73 */:
                    int i47 = this.SCENARIO_CREATE_ALLIANCE;
                    if (i47 == -1) {
                        int iAddMenu40 = addMenu(new ScenarioCreateAlliance_Alliances());
                        this.SCENARIO_CREATE_ALLIANCE = iAddMenu40;
                        addNextMenuToView(iAddMenu40, new ScenarioCreateAlliance_AlliancesList());
                    } else {
                        this.menus.get(i47).set(1, new ScenarioCreateAlliance_AlliancesList());
                    }
                    return this.SCENARIO_CREATE_ALLIANCE;
                case Input.Keys.SEMICOLON /* 74 */:
                    int i48 = this.SCENARIO_CREATE_ALLIANCE_EDIT;
                    if (i48 == -1) {
                        int iAddMenu41 = addMenu(new ScenarioCreateAlliance());
                        this.SCENARIO_CREATE_ALLIANCE_EDIT = iAddMenu41;
                        addNextMenuToView(iAddMenu41, new ScenarioCreateAllianceList());
                    } else {
                        this.menus.get(i48).set(1, new ScenarioCreateAllianceList());
                    }
                    return this.SCENARIO_CREATE_ALLIANCE_EDIT;
                case Input.Keys.APOSTROPHE /* 75 */:
                    int i49 = this.SCENARIO_DEFENSIVE;
                    if (i49 == -1) {
                        int iAddMenu42 = addMenu(new ScenarioDefensive());
                        this.SCENARIO_DEFENSIVE = iAddMenu42;
                        addNextMenuToView(iAddMenu42, new ScenarioDefensiveList());
                    } else {
                        this.menus.get(i49).set(1, new ScenarioDefensiveList());
                    }
                    return this.SCENARIO_DEFENSIVE;
                case Input.Keys.SLASH /* 76 */:
                    int i50 = this.SCENARIO_GUARANTEE;
                    if (i50 == -1) {
                        int iAddMenu43 = addMenu(new ScenarioGuarantee());
                        this.SCENARIO_GUARANTEE = iAddMenu43;
                        addNextMenuToView(iAddMenu43, new ScenarioGuaranteeList());
                    } else {
                        this.menus.get(i50).set(1, new ScenarioGuaranteeList());
                    }
                    return this.SCENARIO_GUARANTEE;
                case Input.Keys.AT /* 77 */:
                    int i51 = this.SCENARIO_PREVIEW;
                    if (i51 == -1) {
                        this.SCENARIO_PREVIEW = addMenu(new ScenarioGeneratePreview());
                    } else {
                        this.menus.get(i51).set(0, new ScenarioGeneratePreview());
                    }
                    return this.SCENARIO_PREVIEW;
                case Input.Keys.NUM /* 78 */:
                    int i52 = this.SCENARIO_SETTINGS;
                    if (i52 == -1) {
                        int iAddMenu44 = addMenu(new ScenarioSettings());
                        this.SCENARIO_SETTINGS = iAddMenu44;
                        this.SCENARIO_CALENDAR = addNextMenuToView(iAddMenu44, new Scenario_Calendar(false));
                    } else {
                        this.menus.get(i52).set(0, new ScenarioSettings());
                    }
                    return this.SCENARIO_SETTINGS;
                default:
                    return this.MAINMENU;
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
            return this.MAINMENU;
        }
        CFG.exceptionStack(e2);
        return this.MAINMENU;
    }

    public final boolean getVisibleDeclareWar() {
        return getVisibleInGame_PopUp() && IN_GAME_POP_UP_MENU_ID == IN_GAME_POP_UP_MENU_ID_DECLARE_WAR;
    }

    public final boolean getVisibleFormCiv() {
        return getVisibleInGame_PopUp() && IN_GAME_POP_UP_MENU_ID == IN_GAME_POP_UP_MENU_FORM_CIV;
    }

    public final boolean getVisibleInGame_AdvisorRecruit() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_ADVISOR_RECRUIT).getVisible();
    }

    public final boolean getVisibleInGame_Armies() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_ARMIES).getVisible();
    }

    public final boolean getVisibleInGame_Battle() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE).getVisible();
    }

    public final boolean getVisibleInGame_BattleFull() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_FULL).getVisible();
    }

    public final boolean getVisibleInGame_Budget() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_BUDGET).getVisible();
    }

    public final boolean getVisibleInGame_Buildings() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS).getVisible();
    }

    public final boolean getVisibleInGame_Civ() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).getVisible();
    }

    public final boolean getVisibleInGame_CivBonuses() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV_BONUSES).getVisible();
    }

    public final boolean getVisibleInGame_Console() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_CONSOLE).getVisible();
    }

    public final boolean getVisibleInGame_Court() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getVisible();
    }

    public final boolean getVisibleInGame_CurrentSituation() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).getVisible();
    }

    public final boolean getVisibleInGame_CurrentSituation_Ranking() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).getVisible() && !currentSituationMode;
    }

    public final boolean getVisibleInGame_DisbandArmy() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).getVisible();
    }

    public final boolean getVisibleInGame_Escape() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_ESCAPE).getVisible();
    }

    public final boolean getVisibleInGame_Event() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_EVENT).getVisible();
    }

    public final boolean getVisibleInGame_GeneralRecruit() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_GENERAL_RECRUIT).getVisible();
    }

    public final boolean getVisibleInGame_Generals() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_GENERALS).getVisible();
    }

    public final boolean getVisibleInGame_Goods() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS).getVisible();
    }

    public final boolean getVisibleInGame_GoodsMarket() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS_CIV).getVisible();
    }

    public final boolean getVisibleInGame_Info() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_INFO).getVisible();
    }

    public final boolean getVisibleInGame_Notifications() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_NOTIFICATION).getVisible();
    }

    public final boolean getVisibleInGame_Nukes() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_NUKES).getVisible();
    }

    public final boolean getVisibleInGame_Peace() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_PEACE).getVisible();
    }

    public final boolean getVisibleInGame_PopUp() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getVisible();
    }

    public final boolean getVisibleInGame_ProvinceArmy() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).getVisible();
    }

    public final boolean getVisibleInGame_ProvinceBonuses() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_BONUSES).getVisible();
    }

    public final boolean getVisibleInGame_ProvinceInfo() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_INFO).getVisible();
    }

    public final boolean getVisibleInGame_RecruitArmy() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY).getVisible();
    }

    public final boolean getVisibleInGame_ReorganizeUnits() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).getVisible();
    }

    public final boolean getVisibleInGame_Right() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).getVisible();
    }

    public final boolean getVisibleInGame_SaveGame() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_SAVE_GAME).getVisible();
    }

    public final boolean getVisibleInGame_Siege() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_SIEGE).getVisible();
    }

    public final boolean getVisibleInGame_TakeLoan() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_TAKE_LOAN).getVisible();
    }

    public final boolean getVisibleInGame_TakeLoanRepay() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_TAKE_LOAN_REPAY).getVisible();
    }

    public final boolean getVisibleInGame_TechnologyChoose() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getVisible();
    }

    public final boolean getVisibleInGame_TechnologyTree() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).getVisible();
    }

    public final boolean getVisibleInGame_War() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_WAR).getVisible();
    }

    public final boolean getVisibleInGame_Wonder() {
        return this.menus.get(this.IN_GAME).get(this.IN_GAME_WONDER).getVisible();
    }

    public final boolean getVisibleRevolutions() {
        return getVisibleInGame_PopUp() && IN_GAME_POP_UP_MENU_ID == 45;
    }

    public final boolean getVisibleScenario_Calendar() {
        return this.menus.get(this.SCENARIO_SETTINGS).get(this.SCENARIO_CALENDAR).getVisible();
    }

    public final boolean getVisibleSellProvince() {
        return getVisibleInGame_PopUp() && IN_GAME_POP_UP_MENU_ID == 41;
    }

    public final boolean getVisibleSettingsAudio() {
        return this.menus.get(this.SETTINGS).get(1).getVisible();
    }

    public final boolean getVisible_NewGame_Settings() {
        return this.menus.get(this.NEW_GAME).get(this.NEW_GAME_SETTINGS).getVisible();
    }

    public final boolean getVisible_SpecialAlliance() {
        int i;
        return getVisibleInGame_PopUp() && ((i = IN_GAME_POP_UP_MENU_ID) == 35 || i == 36);
    }

    public final void hideCourtCiv() {
        setVisibleInGame_Court(false);
        setVisibleInGame_Civ(false);
        setVisibleInGame_Budget(false);
    }

    public final void hideInGameMenus() {
        try {
            if (getVisibleInGame_Buildings()) {
                setVisibleInGame_Buildings(false, false);
            }
            if (getVisibleInGame_Court()) {
                setVisibleInGame_Court(false);
            }
            if (getVisibleInGame_Civ()) {
                setVisibleInGame_Civ(false);
            }
            if (getVisibleInGame_Budget()) {
                setVisibleInGame_Budget(false);
            }
            if (getVisibleInGame_CivBonuses()) {
                setVisibleInGame_CivBonuses(false);
            }
            if (getVisibleInGame_Wonder()) {
                setVisibleInGame_Wonder(false);
            }
            if (getVisibleInGame_GeneralRecruit()) {
                setVisibleInGame_GeneralRecruit(false);
            }
            if (getVisibleInGame_AdvisorRecruit()) {
                setVisibleInGame_AdvisorRecruit(false);
            }
            if (getVisibleInGame_RecruitArmy()) {
                setVisibleInGame_RecruitArmy(false);
            }
            if (getVisibleInGame_ProvinceBonuses()) {
                setVisibleInGame_ProvinceBonuses(false, false);
            }
            if (getVisibleInGame_Generals()) {
                setVisibleInGame_Generals(false);
            }
            if (getVisibleInGame_GoodsMarket()) {
                setVisibleInGame_GoodsMarket(false);
            }
            if (getVisibleInGame_Armies()) {
                setVisibleInGame_Armies(false);
            }
            if (getVisibleInGame_DisbandArmy()) {
                setVisibleInGame_DisbandUnits(false);
            }
            if (getVisibleInGame_ReorganizeUnits()) {
                setVisibleInGame_ReorganizeUnits(false);
            }
            if (getVisibleInGame_Battle()) {
                setVisibleInGame_Battle(false);
            }
            if (getVisibleInGame_Siege()) {
                setVisibleInGame_Siege(false);
            }
            if (getVisibleInGame_War()) {
                setVisibleInGame_War(false);
            }
            if (getVisibleInGame_Peace()) {
                setVisibleInGame_Peace(false);
            }
            if (getVisibleInGame_TechnologyChoose()) {
                setVisibleInGame_TechnologyChoose(false);
            }
            if (getVisibleInGame_TechnologyTree()) {
                setVisibleInGame_TechnologyTree(false);
            }
            if (getVisibleDeclareWar()) {
                setVisibleInGame_PopUp(false);
            }
            if (getVisible_SpecialAlliance()) {
                setVisibleInGame_PopUp(false);
            }
            if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
                setVisibleInGame_PopUp(false);
            }
            if (getVisibleInGame_Nukes()) {
                setVisibleInGame_Nukes(false);
            }
            if (getVisibleInGame_CurrentSituation()) {
                setVisibleInGame_CurrentSituation(false);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void hideMenus_RecruitArmy(boolean z) {
        hideCourtCiv();
        setVisibleInGame_Buildings(false, false);
        if (getVisibleInGame_Wonder()) {
            setVisibleInGame_Wonder(false);
        }
        if (getVisibleInGame_Generals()) {
            setVisibleInGame_Generals(false);
        }
        if (getVisibleInGame_GeneralRecruit()) {
            setVisibleInGame_GeneralRecruit(false);
        }
        if (getVisibleInGame_ProvinceArmy()) {
            setVisibleInGame_ProvinceArmy(false);
        }
        if (getVisibleInGame_Battle()) {
            setVisibleInGame_Battle(false);
        }
        if (getVisibleInGame_Siege()) {
            setVisibleInGame_Siege(false);
        }
        if (getVisibleInGame_War()) {
            setVisibleInGame_War(false);
        }
        if (getVisibleInGame_Peace()) {
            setVisibleInGame_Peace(false);
        }
        if (getVisibleInGame_ReorganizeUnits()) {
            setVisibleInGame_ReorganizeUnits(false);
        }
        if (getVisibleInGame_DisbandArmy()) {
            setVisibleInGame_DisbandUnits(false);
        }
        if (getVisibleInGame_TechnologyChoose()) {
            setVisibleInGame_TechnologyChoose(false);
        }
        if (getVisibleInGame_TechnologyTree()) {
            setVisibleInGame_TechnologyTree(false);
        }
        if (getVisibleDeclareWar()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisible_SpecialAlliance()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleInGame_CurrentSituation()) {
            setVisibleInGame_CurrentSituation(false);
        }
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
        if (getVisibleInGame_Nukes()) {
            setVisibleInGame_Nukes(false);
        }
        setVisibleInGame_ProvinceInfo(false);
        if (z) {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
        }
        Game.clearActiveArmy();
        setOrderOfMenu(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD);
        setOrderOfMenu(this.IN_GAME_RECRUIT_ARMY);
    }

    public final void initColorPicker() {
        this.colorPicker = new ColorPicker();
        getColorPicker().buildColors();
        getColorPicker().setHueWidth((int) (CFG.BUTTON_WIDTH * 0.35f * CFG.GUI_SCALE));
        getColorPicker().setSVHeight((int) (ImageManager.getImage(Images.pickerSV).getHeight() * 2 * CFG.GUI_SCALE));
        getColorPicker().setResizeHeight((int) (CFG.GUI_SCALE * 30.0f));
    }

    protected final void onBackPressed() {
        if (this.dialogMenu.getVisible()) {
            this.dialogMenu.onBackPressed();
        }
        try {
            getActiveMenu().get(0).onBackPressed();
        } catch (IndexOutOfBoundsException unused) {
        }
        Touch.resetAllModes();
    }

    public final void rebuildCreateCivFlag() {
        int posX = this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_FLAG).getPosX();
        int posY = this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_FLAG).getPosY();
        int menuPosX = this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_FLAG).getMenuPosX();
        int menuPosY = this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_FLAG).getMenuPosY();
        this.menus.get(this.CREATE_CIV).set(this.CREATE_CIV_FLAG, new CreateCiv_Flag());
        this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_FLAG).setVisible(true);
        this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_FLAG).setPosX(posX);
        this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_FLAG).setPosY(posY);
        this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_FLAG).setMenuPosX(menuPosX);
        this.menus.get(this.CREATE_CIV).get(this.CREATE_CIV_FLAG).setMenuPosY(menuPosY);
    }

    public final void rebuildEditor() {
        this.menus.get(this.EDITOR).set(0, new Editor());
    }

    public final void rebuildEditorCivSelect() {
        int posX = this.menus.get(this.EDITOR_MAPS_EDIT_CIV_SELECT).get(0).getPosX();
        int posY = this.menus.get(this.EDITOR_MAPS_EDIT_CIV_SELECT).get(0).getPosY();
        int menuPosX = this.menus.get(this.EDITOR_MAPS_EDIT_CIV_SELECT).get(0).getMenuPosX();
        int menuPosY = this.menus.get(this.EDITOR_MAPS_EDIT_CIV_SELECT).get(0).getMenuPosY();
        this.menus.get(this.EDITOR_MAPS_EDIT_CIV_SELECT).get(0).setVisible(false);
        this.menus.get(this.EDITOR_MAPS_EDIT_CIV_SELECT).set(0, new EditorMap_CivSelect());
        this.menus.get(this.EDITOR_MAPS_EDIT_CIV_SELECT).get(0).setPosX(posX);
        this.menus.get(this.EDITOR_MAPS_EDIT_CIV_SELECT).get(0).setPosY(posY);
        this.menus.get(this.EDITOR_MAPS_EDIT_CIV_SELECT).get(0).setMenuPosX(menuPosX);
        this.menus.get(this.EDITOR_MAPS_EDIT_CIV_SELECT).get(0).setMenuPosY(menuPosY);
    }

    public final void rebuildEditorGameCivs() {
        this.menus.get(this.EDITOR_GAMECIVS).get(0).setVisible(false);
        this.menus.get(this.EDITOR_GAMECIVS).set(0, new GameCivs());
        this.menus.get(this.EDITOR_GAMECIVS).set(1, new GameCivsAlphabet());
    }

    public final Menu rebuildEditorMapProvinceConnectionsList() {
        return this.menus.get(this.EDITOR_MAPS_EDIT_PROVINCE_CONNECTIONS).set(1, new EditorMapProvinceConnectionsList());
    }

    public final void rebuildInGame() {
        int i = this.IN_GAME;
        if (i >= 0) {
            this.menus.get(i).set(0, new InGame());
        }
    }

    public final void rebuildInGameLegacies_Info(String str, String str2) {
        if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID > 2) {
            this.menus.get(this.IN_GAME_LEGACIES).set(this.IN_GAME_LEGACIES_INFO, new InGame_Info_2(str, str2));
        } else {
            this.menus.get(this.IN_GAME_LEGACIES).set(this.IN_GAME_LEGACIES_INFO, new InGame_Info(str, str2));
        }
        this.menus.get(this.IN_GAME_LEGACIES).get(this.IN_GAME_LEGACIES_INFO).setVisible(true);
        setOrderOfMenu(this.IN_GAME_LEGACIES_INFO);
    }

    public final void rebuildInGame_AdvisorRecruit() {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_ADVISOR_RECRUIT).dispose();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_ADVISOR_RECRUIT, new InGame_AdvisorRecruit());
        setVisibleInGame_AdvisorRecruit(true);
    }

    public final void rebuildInGame_Alliance(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Alliance(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 18;
    }

    public final void rebuildInGame_AllianceList() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_AllianceList());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 47;
    }

    public final void rebuildInGame_AllianceList_SavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_AllianceList());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 47;
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setMenuPosY(menuPosY);
    }

    public final void rebuildInGame_AllianceSpecial(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_AllianceSpecial(i));
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 35;
        if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_SPECIAL_ALLIANCE_VIEW) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_SPECIAL_ALLIANCE_VIEW);
        }
    }

    public final void rebuildInGame_AllianceSpecialReform(int i, int i2) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_AllianceSpecialReformHRE(i, i2));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 36;
    }

    public final void rebuildInGame_AllianceSpecial_SavePos(int i) {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_AllianceSpecial(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setMenuPosY(menuPosY);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 35;
    }

    public final void rebuildInGame_Armies(boolean z, boolean z2) {
        if (!z2) {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_ARMIES, new InGame_Armies(z));
            return;
        }
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_ARMIES).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_ARMIES).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_ARMIES).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_ARMIES).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_ARMIES, new InGame_Armies(z));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_ARMIES).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_ARMIES).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_ARMIES).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_ARMIES).setMenuPosY(menuPosY);
        InGame_Armies.lTime = 0L;
    }

    public final void rebuildInGame_Audio() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Audio());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 9;
    }

    public final void rebuildInGame_Battle() {
        boolean visible = this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE).getVisible();
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE).dispose();
        try {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_BATTLE, new InGame_Battle());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE).setVisible(InGame_Battle.battleID >= 0);
        } catch (Exception unused) {
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE).setVisible(false);
        }
        if (InGame_Battle.battleID >= 0) {
            try {
                this.menus.get(this.IN_GAME).set(this.IN_GAME_BATTLE_ARMY, new InGame_BattleArmy());
                this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_ARMY).setVisible(this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE).getVisible());
                this.menus.get(this.IN_GAME).set(this.IN_GAME_BATTLE_ARMY_DEFENDERS, new InGame_BattleArmyDefenders());
                this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_ARMY_DEFENDERS).setVisible(this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE).getVisible());
            } catch (Exception unused2) {
                this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_ARMY).setVisible(false);
                this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_ARMY_DEFENDERS).setVisible(false);
            }
        } else {
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_ARMY).setVisible(false);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_ARMY_DEFENDERS).setVisible(false);
        }
        Game.hoverManager.rebuildHoverAfterRebuildMenu();
        setOrderOfMenu(this.IN_GAME_BATTLE);
        setOrderOfMenu(this.IN_GAME_BATTLE_ARMY);
        setOrderOfMenu(this.IN_GAME_BATTLE_ARMY_DEFENDERS);
        if (visible) {
            InGame_Battle.lTime = 0L;
        }
        hideCourtCiv();
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
    }

    public final void rebuildInGame_BattleFull() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BATTLE_FULL, new InGame_Battle_Full());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_FULL).setVisible(true);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_FULL_EMPTY).setVisible(true);
        setOrderOfMenu_BattleFull();
    }

    public final void rebuildInGame_BattleReport(String str) {
        int battleReportID = Game.player.getBattleReportID(str);
        if (battleReportID >= 0) {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_BattleReport(battleReportID));
            this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
            setOrderOfMenu(this.IN_GAME_POP_UP);
            IN_GAME_POP_UP_MENU_ID = 14;
        }
    }

    public final void rebuildInGame_BattleTactics() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_BattleTactics());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 26;
    }

    public final void rebuildInGame_Battlefield() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Battlefield());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 51;
    }

    public final void rebuildInGame_Budget() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUDGET, new InGame_Budget());
    }

    public final void rebuildInGame_BudgetBalanceProvinces() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUDGET, new InGame_BudgetBalanceProvinces());
        setVisibleInGame_Budget(true);
    }

    public final void rebuildInGame_BudgetExpensesBuildingsMaintenance() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUDGET, new InGame_BudgetExpensesBuildingsMaintenance());
        setVisibleInGame_Budget(true);
    }

    public final void rebuildInGame_BudgetExpensesMaintenance() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUDGET, new InGame_BudgetExpensesMaintenance());
        setVisibleInGame_Budget(true);
    }

    public final void rebuildInGame_BudgetIncomeBuildings() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUDGET, new InGame_BudgetIncomeBuildings());
        setVisibleInGame_Budget(true);
    }

    public final void rebuildInGame_BudgetIncomeEconomy() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUDGET, new InGame_BudgetIncomeEconomy());
        setVisibleInGame_Budget(true);
    }

    public final void rebuildInGame_BudgetIncomeProduction() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUDGET, new InGame_BudgetIncomeProduction());
        setVisibleInGame_Budget(true);
    }

    public final void rebuildInGame_BudgetIncomeProvinces() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUDGET, new InGame_BudgetIncomeProvinces());
        setVisibleInGame_Budget(true);
    }

    public final void rebuildInGame_BudgetIncomeTaxation() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUDGET, new InGame_BudgetIncomeTaxation());
        setVisibleInGame_Budget(true);
    }

    public final void rebuildInGame_Build() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Build());
    }

    public final void rebuildInGame_BuildAtomicBomb() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_BuildAtomicBomb());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 6;
    }

    public final void rebuildInGame_BuildSavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Build());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosY(menuPosY);
    }

    public final void rebuildInGame_Buildings(boolean z) {
        boolean visible = this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS).getVisible();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (visible) {
            arrayList.add(new Point_XY(this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_0).getPosX(), this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_0).getPosY()));
            arrayList2.add(new Point_XY(this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_0).getMenuPosX(), this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_0).getMenuPosY()));
            arrayList.add(new Point_XY(this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_1).getPosX(), this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_1).getPosY()));
            arrayList2.add(new Point_XY(this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_1).getMenuPosX(), this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_1).getMenuPosY()));
            arrayList.add(new Point_XY(this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_2).getPosX(), this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_2).getPosY()));
            arrayList2.add(new Point_XY(this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_2).getMenuPosX(), this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_2).getMenuPosY()));
        }
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUILDINGS, new InGame_BuildingsGroup());
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUILDINGS_GROUP_0, new InGame_BuildingsGroupID(0));
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUILDINGS_GROUP_1, new InGame_BuildingsGroupID(1));
        this.menus.get(this.IN_GAME).set(this.IN_GAME_BUILDINGS_GROUP_2, new InGame_BuildingsGroupID(2));
        if (InGame_BuildingsGroup.isCapital) {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_BUILDINGS_GROUP_3, new InGame_BuildingsGroupID(3));
        }
        setVisibleInGame_Buildings(true, z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_3).setVisible(InGame_BuildingsGroup.isCapital);
        setVisibleInGame_RecruitArmy(false);
        setVisibleInGame_Wonder(false);
        setVisibleInGame_Generals(false);
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
        if (getVisibleInGame_Armies()) {
            setVisibleInGame_Armies(false);
        }
        if (visible) {
            InGame_BuildingsGroup.lTime = 0L;
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_0).setPosX(((Point_XY) arrayList.get(0)).getPosX());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_0).setPosY(((Point_XY) arrayList.get(0)).getPosY());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_0).setMenuPosX(((Point_XY) arrayList2.get(0)).getPosX());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_0).setMenuPosY(((Point_XY) arrayList2.get(0)).getPosY());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_1).setPosX(((Point_XY) arrayList.get(1)).getPosX());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_1).setPosY(((Point_XY) arrayList.get(1)).getPosY());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_1).setMenuPosX(((Point_XY) arrayList2.get(1)).getPosX());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_1).setMenuPosY(((Point_XY) arrayList2.get(1)).getPosY());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_2).setPosX(((Point_XY) arrayList.get(2)).getPosX());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_2).setPosY(((Point_XY) arrayList.get(2)).getPosY());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_2).setMenuPosX(((Point_XY) arrayList2.get(2)).getPosX());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_2).setMenuPosY(((Point_XY) arrayList2.get(2)).getPosY());
            arrayList.clear();
            arrayList2.clear();
        }
    }

    public final void rebuildInGame_Buildings2() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Buildings2());
    }

    public final void rebuildInGame_Buildings2SavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Buildings2());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosY(menuPosY);
    }

    public final void rebuildInGame_Buildings2_Back() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Buildings2());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosX(InGame_Court_Buildings2.savePos_X);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosY(InGame_Court_Buildings2.savePos_Y);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosX(InGame_Court_Buildings2.saveMenuPos_X);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosY(InGame_Court_Buildings2.saveMenuPos_Y);
    }

    public final void rebuildInGame_CallAllies(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_CallAllies(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 37;
    }

    public final void rebuildInGame_ChangeIdeology() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_ChangeIdeology());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 10;
    }

    public final void rebuildInGame_ChangeIdeology2() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_ChangeIdeology2());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 11;
    }

    public final void rebuildInGame_ChangeReligion() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_ChangeReligion());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 49;
    }

    public final void rebuildInGame_ChangeReligion2() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_ChangeReligion2());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 50;
    }

    public final void rebuildInGame_Civ() {
        rebuildInGame_Civ(false);
    }

    public final void rebuildInGame_Civ(boolean z) {
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_CIV) {
            Game.keyboard.hideKeyboard();
        }
        if (!z && Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DIPLOMACY) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
        }
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ());
        if (z) {
            this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).setVisible(true);
        } else {
            setVisibleInGame_Civ(true);
            InGame_Civ.actionOnOpen();
        }
        InGame_Civ.enabledByScaleOut = false;
    }

    public final void rebuildInGame_CivBonuses() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV_BONUSES, new InGame_CivBonuses());
    }

    public final void rebuildInGame_CivRank() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_CivRank());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_AggressiveExpansion() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_AggressiveExpansion());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_CapitalCity() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_CapitalCity());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_Compare() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_Compare());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_Economy() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_Economy());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_Government() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_Government());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_List() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_List());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_MilitaryAcademy() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_MilitaryAcademy());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_Population() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_Population());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_Provinces() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_Provinces());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_Regiments() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_ArmiesRegiments());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_Religion() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_Religion());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_SavePos() {
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_CIV) {
            Game.keyboard.hideKeyboard();
        }
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).setVisible(true);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).setMenuPosY(menuPosY);
        InGame_Civ.enabledByScaleOut = false;
    }

    public final void rebuildInGame_Civ_UnlockedAdvantages() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_CivilizationAdvantages(InGame_Civ.iActiveCivID));
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_UnlockedAdvantages_2() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_CivilizationAdvantages2());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_Civ_UnlockedTechnologies() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CIV, new InGame_Civ_UnlockedTechnologies());
        setVisibleInGame_Civ(true);
        InGame_Civ.enabledByScaleOut = false;
        if (getVisibleInGame_CivBonuses()) {
            setVisibleInGame_CivBonuses(false);
        }
    }

    public final void rebuildInGame_CivilizationAdvantages(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CHOOSE_TECHNOLOGY, new InGame_CivilizationAdvantages(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setVisible(true);
        setOrderOfMenu(this.IN_GAME_CHOOSE_TECHNOLOGY);
    }

    public final void rebuildInGame_CivilizationAdvantages_2() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CHOOSE_TECHNOLOGY, new InGame_CivilizationAdvantages2());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setVisible(true);
        setOrderOfMenu(this.IN_GAME_CHOOSE_TECHNOLOGY);
    }

    public final void rebuildInGame_CivilizationAdvantages_SavePos(int i) {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CHOOSE_TECHNOLOGY, new InGame_CivilizationAdvantages(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setVisible(true);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setMenuPosY(menuPosY);
        setOrderOfMenu(this.IN_GAME_CHOOSE_TECHNOLOGY);
    }

    public final void rebuildInGame_CivilizationAdvantages_SavePos_2() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CHOOSE_TECHNOLOGY, new InGame_CivilizationAdvantages2());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setVisible(true);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setMenuPosY(menuPosY);
        setOrderOfMenu(this.IN_GAME_CHOOSE_TECHNOLOGY);
    }

    public final void rebuildInGame_Console() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CONSOLE, new InGame_Console(true));
        setOrderOfMenu(this.IN_GAME_CONSOLE);
    }

    public final void rebuildInGame_ConvertReligion() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_ConvertReligion());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 0;
    }

    public final void rebuildInGame_Core() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Core());
    }

    public final void rebuildInGame_CoreSavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Core());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosY(menuPosY);
    }

    public final void rebuildInGame_Court() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court());
    }

    public final void rebuildInGame_CourtGoldenAges() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_GoldenAges());
    }

    public final void rebuildInGame_CourtMissions() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Missions());
    }

    public final void rebuildInGame_CourtOptions() {
        int i = this.IN_GAME;
        if (i < 0 || this.IN_GAME_COURT_OPTIONS < 0) {
            return;
        }
        boolean visible = this.menus.get(i).get(this.IN_GAME_COURT_OPTIONS).getVisible();
        boolean visible2 = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT_OPTIONS2).getVisible();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT_OPTIONS, new InGame_CourtOptions());
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT_OPTIONS2, new InGame_CourtOptions2());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT_OPTIONS).setVisible(visible);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT_OPTIONS2).setVisible(visible2);
    }

    public final void rebuildInGame_CourtProvinces() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Provinces());
    }

    public final void rebuildInGame_CourtSavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosY(menuPosY);
        setVisibleInGame_Court(true);
        InGame_Court.lTime = 0L;
    }

    public final void rebuildInGame_CourtSearch() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_WorldSearch());
    }

    public final void rebuildInGame_CourtSearchCivs() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_WorldCivs());
    }

    public final void rebuildInGame_CourtStatistics() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Stats());
    }

    public final void rebuildInGame_CourtWorld_Alliances() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_WorldAlliances());
    }

    public final void rebuildInGame_CourtWorld_Defensive() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_WorldDefensive());
    }

    public final void rebuildInGame_CourtWorld_NonAggression() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_WorldNonAggression());
    }

    public final void rebuildInGame_CourtWorld_Truces() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_WorldTruces());
    }

    public final void rebuildInGame_CourtWorld_Vassals() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_WorldVassals());
    }

    public final void rebuildInGame_CourtWorld_Wars() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_WorldWars());
    }

    public final void rebuildInGame_CurrentSituation() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CURRENT_SITUATION, new InGame_CurrentSituation());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).setVisible(true);
        setOrderOfMenu(this.IN_GAME_CURRENT_SITUATION);
        currentSituationMode = true;
        rebuildInGame_CurrentSituation_HideMenus();
    }

    public final void rebuildInGame_CurrentSituation_HideMenus() {
        hideCourtCiv();
        setVisibleInGame_Buildings(false, false);
        setVisibleInGame_Wonder(false);
        setVisibleInGame_Generals(false);
        setVisibleInGame_ReorganizeUnits(false);
        setVisibleInGame_DisbandUnits(false);
        setVisibleInGame_RecruitArmy(false);
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
        if (getVisibleInGame_TechnologyChoose()) {
            setVisibleInGame_TechnologyChoose(false);
        }
        if (getVisibleDeclareWar()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisible_SpecialAlliance()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleInGame_Nukes()) {
            setVisibleInGame_Nukes(false);
        }
        if (getVisibleInGame_Armies()) {
            setVisibleInGame_Armies(false);
        }
    }

    public final void rebuildInGame_CurrentSituation_Missions() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CURRENT_SITUATION, new InGame_Missions());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).setVisible(true);
        setOrderOfMenu(this.IN_GAME_CURRENT_SITUATION);
        currentSituationMode = true;
        hideCourtCiv();
        setVisibleInGame_Buildings(false, false);
        setVisibleInGame_Wonder(false);
        setVisibleInGame_Generals(false);
        setVisibleInGame_ReorganizeUnits(false);
        setVisibleInGame_DisbandUnits(false);
        setVisibleInGame_RecruitArmy(false);
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
        if (getVisibleInGame_TechnologyChoose()) {
            setVisibleInGame_TechnologyChoose(false);
        }
        if (getVisibleDeclareWar()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisible_SpecialAlliance()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleInGame_Nukes()) {
            setVisibleInGame_Nukes(false);
        }
        if (getVisibleInGame_Armies()) {
            setVisibleInGame_Armies(false);
        }
    }

    public final void rebuildInGame_CurrentSituation_Ranking() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CURRENT_SITUATION, new InGame_Ranking());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).setVisible(true);
        setOrderOfMenu(this.IN_GAME_CURRENT_SITUATION);
        currentSituationMode = false;
        hideCourtCiv();
        setVisibleInGame_Buildings(false, false);
        setVisibleInGame_Wonder(false);
        setVisibleInGame_Generals(false);
        setVisibleInGame_ReorganizeUnits(false);
        setVisibleInGame_DisbandUnits(false);
        setVisibleInGame_RecruitArmy(false);
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
        if (getVisibleInGame_TechnologyChoose()) {
            setVisibleInGame_TechnologyChoose(false);
        }
        if (getVisibleDeclareWar()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisible_SpecialAlliance()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleInGame_Nukes()) {
            setVisibleInGame_Nukes(false);
        }
        if (getVisibleInGame_Armies()) {
            setVisibleInGame_Armies(false);
        }
        if (getVisibleInGame_War()) {
            setVisibleInGame_War(false);
        }
        if (getVisibleInGame_Peace()) {
            setVisibleInGame_Peace(false);
        }
    }

    public final void rebuildInGame_CurrentSituation_Wonders() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CURRENT_SITUATION, new InGame_Wonders());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).setVisible(true);
        setOrderOfMenu(this.IN_GAME_CURRENT_SITUATION);
    }

    public final void rebuildInGame_CustomizeArmy() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_ADVISOR_RECRUIT, new InGame_ArmyCustomize());
        setVisibleInGame_AdvisorRecruit(true);
    }

    public final void rebuildInGame_DeclareWar(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_DeclareWar(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = IN_GAME_POP_UP_MENU_ID_DECLARE_WAR;
    }

    public final void rebuildInGame_DefensivePact(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_DefensivePact(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 16;
    }

    public final void rebuildInGame_DemandMilitaryAccess(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_DemandMilitaryAccess(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 19;
    }

    public final void rebuildInGame_Destroy() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Destroy());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 1;
    }

    public final void rebuildInGame_DevelopInfrastructure() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_DevelopInfrastructure());
    }

    public final void rebuildInGame_DisbandUnits() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).getMenuPosY();
        InGame_ReorganizeUnits.restartAnimation = !this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).getVisible();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_DISBAND_UNITS, new InGame_Disband());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).setMenuPosY(menuPosY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).setVisible(true);
        setOrderOfMenu(this.IN_GAME_DISBAND_UNITS);
    }

    public final void rebuildInGame_Encyclopedia() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Encyclopedia());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 15;
    }

    public final void rebuildInGame_EspionageReportCourt(int i, int i2) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Espionage(i, i2));
    }

    public final void rebuildInGame_Event(Event event, int i, int i2) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_EVENT, new InGame_Event(event, i, i2));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_EVENT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_EVENT);
    }

    public final void rebuildInGame_ExploitEconomy() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_ExploitEconomy());
    }

    public final void rebuildInGame_ExploitEconomy_SavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_ExploitEconomy());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosY(menuPosY);
        setVisibleInGame_Court(true);
        InGame_Court.lTime = 0L;
    }

    public final void rebuildInGame_FormCiv(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_FormCiv(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = IN_GAME_POP_UP_MENU_FORM_CIV;
    }

    public final void rebuildInGame_GeneralRecruit() {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GENERAL_RECRUIT).dispose();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_GENERAL_RECRUIT, new InGame_GeneralRecruit());
        setVisibleInGame_GeneralRecruit(true);
    }

    public final void rebuildInGame_Generals() {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GENERALS).dispose();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_GENERALS, new InGame_Generals());
        if (getVisibleInGame_CurrentSituation()) {
            setVisibleInGame_CurrentSituation(false);
        }
    }

    public final void rebuildInGame_Goods() {
        rebuildInGame_Goods(false);
    }

    public final void rebuildInGame_Goods(boolean z) {
        if (!z) {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_GOODS, new InGame_Goods());
            return;
        }
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_GOODS, new InGame_Goods());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS).setMenuPosY(menuPosY);
    }

    public final void rebuildInGame_GoodsMarket() {
        setVisibleInGame_CivBonuses(false);
        setVisibleInGame_Court(false);
        setVisibleInGame_Budget(false);
        hideCivCourt_Menus();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_GOODS_CIV, new InGame_GoodsMarket());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS_CIV).setVisible(true);
        setOrderOfMenu(this.IN_GAME_GOODS_CIV);
    }

    public final void rebuildInGame_GoodsMarketResource() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_GOODS_CIV, new InGame_GoodsMarket_Resource());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS_CIV).setVisible(true);
        setOrderOfMenu(this.IN_GAME_GOODS_CIV);
    }

    public final void rebuildInGame_Goods_LargestProducers() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_GOODS, new InGame_Goods_LargestProducers());
        setVisibleInGame_Goods(true);
    }

    public final void rebuildInGame_Goods_Provinces() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_GOODS, new InGame_Goods_Provinces());
        setVisibleInGame_Goods(true);
    }

    public final void rebuildInGame_Government() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Government());
    }

    public final void rebuildInGame_Government_SavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Government());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosY(menuPosY);
        setVisibleInGame_Court(true);
        InGame_Court.lTime = 0L;
    }

    public final void rebuildInGame_GraphPopulation() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_GOODS, new InGame_GraphPopulation());
        setVisibleInGame_Goods(true);
    }

    public final void rebuildInGame_Guarantee(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Guarantee(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 21;
    }

    public final void rebuildInGame_IncreaseGrowthRate() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_IncreaseGrowthRate());
    }

    public final void rebuildInGame_IncreaseManpower() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_IncreaseManpower());
    }

    public final void rebuildInGame_IncreaseTaxEfficiency() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_IncreaseTaxEfficiency());
    }

    public final void rebuildInGame_Info(String str, String str2) {
        if (Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).OVER_IMAGE_ID > 2) {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_INFO, new InGame_Info_2(str, str2));
        } else {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_INFO, new InGame_Info(str, str2));
        }
        setVisibleInGame_Info(true);
        setOrderOfMenu(this.IN_GAME_INFO);
    }

    public final void rebuildInGame_Intervene(int i, int i2) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Intervene(i, i2));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 48;
    }

    public final void rebuildInGame_InvestInEconomy() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_InvestInEconomy());
    }

    public final void rebuildInGame_LawReform(int i, int i2) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_LawReform(i, i2));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 24;
    }

    public final void rebuildInGame_Laws(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Laws(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 23;
    }

    public final void rebuildInGame_LawsCourt() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Law());
    }

    public final void rebuildInGame_Legacies() {
        this.menus.get(this.IN_GAME_LEGACIES).set(0, new InGame_Legacies());
    }

    public final void rebuildInGame_LiberateCivilization(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_LiberateCivilization(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 43;
    }

    public final void rebuildInGame_ListOfBuildings() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CHOOSE_TECHNOLOGY, new InGame_ListOfBuildings());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setVisible(true);
        setOrderOfMenu(this.IN_GAME_CHOOSE_TECHNOLOGY);
    }

    public final void rebuildInGame_ListOfUnits() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CHOOSE_TECHNOLOGY, new InGame_ListOfUnits());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setVisible(true);
        setOrderOfMenu(this.IN_GAME_CHOOSE_TECHNOLOGY);
    }

    public final void rebuildInGame_Mercenaries() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_ARMIES, new InGame_RecruitMercenaries());
    }

    public final void rebuildInGame_MessageAlliance(String str) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_MessageAlliance(str));
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 29;
    }

    public final void rebuildInGame_MessageCallToWar(PMessage pMessage) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_MessageCallToWar(pMessage));
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 46;
    }

    public final void rebuildInGame_MessageDefensivePact(String str) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_MessageDefensivePact(str));
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 30;
    }

    public final void rebuildInGame_MessageDemandsMilitaryAccess(String str) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_MessageDemandsMilitaryAccess(str));
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 32;
    }

    public final void rebuildInGame_MessageGift(String str) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_MessageGift(str));
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 28;
    }

    public final void rebuildInGame_MessageGuarantee(String str) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_MessageGuarantee(str));
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 33;
    }

    public final void rebuildInGame_MessageInsult(String str) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_MessageInsult(str));
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 34;
    }

    public final void rebuildInGame_MessageNonAggressionPact(String str) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_MessageNonAggressionPact(str));
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 31;
    }

    public final void rebuildInGame_Messages() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_MESSAGES, new InGame_Messages());
    }

    public final void rebuildInGame_MessagesSavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_MESSAGES).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_MESSAGES).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_MESSAGES).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_MESSAGES).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_MESSAGES, new InGame_Messages());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_MESSAGES).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_MESSAGES).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_MESSAGES).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_MESSAGES).setMenuPosY(menuPosY);
    }

    public final void rebuildInGame_MissionTree(boolean z, boolean z2) {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_TECHNOLOGY_TREE, new InGame_MissionTree());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setVisible(true);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE_EMPTY).setVisible(true);
        if (z) {
            this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setPosX(posX);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setPosY(posY);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setMenuPosX(menuPosX);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setMenuPosY(menuPosY);
        }
        if (z2) {
            setOrderOfMenu_TechnologyTree();
        }
    }

    public final void rebuildInGame_MoveCapital_PopUp() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_MoveCapital_PopUp());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 7;
    }

    public final void rebuildInGame_NonAggression(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_NonAggression(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 17;
    }

    public final void rebuildInGame_Notifications() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_NOTIFICATION, new InGame_Notifications());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_NOTIFICATION).setVisible(true);
        setOrderOfMenu(this.IN_GAME_NOTIFICATION);
    }

    public final void rebuildInGame_Nukes() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_NUKES, new InGame_Nukes());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_NUKES).setVisible(true);
        hideCourtCiv();
        setVisibleInGame_Buildings(false, false);
        setVisibleInGame_Wonder(false);
        setVisibleInGame_Generals(false);
        setVisibleInGame_GeneralRecruit(false);
        setVisibleInGame_ProvinceArmy(false);
        setVisibleInGame_Battle(false);
        if (getVisibleInGame_Siege()) {
            setVisibleInGame_Siege(false);
        }
        if (getVisibleInGame_War()) {
            setVisibleInGame_War(false);
        }
        if (getVisibleInGame_Peace()) {
            setVisibleInGame_Peace(false);
        }
        setVisibleInGame_ReorganizeUnits(false);
        setVisibleInGame_DisbandUnits(false);
        setVisibleInGame_RecruitArmy(false);
        setVisibleInGame_TechnologyChoose(false);
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
        if (getVisibleDeclareWar()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisible_SpecialAlliance()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleInGame_CurrentSituation()) {
            setVisibleInGame_CurrentSituation(false);
        }
        if (getVisibleInGame_Armies()) {
            setVisibleInGame_Armies(false);
        }
        setVisibleInGame_ProvinceInfo(false);
        Game.gameActiveProvince.resetLastActiveProvince();
        Game.setActiveProvinceID(-1);
        Game.clearActiveArmy();
        setOrderOfMenu(this.IN_GAME_NUKES);
    }

    public final void rebuildInGame_OfferMilitaryAccess(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_OfferMilitaryAccess(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 20;
    }

    public final void rebuildInGame_Peace() {
        boolean visible = this.menus.get(this.IN_GAME).get(this.IN_GAME_PEACE).getVisible();
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PEACE).dispose();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_PEACE, new InGame_Peace());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PEACE).setVisible(true);
        Game.hoverManager.rebuildHoverAfterRebuildMenu();
        setOrderOfMenu(this.IN_GAME_PEACE);
        if (visible) {
            InGame_War.lTime = 0L;
        }
        hideCourtCiv();
        showInGame_Battle_HideMenus();
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
        if (getVisibleInGame_Battle()) {
            setVisibleInGame_Battle(false);
        }
        if (getVisibleInGame_Siege()) {
            setVisibleInGame_Siege(false);
        }
    }

    public final void rebuildInGame_ProvinceArmy() {
        rebuildInGame_ProvinceArmy(false, true);
    }

    public final void rebuildInGame_ProvinceArmy(boolean z, boolean z2) {
        int posX;
        int menuPosX;
        int menuPosY;
        int posX2;
        int menuPosX2;
        int menuPosY2;
        int posX3;
        int menuPosX3;
        int menuPosY3;
        if (Game.activeArmySize <= 0) {
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).setVisible(false);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).setVisible(false);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_TOP_BAR).setVisible(false);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_MOVE).setVisible(false);
            return;
        }
        boolean visible = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).getVisible();
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).dispose();
        if (z && visible) {
            posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).getPosX();
            menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).getMenuPosX();
            menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).getMenuPosY();
            posX2 = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).getPosX();
            menuPosX2 = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).getMenuPosX();
            menuPosY2 = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).getMenuPosY();
            posX3 = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_TOP_BAR).getPosX();
            menuPosX3 = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_TOP_BAR).getMenuPosX();
            menuPosY3 = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_TOP_BAR).getMenuPosY();
        } else {
            posX = 0;
            menuPosX = 0;
            menuPosY = 0;
            posX2 = 0;
            menuPosX2 = 0;
            menuPosY2 = 0;
            posX3 = 0;
            menuPosX3 = 0;
            menuPosY3 = 0;
        }
        this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_ARMY, new InGame_ProvinceArmy());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).setVisible(true);
        if (Game.invasionArmyMode) {
            rebuildInGame_ProvinceArmy_InvasionArmy();
        } else {
            rebuildInGame_ProvinceArmy_RegroupArmy();
        }
        this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_ARMY_TOP_BAR, new InGame_ProvinceArmyTopBar());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_TOP_BAR).setVisible(true);
        this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_ARMY_MOVE, new InGame_ProvinceArmy_Move());
        Game.hoverManager.rebuildHoverAfterRebuildMenu();
        if (z && visible) {
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).setPosX(posX);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).setMenuPosX(menuPosX);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).setMenuPosY(menuPosY);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).setPosX(posX2);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).setMenuPosX(menuPosX2);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).setMenuPosY(menuPosY2);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_TOP_BAR).setPosX(posX3);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_TOP_BAR).setMenuPosX(menuPosX3);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_TOP_BAR).setMenuPosY(menuPosY3);
        }
        if (visible) {
            InGame_ProvinceArmy.lTime = 0L;
        }
        if (z2) {
            hideCourtCiv();
            setOrderOfMenu_InGameProvinceArmy();
            if (getVisibleInGame_GoodsMarket()) {
                setVisibleInGame_GoodsMarket(false);
            }
        }
    }

    public final void rebuildInGame_ProvinceArmy_HideMenus() {
        if (getVisibleInGame_ProvinceInfo()) {
            setVisibleInGame_ProvinceInfo(false);
        }
        if (getVisibleInGame_RecruitArmy()) {
            setVisibleInGame_RecruitArmy(false);
        }
        if (getVisibleInGame_Armies()) {
            setVisibleInGame_Armies(false);
        }
        if (getVisibleInGame_Buildings()) {
            setVisibleInGame_Buildings(false, false);
        }
        if (getVisibleInGame_Battle()) {
            setVisibleInGame_Battle(false);
        }
        if (getVisibleInGame_Siege()) {
            setVisibleInGame_Siege(false);
        }
        if (getVisibleInGame_War()) {
            setVisibleInGame_War(false);
        }
        if (getVisibleInGame_Peace()) {
            setVisibleInGame_Peace(false);
        }
        if (getVisibleInGame_DisbandArmy()) {
            setVisibleInGame_DisbandUnits(false);
        }
        if (getVisibleInGame_ReorganizeUnits()) {
            setVisibleInGame_ReorganizeUnits(false);
        }
        setOrderOfMenu_InGameProvinceArmy();
        if (getVisibleInGame_TechnologyChoose()) {
            setVisibleInGame_TechnologyChoose(false);
        }
        if (getVisibleDeclareWar()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisible_SpecialAlliance()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleInGame_Nukes()) {
            setVisibleInGame_Nukes(false);
        }
        if (getVisibleInGame_TechnologyTree()) {
            setVisibleInGame_TechnologyTree(false);
        }
        if (getVisibleInGame_CurrentSituation()) {
            setVisibleInGame_CurrentSituation(false);
        }
    }

    public final void rebuildInGame_ProvinceArmy_InvasionArmy() {
        if (Game.invasionArmyMode) {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_ARMY_UNITS, new InGame_ProvinceArmy_Invasion());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).setVisible(true);
        } else {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_ARMY_UNITS, new InGame_ProvinceArmyUnits());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).setVisible(true);
        }
    }

    public final void rebuildInGame_ProvinceArmy_RegroupArmy() {
        if (Game.regroupArmyMode) {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_ARMY_UNITS, new InGame_ProvinceArmy_Regroup());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).setVisible(true);
        } else {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_ARMY_UNITS, new InGame_ProvinceArmyUnits());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).setVisible(true);
        }
    }

    public final void rebuildInGame_ProvinceBonuses() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_BONUSES, new InGame_ProvinceBonuses());
    }

    public final void rebuildInGame_ProvinceInfo(boolean z) {
        boolean visible = this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_INFO).getVisible();
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_PROVINCE) {
            Game.keyboard.hideKeyboard();
        }
        this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_INFO, new InGame_ProvinceInfo());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_INFO).setVisible(true);
        this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_INFO_BUILDINGS, new InGame_ProvinceInfoBuildings());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_INFO_BUILDINGS).setVisible(Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCivID() > 0);
        this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_INFO_ARMY, new InGame_ProvinceInfo_Army());
        Game.hoverManager.rebuildHoverAfterRebuildMenu();
        if (z) {
            setOrderOfMenu_InGameProvinceInfo();
        }
        if (visible) {
            InGame_ProvinceInfo.lTime = 0L;
        }
    }

    public final void rebuildInGame_ProvinceInfo_Army() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_PROVINCE_INFO_ARMY, new InGame_ProvinceInfo_Army());
        Game.hoverManager.rebuildHoverAfterRebuildMenu();
    }

    public final void rebuildInGame_RecruitArmy() {
        this.inCreateNewArmy = false;
        InGame_RecruitArmy.key = null;
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RECRUIT_ARMY, new InGame_RecruitArmy());
        setOrderOfMenu(this.IN_GAME_RECRUIT_ARMY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD).setVisible(false);
    }

    public final void rebuildInGame_RecruitArmy_NewArmy() {
        this.inCreateNewArmy = true;
        InGame_RecruitArmy.key = null;
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RECRUIT_ARMY, new InGame_RecruitArmy_NewArmy());
        if (InGame_RecruitArmy_NewArmy_Battlefield.autoVisible) {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD, new InGame_RecruitArmy_NewArmy_Battlefield());
            this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD).setVisible(true);
        } else {
            this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD).setVisible(false);
        }
        setOrderOfMenu(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD);
        setOrderOfMenu(this.IN_GAME_RECRUIT_ARMY);
    }

    public final void rebuildInGame_RecruitArmy_NewArmy_Battlefield() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD, new InGame_RecruitArmy_NewArmy_Battlefield());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD);
        setOrderOfMenu(this.IN_GAME_RECRUIT_ARMY);
    }

    public final void rebuildInGame_RecruitSameType() {
        this.inCreateNewArmy = false;
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RECRUIT_ARMY, new InGame_RecruitSameType());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY).setVisible(true);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD).setVisible(false);
        setOrderOfMenu(this.IN_GAME_RECRUIT_ARMY);
    }

    public final void rebuildInGame_ReleaseAVassal() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CURRENT_SITUATION, new InGame_ReleaseAVassal());
        setOrderOfMenu(this.IN_GAME_CURRENT_SITUATION);
        currentSituationMode = false;
        rebuildInGame_CurrentSituation_HideMenus();
    }

    public final void rebuildInGame_ReleaseAVassal_SavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CURRENT_SITUATION, new InGame_ReleaseAVassal());
        setOrderOfMenu(this.IN_GAME_CURRENT_SITUATION);
        currentSituationMode = false;
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).setMenuPosY(menuPosY);
    }

    public final void rebuildInGame_Religion() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Religion());
    }

    public final void rebuildInGame_ReligionSavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_COURT, new InGame_Court_Religion());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setMenuPosY(menuPosY);
    }

    public final void rebuildInGame_ReorganizeUnits() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).getMenuPosY();
        InGame_ReorganizeUnits.restartAnimation = !this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).getVisible();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_REORGANIZE_UNITS, new InGame_ReorganizeUnits());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).setMenuPosY(menuPosY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).setVisible(true);
        setOrderOfMenu(this.IN_GAME_REORGANIZE_UNITS);
    }

    public final void rebuildInGame_Revolutions() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Revolutions());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 45;
    }

    public final void rebuildInGame_Revolutions_SavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Revolutions());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setMenuPosY(menuPosY);
        InGame_Revolutions.lTime = 0L;
    }

    public final void rebuildInGame_Right() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_Right());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        rebuildInGame_RightQueue();
        setOrderOfMenu(this.IN_GAME_RIGHT);
        setOrderOfMenu(this.IN_GAME_RIGHT_QUEUE);
    }

    public final void rebuildInGame_RightEconomy() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_RightEconomy());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RIGHT);
    }

    public final void rebuildInGame_RightGoods() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_RightGoods());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RIGHT);
    }

    public final void rebuildInGame_RightGoodsProvinces() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_RightGoodsProvinces());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RIGHT);
    }

    public final void rebuildInGame_RightGovernment() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_RightGovernment());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RIGHT);
    }

    public final void rebuildInGame_RightInfrastructure() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_RightInfrastructure());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RIGHT);
    }

    public final void rebuildInGame_RightPopulation() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_RightPopulation());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RIGHT);
    }

    public final void rebuildInGame_RightProvinceIncome() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_RightProvinceIncome());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RIGHT);
    }

    public final void rebuildInGame_RightQueue() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT_QUEUE, new InGame_RightQueue());
        setOrderOfMenu(this.IN_GAME_RIGHT_QUEUE);
    }

    public final void rebuildInGame_RightReligion() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_RightReligion());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RIGHT);
    }

    public final void rebuildInGame_RightTaxEfficiency() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_RightTaxEfficiency());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RIGHT);
    }

    public final void rebuildInGame_RightWonders() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_RIGHT, new InGame_RightWonders());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(true);
        setOrderOfMenu(this.IN_GAME_RIGHT);
    }

    public final void rebuildInGame_Rivals() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Rivals());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 25;
    }

    public final void rebuildInGame_RivalsList() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_RivalsList());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 38;
    }

    public final void rebuildInGame_RivalsList_SavePos() {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_RivalsList());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 38;
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setPosX(posX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setPosY(posY);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setMenuPosX(menuPosX);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setMenuPosY(menuPosY);
    }

    public final void rebuildInGame_Rivals_End() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Rivals_End());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 40;
    }

    public final void rebuildInGame_Sandbox() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Sandbox());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 42;
    }

    public final void rebuildInGame_SaveGame() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_SAVE_GAME, new InGame_SaveGame(true));
        setOrderOfMenu(this.IN_GAME_SAVE_GAME);
    }

    public final void rebuildInGame_ScenarioEditorAlliances() {
        this.menus.get(this.SCENARIO_ALLIANCES).set(1, new ScenarioAlliancesList());
    }

    public final void rebuildInGame_ScenarioEditorArmies() {
        this.menus.get(this.SCENARIO_ARMIES).set(1, new ScenarioArmies_List());
    }

    public final void rebuildInGame_ScenarioEditorBuildings() {
        this.menus.get(this.SCENARIO_BUILDINGS).set(1, new ScenarioBuildings_List());
    }

    public final void rebuildInGame_ScenarioEditorCreateAlliance_Edit() {
        this.menus.get(this.SCENARIO_CREATE_ALLIANCE_EDIT).set(1, new ScenarioCreateAllianceList());
    }

    public final void rebuildInGame_ScenarioEditorCreateAlliance_Edit_SavePos() {
        int posX = this.menus.get(this.SCENARIO_CREATE_ALLIANCE_EDIT).get(1).getPosX();
        int posY = this.menus.get(this.SCENARIO_CREATE_ALLIANCE_EDIT).get(1).getPosY();
        int menuPosX = this.menus.get(this.SCENARIO_CREATE_ALLIANCE_EDIT).get(1).getMenuPosX();
        int menuPosY = this.menus.get(this.SCENARIO_CREATE_ALLIANCE_EDIT).get(1).getMenuPosY();
        this.menus.get(this.SCENARIO_CREATE_ALLIANCE_EDIT).set(1, new ScenarioCreateAllianceList());
        this.menus.get(this.SCENARIO_CREATE_ALLIANCE_EDIT).get(1).setPosX(posX);
        this.menus.get(this.SCENARIO_CREATE_ALLIANCE_EDIT).get(1).setPosY(posY);
        this.menus.get(this.SCENARIO_CREATE_ALLIANCE_EDIT).get(1).setMenuPosX(menuPosX);
        this.menus.get(this.SCENARIO_CREATE_ALLIANCE_EDIT).get(1).setMenuPosY(menuPosY);
    }

    public final void rebuildInGame_ScenarioEditorDeclareWar() {
        this.menus.get(this.SCENARIO_DECLARE_WAR).set(1, new ScenarioDeclareWarList());
    }

    public final void rebuildInGame_ScenarioEditorDefensive() {
        this.menus.get(this.SCENARIO_DEFENSIVE).set(1, new ScenarioDefensiveList());
    }

    public final void rebuildInGame_ScenarioEditorGovernment() {
        this.menus.get(this.SCENARIO_GOVERNMENT).set(1, new ScenarioGovernment_List());
    }

    public final void rebuildInGame_ScenarioEditorGuarantee() {
        this.menus.get(this.SCENARIO_GUARANTEE).set(1, new ScenarioGuaranteeList());
    }

    public final void rebuildInGame_ScenarioEditorMilitaryAccess() {
        this.menus.get(this.SCENARIO_MILITARY_ACCESS).set(1, new ScenarioMilitaryAccessList());
    }

    public final void rebuildInGame_ScenarioEditorNonAggression() {
        this.menus.get(this.SCENARIO_NON_AGGRESSION).set(1, new ScenarioNonAggressionList());
    }

    public final void rebuildInGame_ScenarioEditorRelations() {
        this.menus.get(this.SCENARIO_RELATIONS).set(1, new ScenarioRelationsList());
    }

    public final void rebuildInGame_ScenarioEditorTruces() {
        this.menus.get(this.SCENARIO_TRUCES).set(1, new ScenarioTrucesList());
    }

    public final void rebuildInGame_ScenarioEditorVassals() {
        this.menus.get(this.SCENARIO_VASSALS).set(1, new ScenarioVassalsList());
    }

    public final void rebuildInGame_SellProvince(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_SellProvince(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 41;
    }

    public final void rebuildInGame_SendGift(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_SendGift(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 22;
    }

    public final void rebuildInGame_SendInsult(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_SendInsult(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 13;
    }

    public final void rebuildInGame_SendSpy(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_SendSpy(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 27;
    }

    public final void rebuildInGame_SendUltimatum(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Ultimatum(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 52;
    }

    public final void rebuildInGame_ShareTechnology(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_ShareTechnology(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 44;
    }

    public final void rebuildInGame_Siege() {
        boolean visible = this.menus.get(this.IN_GAME).get(this.IN_GAME_SIEGE).getVisible();
        this.menus.get(this.IN_GAME).get(this.IN_GAME_SIEGE).dispose();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_SIEGE, new InGame_ProvinceSiege());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_SIEGE).setVisible(true);
        Game.hoverManager.rebuildHoverAfterRebuildMenu();
        setOrderOfMenu(this.IN_GAME_SIEGE);
        if (visible) {
            InGame_ProvinceSiege.lTime = 0L;
        }
        hideCourtCiv();
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
    }

    public final void rebuildInGame_TakeLoan() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_TAKE_LOAN, new InGame_Loan());
        setVisibleInGame_TakeLoan(true);
    }

    public final void rebuildInGame_TakeLoanRepay() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_TAKE_LOAN_REPAY, new InGame_LoanRepay());
        setVisibleInGame_TakeLoanRepay(true);
    }

    public final void rebuildInGame_TechnologyChoose(boolean z, boolean z2) {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_CHOOSE_TECHNOLOGY, new InGame_TechnologyChoose());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setVisible(true);
        if (z2) {
            rebuildInGame_TechnologyChoose_HideMenus();
        }
        if (z) {
            this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setPosX(posX);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setPosY(posY);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setMenuPosX(menuPosX);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setMenuPosY(menuPosY);
        }
    }

    public final void rebuildInGame_TechnologyChoose_HideMenus() {
        hideCourtCiv();
        setVisibleInGame_Buildings(false, false);
        setVisibleInGame_Wonder(false);
        setVisibleInGame_Generals(false);
        setVisibleInGame_GeneralRecruit(false);
        if (getVisibleInGame_ProvinceArmy()) {
            setVisibleInGame_ProvinceArmy(false);
        }
        if (getVisibleInGame_Battle()) {
            setVisibleInGame_Battle(false);
        }
        if (getVisibleInGame_Siege()) {
            setVisibleInGame_Siege(false);
        }
        if (getVisibleInGame_War()) {
            setVisibleInGame_War(false);
        }
        if (getVisibleInGame_Peace()) {
            setVisibleInGame_Peace(false);
        }
        setVisibleInGame_ReorganizeUnits(false);
        setVisibleInGame_DisbandUnits(false);
        setVisibleInGame_RecruitArmy(false);
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
        if (getVisibleDeclareWar()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisible_SpecialAlliance()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleInGame_Nukes()) {
            setVisibleInGame_Nukes(false);
        }
        if (getVisibleInGame_CurrentSituation()) {
            setVisibleInGame_CurrentSituation(false);
        }
        if (getVisibleInGame_Armies()) {
            setVisibleInGame_Armies(false);
        }
        setVisibleInGame_ProvinceInfo(false);
        Game.gameActiveProvince.resetLastActiveProvince();
        Game.setActiveProvinceID(-1);
        Game.clearActiveArmy();
        setOrderOfMenu(this.IN_GAME_CHOOSE_TECHNOLOGY);
    }

    public final void rebuildInGame_TechnologyTree(boolean z, boolean z2) {
        int posX = this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).getPosX();
        int posY = this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).getPosY();
        int menuPosX = this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).getMenuPosX();
        int menuPosY = this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).getMenuPosY();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_TECHNOLOGY_TREE, new InGame_TechnologyTree());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setVisible(true);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE_EMPTY).setVisible(true);
        if (z) {
            this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setPosX(posX);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setPosY(posY);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setMenuPosX(menuPosX);
            this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setMenuPosY(menuPosY);
        }
        if (z2) {
            setOrderOfMenu_TechnologyTree();
        }
    }

    public final void rebuildInGame_Union(int i) {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_Union(i));
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 53;
    }

    public final void rebuildInGame_UpgradeCapital() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_UpgradeCapital());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 8;
    }

    public final void rebuildInGame_UpgradeMilitaryAcademy() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_UpgradeMilitaryAcademy());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 2;
    }

    public final void rebuildInGame_UpgradeMilitaryAcademyForGenerals() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_UpgradeMilitaryAcademyForGenerals());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 3;
    }

    public final void rebuildInGame_UpgradeNuclearReactor() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_UpgradeNuclearReactor());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 5;
    }

    public final void rebuildInGame_UpgradeSupremeCourt() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_POP_UP, new InGame_UpgradeSupremeCourt());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(true);
        setOrderOfMenu(this.IN_GAME_POP_UP);
        IN_GAME_POP_UP_MENU_ID = 4;
    }

    public final void rebuildInGame_War() {
        boolean visible = this.menus.get(this.IN_GAME).get(this.IN_GAME_WAR).getVisible();
        this.menus.get(this.IN_GAME).get(this.IN_GAME_WAR).dispose();
        this.menus.get(this.IN_GAME).set(this.IN_GAME_WAR, new InGame_War());
        this.menus.get(this.IN_GAME).get(this.IN_GAME_WAR).setVisible(true);
        Game.hoverManager.rebuildHoverAfterRebuildMenu();
        setOrderOfMenu(this.IN_GAME_WAR);
        if (visible) {
            InGame_War.lTime = 0L;
        }
        hideCourtCiv();
        showInGame_Battle_HideMenus();
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
        if (getVisibleInGame_Battle()) {
            setVisibleInGame_Battle(false);
        }
        if (getVisibleInGame_Siege()) {
            setVisibleInGame_Siege(false);
        }
        if (getVisibleInGame_Peace()) {
            setVisibleInGame_Peace(false);
        }
    }

    public final void rebuildInGame_Wars() {
        try {
            this.menus.get(this.IN_GAME).set(this.IN_GAME_WARS, new InGame_MessagesWars());
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void rebuildInGame_Wonder() {
        this.menus.get(this.IN_GAME).set(this.IN_GAME_WONDER, new InGame_Wonder(true));
        setVisibleInGame_Generals(false);
        setVisibleInGame_Buildings(false, false);
        setVisibleInGame_RecruitArmy(false);
        if (getVisibleInGame_Armies()) {
            setVisibleInGame_Armies(false);
        }
    }

    public final void rebuildMainMenu_Stats() {
        this.menus.get(this.MAINMENU_STATS).set(0, new MainMenu_Stats());
    }

    public final void rebuildNewGameCiv() {
        this.menus.get(this.NEW_GAME).set(this.NEW_GAME_CIV, new NewGameCiv());
    }

    public final void rebuildNewGame_Settings() {
        this.menus.get(this.NEW_GAME).set(this.NEW_GAME_SETTINGS, new NewGame_Settings());
        setVisible_NewGame_Settings(true);
    }

    public final void rebuildScenarioCivilizationsList() {
        int posX = this.menus.get(this.SCENARIO_CIVILIZATIONS).get(this.SCENARIO_CIVILIZATIONS_LIST).getPosX();
        int posY = this.menus.get(this.SCENARIO_CIVILIZATIONS).get(this.SCENARIO_CIVILIZATIONS_LIST).getPosY();
        int menuPosX = this.menus.get(this.SCENARIO_CIVILIZATIONS).get(this.SCENARIO_CIVILIZATIONS_LIST).getMenuPosX();
        int menuPosY = this.menus.get(this.SCENARIO_CIVILIZATIONS).get(this.SCENARIO_CIVILIZATIONS_LIST).getMenuPosY();
        this.menus.get(this.SCENARIO_CIVILIZATIONS).get(this.SCENARIO_CIVILIZATIONS_LIST).setVisible(false);
        this.menus.get(this.SCENARIO_CIVILIZATIONS).set(this.SCENARIO_CIVILIZATIONS_LIST, new ScenarioCivilizationsList());
        this.menus.get(this.SCENARIO_CIVILIZATIONS).get(this.SCENARIO_CIVILIZATIONS_LIST).setPosX(posX);
        this.menus.get(this.SCENARIO_CIVILIZATIONS).get(this.SCENARIO_CIVILIZATIONS_LIST).setPosY(posY);
        this.menus.get(this.SCENARIO_CIVILIZATIONS).get(this.SCENARIO_CIVILIZATIONS_LIST).setMenuPosX(menuPosX);
        this.menus.get(this.SCENARIO_CIVILIZATIONS).get(this.SCENARIO_CIVILIZATIONS_LIST).setMenuPosY(menuPosY);
    }

    public final void rebuildScenarioCoresList() {
        int posX = this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST).getPosX();
        int posY = this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST).getPosY();
        int menuPosX = this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST).getMenuPosX();
        int menuPosY = this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST).getMenuPosY();
        this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST).setVisible(false);
        this.menus.get(this.SCENARIO_CORES).set(this.SCENARIO_CORES_LIST, new ScenarioCores_List());
        this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST).setPosX(posX);
        this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST).setPosY(posY);
        this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST).setMenuPosX(menuPosX);
        this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST).setMenuPosY(menuPosY);
    }

    public final void rebuildScenarioCoresList_InProvince() {
        int posX = this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST_IN_PROVINCE).getPosX();
        int posY = this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST_IN_PROVINCE).getPosY();
        int menuPosX = this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST_IN_PROVINCE).getMenuPosX();
        int menuPosY = this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST_IN_PROVINCE).getMenuPosY();
        this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST_IN_PROVINCE).setVisible(false);
        this.menus.get(this.SCENARIO_CORES).set(this.SCENARIO_CORES_LIST_IN_PROVINCE, new ScenarioCores_InProvinces());
        this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST_IN_PROVINCE).setPosX(posX);
        this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST_IN_PROVINCE).setPosY(posY);
        this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST_IN_PROVINCE).setMenuPosX(menuPosX);
        this.menus.get(this.SCENARIO_CORES).get(this.SCENARIO_CORES_LIST_IN_PROVINCE).setMenuPosY(menuPosY);
    }

    public final void rebuildScenarioReligionList() {
        int posX = this.menus.get(this.SCENARIO_RELIGION).get(this.SCENARIO_RELIGION_LIST).getPosX();
        int posY = this.menus.get(this.SCENARIO_RELIGION).get(this.SCENARIO_RELIGION_LIST).getPosY();
        int menuPosX = this.menus.get(this.SCENARIO_RELIGION).get(this.SCENARIO_RELIGION_LIST).getMenuPosX();
        int menuPosY = this.menus.get(this.SCENARIO_RELIGION).get(this.SCENARIO_RELIGION_LIST).getMenuPosY();
        this.menus.get(this.SCENARIO_RELIGION).get(this.SCENARIO_RELIGION_LIST).setVisible(false);
        this.menus.get(this.SCENARIO_RELIGION).set(this.SCENARIO_RELIGION_LIST, new ScenarioReligion_List());
        this.menus.get(this.SCENARIO_RELIGION).get(this.SCENARIO_RELIGION_LIST).setPosX(posX);
        this.menus.get(this.SCENARIO_RELIGION).get(this.SCENARIO_RELIGION_LIST).setPosY(posY);
        this.menus.get(this.SCENARIO_RELIGION).get(this.SCENARIO_RELIGION_LIST).setMenuPosX(menuPosX);
        this.menus.get(this.SCENARIO_RELIGION).get(this.SCENARIO_RELIGION_LIST).setMenuPosY(menuPosY);
    }

    public final void rebuildScenario_Calendar() {
        this.menus.get(this.SCENARIO_SETTINGS).set(this.SCENARIO_CALENDAR, new Scenario_Calendar(true));
        setOrderOfMenu(this.SCENARIO_CALENDAR);
    }

    public final void rebuildSettingsAudio() {
        this.menus.get(this.SETTINGS).set(1, new InGame_Audio());
        this.menus.get(this.SETTINGS).get(1).setVisible(true);
        setOrderOfMenu(1);
    }

    public final void rebuild_NewGame_Encyclopedia() {
        this.menus.get(this.NEW_GAME).set(this.NEW_GAME_SETTINGS, new InGame_Encyclopedia());
        this.menus.get(this.NEW_GAME).get(this.NEW_GAME_SETTINGS).setVisible(true);
    }

    public final void rebuild_NewGame_Settings() {
        this.menus.get(this.NEW_GAME).set(this.NEW_GAME_SETTINGS, new NewGame_Settings());
        this.menus.get(this.NEW_GAME).get(this.NEW_GAME_SETTINGS).setVisible(true);
    }

    public final void savePosInGame_Buildings2() {
        InGame_Court_Buildings2.savePos_X = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosX();
        InGame_Court_Buildings2.savePos_Y = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getPosY();
        InGame_Court_Buildings2.saveMenuPos_X = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosX();
        InGame_Court_Buildings2.saveMenuPos_Y = this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).getMenuPosY();
    }

    public final void setActiveMenuElementID(int i) {
        this.activeMenuElementID = i;
    }

    public final void setActiveSliderMenuID(int i) {
        this.activeSliderMenuID = i;
    }

    public final void setBackAnimation(boolean z) {
        this.backAnimation = z;
    }

    public final void setCloseMenuMode(boolean z) {
        this.closeMenuMode = z;
    }

    public final void setColorPickerMode(boolean z) {
        this.colorPickerMode = z;
    }

    public final void setInGame_CivOptions_Title(String str) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT_OPTIONS).getTitle().setText(str);
    }

    public final void setMenu_MoveByTitleMode(boolean z) {
        this.menu_MoveByTitleMode = z;
    }

    public final void setMenu_MoveInnerElements(boolean z) {
        this.menu_MoveInnerElements = z;
    }

    public final void setMenu_ResizeMode(boolean z) {
        this.menuResizeMode = z;
    }

    public final void setOrderInGame_Buildings() {
        setOrderOfMenu(this.IN_GAME_BUILDINGS);
        setOrderOfMenu(this.IN_GAME_BUILDINGS_GROUP_0);
        setOrderOfMenu(this.IN_GAME_BUILDINGS_GROUP_1);
        setOrderOfMenu(this.IN_GAME_BUILDINGS_GROUP_2);
        setOrderOfMenu(this.IN_GAME_BUILDINGS_GROUP_3);
    }

    public final void setOrderInGame_Generals() {
        setOrderOfMenu(this.IN_GAME_GENERALS);
    }

    public final void setOrderOfMenu(int i) {
        boolean z;
        try {
            orderOfMenuInGame = false;
            int i2 = 0;
            while (true) {
                if (i2 >= this.orderOfMenu.get(this.viewID).size()) {
                    z = false;
                    break;
                } else {
                    if (this.orderOfMenu.get(this.viewID).get(i2).intValue() == i) {
                        i = this.orderOfMenu.get(this.viewID).get(i2).intValue();
                        if (i2 != 0) {
                            z = true;
                            break;
                        }
                        return;
                    }
                    i2++;
                }
            }
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(i));
                for (int i3 = 0; i3 < this.orderOfMenu.get(this.viewID).size(); i3++) {
                    if (this.orderOfMenu.get(this.viewID).get(i3).intValue() != i) {
                        arrayList.add(this.orderOfMenu.get(this.viewID).get(i3));
                    }
                }
                this.orderOfMenu.set(this.viewID, arrayList);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void setOrderOfMenu_BattleFull() {
        setOrderOfMenu(this.IN_GAME_BATTLE_FULL_EMPTY);
        setOrderOfMenu(this.IN_GAME_BATTLE_FULL);
    }

    public final void setOrderOfMenu_InGame() {
        setOrderOfMenu(0);
        setOrderOfMenu(this.IN_GAME_MAPMODES);
        setOrderOfMenu(this.IN_GAME_COURT_OPTIONS2);
        orderOfMenuInGame = true;
    }

    public final void setOrderOfMenu_InGameBattle() {
        setOrderOfMenu(this.IN_GAME_BATTLE);
        setOrderOfMenu(this.IN_GAME_BATTLE_ARMY);
        setOrderOfMenu(this.IN_GAME_BATTLE_ARMY_DEFENDERS);
    }

    public final void setOrderOfMenu_InGameBuildings() {
        setOrderOfMenu(this.IN_GAME_BUILDINGS);
        setOrderOfMenu(this.IN_GAME_BUILDINGS_GROUP_0);
        setOrderOfMenu(this.IN_GAME_BUILDINGS_GROUP_1);
        setOrderOfMenu(this.IN_GAME_BUILDINGS_GROUP_2);
        setOrderOfMenu(this.IN_GAME_BUILDINGS_GROUP_3);
    }

    public final void setOrderOfMenu_InGameCourt() {
        setOrderOfMenu(this.IN_GAME_COURT);
        setOrderOfMenu(this.IN_GAME_COURT_OPTIONS);
        setOrderOfMenu(this.IN_GAME_COURT_OPTIONS2);
    }

    public final void setOrderOfMenu_InGameEscape() {
        setOrderOfMenu(this.IN_GAME_ESCAPE_EMPTY);
        setOrderOfMenu(this.IN_GAME_ESCAPE);
    }

    public final void setOrderOfMenu_InGameGoods() {
        setOrderOfMenu(this.IN_GAME_GOODS_EMPTY);
        setOrderOfMenu(this.IN_GAME_GOODS);
    }

    public final void setOrderOfMenu_InGameLegacies() {
        setOrderOfMenu(this.IN_GAME_LEGACIES_EMPTY);
        setOrderOfMenu(0);
        setOrderOfMenu(this.IN_GAME_LEGACIES_INFO);
    }

    public final void setOrderOfMenu_InGameProvinceArmy() {
        setOrderOfMenu(this.IN_GAME_PROVINCE_ARMY);
        setOrderOfMenu(this.IN_GAME_PROVINCE_ARMY_UNITS);
        setOrderOfMenu(this.IN_GAME_PROVINCE_ARMY_TOP_BAR);
        setOrderOfMenu(this.IN_GAME_PROVINCE_ARMY_MOVE);
    }

    public final void setOrderOfMenu_InGameProvinceInfo() {
        setOrderOfMenu(this.IN_GAME_PROVINCE_INFO);
        setOrderOfMenu(this.IN_GAME_PROVINCE_INFO_BUILDINGS);
        setOrderOfMenu(this.IN_GAME_PROVINCE_INFO_ARMY);
    }

    public final void setOrderOfMenu_MainMenu_Stats() {
        setOrderOfMenu(1);
        setOrderOfMenu(0);
    }

    public final void setOrderOfMenu_Scenarios() {
        setOrderOfMenu(0);
        setOrderOfMenu(1);
    }

    public final void setOrderOfMenu_TechnologyTree() {
        setOrderOfMenu(this.IN_GAME_TECHNOLOGY_TREE_EMPTY);
        setOrderOfMenu(this.IN_GAME_TECHNOLOGY_TREE);
    }

    public final void setPieChartMode(boolean z) {
        this.pieChartMode = z;
    }

    public final void setTextScrollableMode(boolean z) {
        this.textScrollableMode = z;
    }

    public final void setUpdateSliderMenuPosX(boolean z) {
        this.updateSliderMenuPosX = z;
    }

    public final void setUpdateSliderMenuPosY(boolean z) {
        this.updateSliderMenuPosY = z;
    }

    public final void setViewID(View view) {
        Game.hoverManager.resetHoverActive_Menu();
        this.fromViewID = this.viewID;
        int viewID = getViewID(view);
        this.viewID = viewID;
        this.toViewID = viewID;
        updateDrawProvinces();
        ProvinceTouchExtraAction.updateExtraAction();
        AA_KeyManager.updateKeyExtraAction();
        ProvinceBorderManager.updateAction();
        ProvinceDraw.updateDrawMoveUnits();
        Game.mapBG.updateWorldMap();
    }

    public final void setViewIDWithoutAnimation(View view) {
        Game.hoverManager.resetHoverActive_Menu();
        this.viewID = getViewID(view);
        updateDrawProvinces();
        ProvinceTouchExtraAction.updateExtraAction();
        AA_KeyManager.updateKeyExtraAction();
        ProvinceBorderManager.updateAction();
        ProvinceDraw.updateDrawMoveUnits();
        Game.mapBG.updateWorldMap();
    }

    public final void setVisibleInGame_AdvisorRecruit(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_ADVISOR_RECRUIT).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_ADVISOR_RECRUIT);
        }
    }

    public final void setVisibleInGame_Armies(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_ARMIES).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_ARMIES);
        }
    }

    public final void setVisibleInGame_Battle(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_ARMY).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_ARMY_DEFENDERS).setVisible(z);
        if (z) {
            hideCourtCiv();
            setOrderOfMenu(this.IN_GAME_BATTLE);
            setOrderOfMenu(this.IN_GAME_BATTLE_ARMY);
            setOrderOfMenu(this.IN_GAME_BATTLE_ARMY_DEFENDERS);
        }
    }

    public final void setVisibleInGame_BattleFull(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_FULL).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BATTLE_FULL_EMPTY).setVisible(z);
        if (z) {
            setOrderOfMenu_BattleFull();
        }
    }

    public final void setVisibleInGame_Budget(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BUDGET).setVisible(z);
        if (!z) {
            setVisibleInGame_AdvisorRecruit(false);
            return;
        }
        setVisibleInGame_Civ(false);
        setVisibleInGame_Court(false);
        hideCivCourt_Menus();
        if (getVisibleInGame_GoodsMarket()) {
            setVisibleInGame_GoodsMarket(false);
        }
        setOrderOfMenu(this.IN_GAME_BUDGET);
    }

    public final void setVisibleInGame_Buildings(boolean z, boolean z2) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_0).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_1).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_2).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_BUILDINGS_GROUP_3).setVisible(z);
        if (z && z2) {
            setVisibleInGame_RecruitArmy(false);
            setVisibleInGame_Generals(false);
            if (getVisibleInGame_Armies()) {
                setVisibleInGame_Armies(false);
            }
            setVisibleInGame_TechnologyChoose(false);
            setVisibleInGame_TechnologyTree(false);
            if (getVisibleDeclareWar()) {
                setVisibleInGame_PopUp(false);
            }
            if (getVisible_SpecialAlliance()) {
                setVisibleInGame_PopUp(false);
            }
            if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
                setVisibleInGame_PopUp(false);
            }
            if (getVisibleInGame_Nukes()) {
                setVisibleInGame_Nukes(false);
            }
            if (getVisibleInGame_CurrentSituation()) {
                setVisibleInGame_CurrentSituation(false);
            }
            setOrderInGame_Buildings();
        }
    }

    public final void setVisibleInGame_Civ(boolean z) {
        if (!z && this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).getVisible()) {
            InGame_Civ.actionOnClose();
        }
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV).setVisible(z);
        if (!z) {
            setVisibleInGame_CivBonuses(false);
        }
        if (z) {
            if (getVisibleInGame_Court()) {
                setVisibleInGame_Court(false);
            }
            if (getVisibleInGame_Budget()) {
                setVisibleInGame_Budget(false);
            }
            hideCivCourt_Menus();
            if (getVisibleInGame_GoodsMarket()) {
                setVisibleInGame_GoodsMarket(false);
            }
            setOrderOfMenu(this.IN_GAME_CIV);
        }
    }

    public final void setVisibleInGame_CivBonuses(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CIV_BONUSES).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_CIV_BONUSES);
        }
    }

    public final void setVisibleInGame_Console(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CONSOLE).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_CONSOLE);
        }
    }

    public final void setVisibleInGame_Court(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT_OPTIONS).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_COURT_OPTIONS2).setVisible(Game.settingsManager.enableHideSideMenu ? z : true);
        if (!z) {
            InGame_CourtOptions.iActiveID = -1;
            setVisibleInGame_AdvisorRecruit(false);
            InGame_CourtOptions.disableAllViews();
        } else {
            setVisibleInGame_Civ(false);
            setVisibleInGame_Budget(false);
            hideCivCourt_Menus();
            if (getVisibleInGame_GoodsMarket()) {
                setVisibleInGame_GoodsMarket(false);
            }
            setOrderOfMenu_InGameCourt();
        }
    }

    public final void setVisibleInGame_CurrentSituation(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CURRENT_SITUATION).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_CURRENT_SITUATION);
        }
    }

    public final void setVisibleInGame_DisbandUnits(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_DISBAND_UNITS).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_DISBAND_UNITS);
        }
    }

    public final void setVisibleInGame_Escape(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_ESCAPE_EMPTY).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_ESCAPE).setVisible(z);
        if (z) {
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
            setOrderOfMenu_InGameEscape();
        }
        Game.mapBG.updateActiveMapBGShader();
    }

    public final void setVisibleInGame_Event(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_EVENT).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_EVENT);
        }
    }

    public final void setVisibleInGame_GeneralRecruit(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GENERAL_RECRUIT).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_GENERAL_RECRUIT);
        }
    }

    public final void setVisibleInGame_Generals(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GENERALS).setVisible(z);
        if (z) {
            hideCourtCiv();
            setVisibleInGame_TechnologyChoose(false);
            setVisibleInGame_TechnologyTree(false);
            setVisibleInGame_Buildings(false, false);
            setVisibleInGame_Wonder(false);
            setVisibleInGame_RecruitArmy(false);
            if (getVisibleInGame_GoodsMarket()) {
                setVisibleInGame_GoodsMarket(false);
            }
            setOrderOfMenu(this.IN_GAME_GENERALS);
        }
    }

    public final void setVisibleInGame_Goods(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS_EMPTY).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS).setVisible(z);
        if (z) {
            setOrderOfMenu_InGameGoods();
        }
    }

    public final void setVisibleInGame_GoodsMarket(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_GOODS_CIV).setVisible(z);
        setOrderOfMenu(this.IN_GAME_GOODS_CIV);
    }

    public final void setVisibleInGame_Info(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_INFO).setVisible(z);
    }

    public final void setVisibleInGame_MissionTree(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE_EMPTY).setVisible(z);
        if (z) {
            setOrderOfMenu_TechnologyTree();
        }
    }

    public final void setVisibleInGame_Notifications(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_NOTIFICATION).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_NOTIFICATION);
        }
    }

    public final void setVisibleInGame_Nukes(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_NUKES).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_NUKES);
        }
    }

    public final void setVisibleInGame_Peace(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PEACE).setVisible(z);
        if (z) {
            hideCourtCiv();
            setOrderOfMenu(this.IN_GAME_PEACE);
        }
    }

    public final void setVisibleInGame_PopUp(boolean z) {
        if (z) {
            return;
        }
        this.menus.get(this.IN_GAME).get(this.IN_GAME_POP_UP).setVisible(z);
    }

    public final void setVisibleInGame_ProvinceArmy(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_UNITS).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_TOP_BAR).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_ARMY_MOVE).setVisible(z);
        if (z) {
            hideCourtCiv();
            setOrderOfMenu(this.IN_GAME_PROVINCE_ARMY);
            setOrderOfMenu(this.IN_GAME_PROVINCE_ARMY_UNITS);
            setOrderOfMenu(this.IN_GAME_PROVINCE_ARMY_TOP_BAR);
            setOrderOfMenu(this.IN_GAME_PROVINCE_ARMY_MOVE);
        }
    }

    public final void setVisibleInGame_ProvinceBonuses(boolean z, boolean z2) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_BONUSES).setVisible(z);
        if (z && z2) {
            setOrderOfMenu(this.IN_GAME_PROVINCE_BONUSES);
        }
    }

    public final void setVisibleInGame_ProvinceInfo(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_INFO).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_INFO_BUILDINGS).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_INFO_ARMY).setVisible(z);
        if (z) {
            hideCourtCiv();
            setOrderOfMenu(this.IN_GAME_PROVINCE_INFO);
            setOrderOfMenu(this.IN_GAME_PROVINCE_INFO_BUILDINGS);
            setOrderOfMenu(this.IN_GAME_PROVINCE_INFO_ARMY);
            return;
        }
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode && Keyboard.keyboardActionType == Keyboard.KeyboardActionType.INGAME_RENAME_PROVINCE) {
            Game.keyboard.hideKeyboard();
        }
        setVisibleInGame_Buildings(false, false);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_BONUSES).setVisible(false);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_PROVINCE_INFO_ARMY).setVisible(false);
    }

    public final void setVisibleInGame_RecruitArmy(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY).setVisible(z);
        if (z) {
            hideMenus_RecruitArmy(z);
        } else {
            this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD).setVisible(false);
        }
    }

    public final void setVisibleInGame_RecruitArmy_Battlefield(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RECRUIT_ARMY_BATTLEFIELD).setVisible(z);
    }

    public final void setVisibleInGame_ReorganizeUnits(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_REORGANIZE_UNITS).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_REORGANIZE_UNITS);
        }
    }

    public final void setVisibleInGame_Right(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_RIGHT).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_RIGHT);
        }
    }

    public final void setVisibleInGame_SaveGame(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_SAVE_GAME).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_SAVE_GAME);
        }
    }

    public final void setVisibleInGame_Siege(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_SIEGE).setVisible(z);
        if (z) {
            hideCourtCiv();
            setOrderOfMenu(this.IN_GAME_SIEGE);
        }
    }

    public final void setVisibleInGame_TakeLoan(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_TAKE_LOAN).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_TAKE_LOAN);
        }
    }

    public final void setVisibleInGame_TakeLoanRepay(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_TAKE_LOAN_REPAY).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_TAKE_LOAN_REPAY);
        }
    }

    public final void setVisibleInGame_TechnologyChoose(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_CHOOSE_TECHNOLOGY).setVisible(z);
        if (z) {
            setOrderOfMenu(this.IN_GAME_CHOOSE_TECHNOLOGY);
        }
    }

    public final void setVisibleInGame_TechnologyTree(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE).setVisible(z);
        this.menus.get(this.IN_GAME).get(this.IN_GAME_TECHNOLOGY_TREE_EMPTY).setVisible(z);
        if (z) {
            setOrderOfMenu_TechnologyTree();
        }
    }

    public final void setVisibleInGame_War(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_WAR).setVisible(z);
        if (z) {
            hideCourtCiv();
            setOrderOfMenu(this.IN_GAME_WAR);
        }
    }

    public final void setVisibleInGame_Wonder(boolean z) {
        this.menus.get(this.IN_GAME).get(this.IN_GAME_WONDER).setVisible(z);
    }

    public final void setVisibleScenario_Calendar(boolean z) {
        this.menus.get(this.SCENARIO_SETTINGS).get(this.SCENARIO_CALENDAR).setVisible(z);
    }

    public final void setVisibleSettingsAudio(boolean z) {
        this.menus.get(this.SETTINGS).get(1).setVisible(z);
    }

    public final void setVisible_NewGame_Settings(boolean z) {
        this.menus.get(this.NEW_GAME).get(this.NEW_GAME_SETTINGS).setVisible(z);
    }

    public final void showInGame_Battle_HideMenus() {
        if (getVisibleInGame_ProvinceInfo()) {
            setVisibleInGame_ProvinceInfo(false);
        }
        if (getVisibleInGame_RecruitArmy()) {
            setVisibleInGame_RecruitArmy(false);
        }
        if (getVisibleInGame_Buildings()) {
            setVisibleInGame_Buildings(false, false);
        }
        if (getVisibleInGame_ProvinceArmy()) {
            setVisibleInGame_ProvinceArmy(false);
        }
        if (getVisibleInGame_DisbandArmy()) {
            setVisibleInGame_DisbandUnits(false);
        }
        if (getVisibleInGame_ReorganizeUnits()) {
            setVisibleInGame_ReorganizeUnits(false);
        }
        if (getVisibleInGame_TechnologyChoose()) {
            setVisibleInGame_TechnologyChoose(false);
        }
        if (getVisibleInGame_TechnologyTree()) {
            setVisibleInGame_TechnologyTree(false);
        }
        if (getVisibleDeclareWar()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisible_SpecialAlliance()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleFormCiv() || getVisibleSellProvince() || getVisibleRevolutions()) {
            setVisibleInGame_PopUp(false);
        }
        if (getVisibleInGame_Nukes()) {
            setVisibleInGame_Nukes(false);
        }
        if (getVisibleInGame_CurrentSituation()) {
            setVisibleInGame_CurrentSituation(false);
        }
        if (getVisibleInGame_Armies()) {
            setVisibleInGame_Armies(false);
        }
    }

    protected final void startMenuResizeMode(int i, int i2, int i3, boolean z) {
        this.menuResizeMode = true;
        this.activeSliderMenuID = i;
        this.iSliderMenuStartPosX = getActiveMenu().get(this.activeSliderMenuID).getWidth() - i2;
        this.iSliderMenuStartPosY = getActiveMenu().get(this.activeSliderMenuID).getHeight() - i3;
        this.menuResizeLEFT = z;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x002b A[Catch: Exception -> 0x0074, TryCatch #0 {Exception -> 0x0074, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x0021, B:8:0x002b, B:9:0x002e, B:10:0x0034, B:12:0x003e, B:14:0x004e, B:17:0x006b, B:16:0x005e, B:18:0x006e), top: B:23:0x0000 }] */
    public final void update() {
        try {
            if (this.fromViewID >= 0) {
                int i = this.animationStepID;
                this.animationStepID = i + 1;
                float fChangeAnimationPos = CFG.changeAnimationPos(i, this.animationChangeViewPosX, this.backAnimation, CFG.GAME_WIDTH);
                this.animationChangeViewPosX = fChangeAnimationPos;
                if (Math.abs(fChangeAnimationPos) < CFG.GAME_WIDTH) {
                    int i2 = Renderer.uFPS.iNumOfFPS;
                    FPS fps = Renderer.uFPS;
                    if (i2 < 22) {
                        resetChangeViewMode();
                    }
                } else {
                    resetChangeViewMode();
                }
            }
            Game.hoverManager.udpateMobile();
            for (int i3 = 0; i3 < getActiveMenu().size(); i3++) {
                if (getActiveMenu().get(i3).getScrollableY() || getActiveMenu().get(i3).getScrollableX()) {
                    getActiveMenu().get(i3).update();
                }
            }
            Game.hoverManager.updateHoveredElement();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateInGameFlag() {
        try {
            this.menus.get(this.IN_GAME).get(0).getMenuElement(0).updateLanguage();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    protected final void updateLanguage() {
        for (int i = 0; i < this.menus.size(); i++) {
            for (int i2 = 0; i2 < this.menus.get(i).size(); i2++) {
                this.menus.get(i).get(i2).updateLanguage();
            }
        }
        this.dialogMenu.updateLanguage();
    }
}
