package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.WondersManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonWonder;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions2;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Wonder extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iProvinceID;
    public static long lTime;
    public static boolean rebuildMenu;
    public static Image wonderIMG;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Wonder$1, reason: invalid class name */
    class AnonymousClass1 extends TextBonus {
        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapCoords.centerToProvinceID(InGame_Wonder.iProvinceID);
            Game.setActiveProvinceID(InGame_Wonder.iProvinceID);
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Wonder$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(InGame_Wonder.iProvinceID).getCivID() != Game.player.iCivID || Game.getProvince(InGame_Wonder.iProvinceID).wonderID < 0) {
                return;
            }
            if (!Game.getProvince(InGame_Wonder.iProvinceID).buildWonder()) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(WondersManager.getWonderConstructionCost(InGame_Wonder.iProvinceID, Game.getProvince(InGame_Wonder.iProvinceID).wonderID), 100), Images.gold);
                return;
            }
            Game.hoverManager.resetHoverActive_Menu_Force();
            Game.menuManager.rebuildInGame_Wonder();
            InGame_Wonder.lTime = 0L;
            Game.player.currSituation.updateCurrentSituation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.getProvince(InGame_Wonder.iProvinceID).getCivID() != Game.player.iCivID) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ConstructAWonder") + ": ", CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(WondersManager.wonders.get(Game.getProvince(InGame_Wonder.iProvinceID).wonderID).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(WondersManager.getWonderConstructionCost(InGame_Wonder.iProvinceID, Game.getProvince(InGame_Wonder.iProvinceID).wonderID), 10), CFG.FONT_BOLD_SMALL, Game.getCiv(Game.player.iCivID).fGold >= ((float) WondersManager.wonders.get(Game.getProvince(InGame_Wonder.iProvinceID).wonderID).CostGold) ? Colors.HOVER_GOLD : Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(ClXgFvsSKQc.owItahSYVxiJKpe) + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get("DaysX", WondersManager.wonders.get(Game.getProvince(InGame_Wonder.iProvinceID).wonderID).ConstructionTime), CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.buildTime, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Wonder$3, reason: invalid class name */
    class AnonymousClass3 extends MenuTitleIMG_FlagCenter {
        AnonymousClass3(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return Game.getProvince(InGame_Wonder.iProvinceID).getCivID();
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Wonder.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Wonder$4, reason: invalid class name */
    class AnonymousClass4 extends MenuTitleIMG {
        AnonymousClass4(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Wonder.lTime;
        }
    }

    /* JADX WARN: Code duplicated, block: B:458:0x27fb  */
    /* JADX WARN: Code duplicated, block: B:460:0x2817  */
    /* JADX WARN: Code duplicated, block: B:464:0x2858  */
    /* JADX WARN: Code duplicated, block: B:465:0x287b  */
    /* JADX WARN: Code duplicated, block: B:467:0x2897  */
    /* JADX WARN: Code duplicated, block: B:474:0x2831 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:475:? A[RETURN, SYNTHETIC] */
    public InGame_Wonder(boolean z) {
        int height;
        int i;
        int size;
        int posY;
        int i2;
        int iMin;
        String str = TGqtTWl.kEoMhbF;
        ArrayList arrayList = new ArrayList();
        int i3 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int otherMenuPosX_2 = InGame_CourtOptions2.getOtherMenuPosX_2();
        int height2 = ImageManager.getImage(Images.title1Red).getHeight() + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i4 = CFG.PADDING * 2;
        int i5 = Images.boxTitleBORDERWIDTH;
        int i6 = CFG.PADDING;
        if (z) {
            try {
                try {
                    Image image = wonderIMG;
                    if (image != null) {
                        image.dispose();
                        wonderIMG = null;
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
                if (FileManager.loadFile(str + Game.map.getFile_ActiveMap_Path() + "wonders/wondersImagesBig/" + CFG.getRescouresPath_Short() + WondersManager.wonders.get(Game.getProvince(iProvinceID).wonderID).ImageID + ".png").exists()) {
                    wonderIMG = new Image(ImageManager.loadTexture(str + Game.map.getFile_ActiveMap_Path() + "wonders/wondersImagesBig/" + CFG.getRescouresPath_Short() + WondersManager.wonders.get(Game.getProvince(iProvinceID).wonderID).ImageID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                } else {
                    wonderIMG = new Image(ImageManager.loadTexture(str + Game.map.getFile_ActiveMap_Path() + "wonders/wondersImagesBig/" + CFG.getRescouresPath_Short_H() + WondersManager.wonders.get(Game.getProvince(iProvinceID).wonderID).ImageID + ".png"), Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge);
                }
                arrayList.add(new ButtonWonder(Images.boxTitleBORDERWIDTH, 0));
                height = arrayList.get(arrayList.size() - 1).getHeight() + i4 + 0;
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
                height = 0;
            }
        } else {
            height = 0;
        }
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        int i7 = Game.getProvince(iProvinceID).wonderID;
        arrayList.add(new AnonymousClass1(Game.lang.get("Province") + ": ", Game.getProvince(iProvinceID).getProvinceName(), Images.provinces, Images.boxTitleBORDERWIDTH + CFG.PADDING, height, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
        int height3 = height + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (i7 >= 0) {
            if (WondersManager.wonders.get(i7).MonthlyIncome != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("MonthlyIncome") + ": ", "" + (WondersManager.wonders.get(i7).MonthlyIncome > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).MonthlyIncome, 100) + "", Images.gold, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).LocalTaxEfficiency != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("LocalTaxEfficiency") + ": ", "" + (WondersManager.wonders.get(i7).LocalTaxEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).LocalTaxEfficiency, 100) + "%", Images.gold, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).TaxEfficiency != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("TaxEfficiency") + ": ", "" + (WondersManager.wonders.get(i7).TaxEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).TaxEfficiency, 100) + "%", Images.gold, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).ProductionEfficiency != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ProductionEfficiency") + ": ", "" + (WondersManager.wonders.get(i7).ProductionEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).ProductionEfficiency, 100) + "%", Images.goods, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).ProvinceMaintenance != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ProvinceMaintenance") + ": ", "" + (WondersManager.wonders.get(i7).ProvinceMaintenance > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).ProvinceMaintenance, 100) + "%", Images.provinces, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).BuildingsMaintenanceCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("BuildingsMaintenanceCost") + ": ", "" + (WondersManager.wonders.get(i7).BuildingsMaintenanceCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).BuildingsMaintenanceCost * 100.0f, 100) + "%", Images.buildings, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).Economy != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("Economy") + ": ", "" + (WondersManager.wonders.get(i7).Economy > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).Economy, 100) + "", Game_Calendar.IMG_ECONOMY, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).GrowthRate != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("GrowthRate") + ": ", "" + (WondersManager.wonders.get(i7).GrowthRate > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).GrowthRate, 100) + "%", Images.populationGrowth, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).Research != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("Research") + ": ", "" + (WondersManager.wonders.get(i7).Research > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).Research, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).ResearchPoints != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ResearchPerMonth") + ": ", "" + (WondersManager.wonders.get(i7).ResearchPoints > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).ResearchPoints, 100) + "", Game_Calendar.IMG_TECHNOLOGY, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).TechnologyCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("TechnologyCost") + ": ", "" + (WondersManager.wonders.get(i7).TechnologyCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).TechnologyCost, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).MonthlyLegacy != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("MonthlyLegacy") + ": ", "" + (WondersManager.wonders.get(i7).MonthlyLegacy > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).MonthlyLegacy, 100) + "", Images.legacy, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).ArmyMaintenance != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ArmyMaintenance") + ": ", "" + (WondersManager.wonders.get(i7).ArmyMaintenance > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).ArmyMaintenance, 100) + "%", Images.armyMaintenance, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).MaxManpower != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("MaximumManpower") + ": ", "" + (WondersManager.wonders.get(i7).MaxManpower > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).MaxManpower, 100) + "", Game_Calendar.IMG_MANPOWER_UP, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).ManpowerRecoverySpeed != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ManpowerRecoverySpeed") + ": ", "" + (WondersManager.wonders.get(i7).ManpowerRecoverySpeed > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).ManpowerRecoverySpeed * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER_TIME, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).RecruitmentTime != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("RecruitmentTime") + ": ", "" + (WondersManager.wonders.get(i7).RecruitmentTime > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).RecruitmentTime, 100) + "%", Game_Calendar.IMG_MANPOWER_TIME, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).RecruitArmyCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ArmyRecruitmentCost") + ": ", "" + (WondersManager.wonders.get(i7).RecruitArmyCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).RecruitArmyCost, 100) + "%", Images.gold, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).RecruitArmyFirstLineCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("FirstLineArmyRecruitmentCost") + ": ", "" + (WondersManager.wonders.get(i7).RecruitArmyFirstLineCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).RecruitArmyFirstLineCost, 100) + "%", Images.gold, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).RecruitArmySecondLineCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("SecondLineArmyRecruitmentCost") + ": ", "" + (WondersManager.wonders.get(i7).RecruitArmySecondLineCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).RecruitArmySecondLineCost, 100) + "%", Images.gold, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).ConstructionCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ConstructionCost") + ": ", "" + (WondersManager.wonders.get(i7).ConstructionCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).ConstructionCost * 100.0f, 100) + "%", Images.construction, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).AdministrationBuildingsCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("AdministrationBuildingsCost") + ": ", "" + (WondersManager.wonders.get(i7).AdministrationBuildingsCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).AdministrationBuildingsCost * 100.0f, 100) + "%", Images.construction, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).EconomyBuildingsCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("EconomyBuildingsCost") + ": ", "" + (WondersManager.wonders.get(i7).EconomyBuildingsCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).EconomyBuildingsCost * 100.0f, 100) + "%", Images.construction, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).MilitaryBuildingsCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("MilitaryBuildingsCost") + ": ", "" + (WondersManager.wonders.get(i7).MilitaryBuildingsCost > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).MilitaryBuildingsCost * 100.0f, 100) + "%", Images.construction, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).ConstructionTimeBonus != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ConstructionTime") + ": ", "" + (WondersManager.wonders.get(i7).ConstructionTimeBonus > 0.0f ? "+" : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).ConstructionTimeBonus * 100.0f, 100) + "%", Images.buildTime, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).MaxInfrastructure != 0) {
                arrayList.add(new TextBonus(Game.lang.get("MaximumInfrastructureLevel") + ": ", "" + (WondersManager.wonders.get(i7).MaxInfrastructure > 0 ? "+" : "") + WondersManager.wonders.get(i7).MaxInfrastructure, Images.infrastructure, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).AdvisorMaxLevel != 0) {
                arrayList.add(new TextBonus(Game.lang.get(PZBvyl.OaAeB) + ": ", "" + (WondersManager.wonders.get(i7).AdvisorMaxLevel > 0 ? r11 : "") + WondersManager.wonders.get(i7).AdvisorMaxLevel, Images.skill, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).AdvisorPoolSize != 0) {
                arrayList.add(new TextBonus(Game.lang.get(lOow.KyBOUCzmZIMs) + ": ", "" + (WondersManager.wonders.get(i7).AdvisorPoolSize > 0 ? r11 : "") + WondersManager.wonders.get(i7).AdvisorPoolSize, Images.council, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).BuildingSlot != 0) {
                arrayList.add(new TextBonus(Game.lang.get("BuildingSlot") + ": ", "" + (WondersManager.wonders.get(i7).BuildingSlot > 0 ? r11 : "") + WondersManager.wonders.get(i7).BuildingSlot, Images.build, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).InvestInEconomyCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("InvestInEconomyCost") + ": ", "" + (WondersManager.wonders.get(i7).InvestInEconomyCost > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).InvestInEconomyCost * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).IncreaseTaxEfficiencyCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", "" + (WondersManager.wonders.get(i7).IncreaseTaxEfficiencyCost > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).IncreaseTaxEfficiencyCost * 100.0f, 100) + "%", Images.taxUp, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).IncreaseGrowthRateCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("IncreaseGrowthRateCost") + ": ", "" + (WondersManager.wonders.get(i7).IncreaseGrowthRateCost > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).IncreaseGrowthRateCost * 100.0f, 100) + "%", Images.populationUp, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).DevelopInfrastructureCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("DevelopInfrastructureCost") + ": ", "" + (WondersManager.wonders.get(i7).DevelopInfrastructureCost > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).DevelopInfrastructureCost * 100.0f, 100) + "%", Images.infrastructureUp, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).IncreaseManpowerCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("IncreaseManpowerCost") + ": ", "" + (WondersManager.wonders.get(i7).IncreaseManpowerCost > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).IncreaseManpowerCost, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).GeneralAttack != 0) {
                arrayList.add(new TextBonus(Game.lang.get("GeneralsAttack") + ": ", "" + (WondersManager.wonders.get(i7).GeneralAttack > 0 ? r11 : "") + WondersManager.wonders.get(i7).GeneralAttack, Images.attack, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).GeneralDefense != 0) {
                arrayList.add(new TextBonus(Game.lang.get("GeneralsDefense") + ": ", "" + (WondersManager.wonders.get(i7).GeneralDefense > 0 ? r11 : "") + WondersManager.wonders.get(i7).GeneralDefense, Images.defense, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).UnitsAttack != 0) {
                arrayList.add(new TextBonus(Game.lang.get("UnitsAttack") + ": ", "" + (WondersManager.wonders.get(i7).UnitsAttack > 0 ? r11 : "") + WondersManager.wonders.get(i7).UnitsAttack, Images.attack, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).UnitsDefense != 0) {
                arrayList.add(new TextBonus(Game.lang.get("UnitsDefense") + ": ", "" + (WondersManager.wonders.get(i7).UnitsDefense > 0 ? r11 : "") + WondersManager.wonders.get(i7).UnitsDefense, Images.defense, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).MaxMorale != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("MaxMorale") + ": ", "" + (WondersManager.wonders.get(i7).MaxMorale > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).MaxMorale * 100.0f, 100) + "%", Images.morale, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).ArmyMovementSpeed != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ArmyMovementSpeed") + ": ", "" + (WondersManager.wonders.get(i7).ArmyMovementSpeed > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).ArmyMovementSpeed, 100) + "%", Images.movementSpeed, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).SiegeEffectiveness != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("SiegeEffectiveness") + ": ", "" + (WondersManager.wonders.get(i7).SiegeEffectiveness > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).SiegeEffectiveness * 100.0f, 100) + "%", Images.siege, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).ImproveRelationsModifier != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ImproveRelationsModifier") + ": ", "" + (WondersManager.wonders.get(i7).ImproveRelationsModifier > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).ImproveRelationsModifier, 100) + "%", Images.relations, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).IncomeFromVassals != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("IncomeFromVassals") + ": ", "" + (WondersManager.wonders.get(i7).IncomeFromVassals > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).IncomeFromVassals * 100.0f, 100) + "%", Images.vassal, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).LoanInterest != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("LoanInterest") + ": ", "" + (WondersManager.wonders.get(i7).LoanInterest > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).LoanInterest, 100) + "%", Images.loan, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).MaxNumberOfLoans != 0) {
                arrayList.add(new TextBonus(Game.lang.get("MaximumNumberOfLoans") + ": ", "" + (WondersManager.wonders.get(i7).MaxNumberOfLoans > 0 ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).MaxNumberOfLoans, 100) + "", Images.loan, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).DiplomacyPoints != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get(ALZmnpZHj.SJLWA) + ": ", "" + (WondersManager.wonders.get(i7).DiplomacyPoints > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).DiplomacyPoints * 100.0f, 100) + "%", Images.diplomacy, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).AggressiveExpansion != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("AggressiveExpansion") + ": ", "" + (WondersManager.wonders.get(i7).AggressiveExpansion > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).AggressiveExpansion, 100) + "%", Images.war, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).RevolutionaryRisk != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("RevolutionaryRisk") + ": ", "" + (WondersManager.wonders.get(i7).RevolutionaryRisk > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).RevolutionaryRisk, 100) + "%", Images.revolutionRisk, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).CoreCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("CoreConstruction") + ": ", "" + (WondersManager.wonders.get(i7).CoreCost > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).CoreCost, 100) + "%", Images.core, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).AllCharactersLifeExpectancy != 0) {
                arrayList.add(new TextBonus(Game.lang.get("AllCharactersLifeExpectancy") + ": ", "" + (WondersManager.wonders.get(i7).AllCharactersLifeExpectancy > 0 ? r11 : "") + Game.lang.get("YearsX", WondersManager.wonders.get(i7).AllCharactersLifeExpectancy), Images.council, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).DefenseBonus != 0) {
                arrayList.add(new TextBonus(Game.lang.get("Defense") + ": ", "" + (WondersManager.wonders.get(i7).DefenseBonus > 0 ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).DefenseBonus, 100), Images.defense, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).FortLevel != 0) {
                arrayList.add(new TextBonus(Game.lang.get("DefenseLevel") + ": ", "" + (WondersManager.wonders.get(i7).FortLevel > 0 ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).FortLevel, 100), Images.fort, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).FortDefense != 0) {
                arrayList.add(new TextBonus(Game.lang.get("ProvinceDefense") + ": ", "" + (WondersManager.wonders.get(i7).FortDefense > 0 ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).FortDefense, 100), Game_Calendar.IMG_FORT_DEFENSE, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).DiseaseDeathRate != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("DiseasesDeathRate") + ": ", "" + (WondersManager.wonders.get(i7).DiseaseDeathRate > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).DiseaseDeathRate * 100.0f, 100) + "%", Images.disease, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).MaximumAmountOfGold != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("MaximumAmountOfGold") + ": ", "" + (WondersManager.wonders.get(i7).MaximumAmountOfGold > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).MaximumAmountOfGold * 100.0f, 100) + "%", Images.gold, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).Discipline != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("Discipline") + ": ", "" + (WondersManager.wonders.get(i7).Discipline > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).Discipline * 100.0f, 100) + "%", Images.discipline, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).RegimentsLimit != 0) {
                arrayList.add(new TextBonus(Game.lang.get("RegimentsLimit") + ": ", "" + (WondersManager.wonders.get(i7).RegimentsLimit > 0 ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).RegimentsLimit, 1), Images.regimentsLimit, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).BattleWidth != 0) {
                arrayList.add(new TextBonus(Game.lang.get("BattleWidth") + ": ", "" + (WondersManager.wonders.get(i7).BattleWidth > 0 ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).BattleWidth, 1), Images.battleWidth, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).ManpowerRecoveryFromADisbandedArmy != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("ManpowerRecoveryFromADisbandedArmy") + ": ", "" + (WondersManager.wonders.get(i7).ManpowerRecoveryFromADisbandedArmy > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).ManpowerRecoveryFromADisbandedArmy * 100.0f, 100) + "%", Game_Calendar.IMG_MANPOWER_DISBAND, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).Legacy != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("Legacy") + ": ", "" + (WondersManager.wonders.get(i7).Legacy > 0.0f ? r11 : "") + CFG.getPrecision2(WondersManager.wonders.get(i7).Legacy, 100), Images.legacy, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (!Game.getProvince(iProvinceID).getWonderBuilt() && Game.getProvince(iProvinceID).wonderConstruction == null) {
                arrayList.add(new TextBonus(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(WondersManager.getWonderConstructionCost(iProvinceID, i7), 10), Images.gold, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                arrayList.add(new TextBonus(Game.lang.get("ConstructionTime") + ": ", Game.lang.get("DaysX", WondersManager.wonders.get(i7).ConstructionTime), Images.buildTime, Images.boxTitleBORDERWIDTH + CFG.PADDING, height4, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (WondersManager.wonders.get(i7).MaintenanceCost != 0.0f) {
                arrayList.add(new TextBonus(Game.lang.get("MaintenanceCost") + ": ", Game.lang.get("XPerMonth", "" + CFG.getPrecision2(WondersManager.wonders.get(i7).MaintenanceCost, 100)), Images.gold, Images.boxTitleBORDERWIDTH + CFG.PADDING, height3, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
        } else {
            otherMenuPosX_2 = otherMenuPosX_2;
        }
        int i8 = height3 + CFG.PADDING;
        if (Game.getProvince(iProvinceID).wonderConstruction == null) {
            if (!Game.getProvince(iProvinceID).getWonderBuilt()) {
                i = 0;
                arrayList.add(new AnonymousClass2(Game.lang.get("ConstructAWonder"), CFG.FONT_REGULAR, -1, i3, i8, width - (i3 * 2), Game.getProvince(iProvinceID).getCivID() == Game.player.iCivID));
                arrayList.get(arrayList.size() - 1).getHeight();
            }
            size = arrayList.size();
            posY = i;
            for (i2 = posY; i2 < size; i2++) {
                if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + (CFG.PADDING * 2)) {
                    posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + (CFG.PADDING * 2);
                }
            }
            iMin = Math.min(posY, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
            arrayList.add(new Empty(i, i, width, Math.max(posY, iMin)));
            if (Game.getProvince(iProvinceID).getWonderBuilt()) {
                initMenu(new AnonymousClass3("", Game.lang.get("WonderConstructed"), false, false, Images.title1Red), otherMenuPosX_2, height2, width, iMin, arrayList, z, true);
            } else {
                initMenu(new AnonymousClass4("", false, false, Images.title1Red), otherMenuPosX_2, height2, width, iMin, arrayList, z, true);
            }
            if (z) {
                lTime = CFG.currentTimeMillis;
            }
        }
        arrayList.add(new TextBonus(Game.lang.get("ConstructionWillBeCompleted") + ": ", Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + Game.getProvince(iProvinceID).wonderConstruction.daysLeft), Images.time, Images.boxTitleBORDERWIDTH + CFG.PADDING, i8, (width - (Images.boxTitleBORDERWIDTH * 2)) - (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), iCeil));
        arrayList.get(arrayList.size() - 1).getHeight();
        int i9 = CFG.PADDING;
        i = 0;
        size = arrayList.size();
        posY = i;
        while (i2 < size) {
            if (posY < arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i2).getPosY() + arrayList.get(i2).getHeight() + (CFG.PADDING * 2);
            }
        }
        iMin = Math.min(posY, (CFG.GAME_HEIGHT - height2) - (CFG.PADDING * 3));
        arrayList.add(new Empty(i, i, width, Math.max(posY, iMin)));
        if (Game.getProvince(iProvinceID).getWonderBuilt()) {
            initMenu(new AnonymousClass3("", Game.lang.get("WonderConstructed"), false, false, Images.title1Red), otherMenuPosX_2, height2, width, iMin, arrayList, z, true);
        } else {
            initMenu(new AnonymousClass4("", false, false, Images.title1Red), otherMenuPosX_2, height2, width, iMin, arrayList, z, true);
        }
        if (z) {
            lTime = CFG.currentTimeMillis;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_WONDERS) {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i = (i - CFG.BUTTON_WIDTH) + ((int) (((CFG.BUTTON_WIDTH * 4) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f)));
        }
        int i3 = i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        super.draw(spriteBatch, i3, i2, z, status);
        if (rebuildMenu) {
            rebuildMenu = false;
            Game.menuManager.rebuildInGame_Wonder();
            lTime = 0L;
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        if (z) {
            return;
        }
        try {
            Image image = wonderIMG;
            if (image != null) {
                image.dispose();
                wonderIMG = null;
            }
        } catch (Exception unused) {
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.getProvince(iProvinceID).wonderID >= 0 ? WondersManager.wonders.get(Game.getProvince(iProvinceID).wonderID).Name : Game.lang.get("Wonder"));
    }
}
