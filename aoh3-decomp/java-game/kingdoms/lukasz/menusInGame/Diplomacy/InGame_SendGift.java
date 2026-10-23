package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_ImageSparks;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy_Flip;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRect_Active;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_SendGift extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int giftGoldClicks = 1;
    public static int iCivID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return Colors.HOVER_GOLD;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$10, reason: invalid class name */
    class AnonymousClass10 extends TextBonus {
        AnonymousClass10(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DiplomacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_GIFT_COST, 100), Images.diplomacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonGame {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonGame_ImageSparks {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_SendGift.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SendGift"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gift, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DiplomacyPoints") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("-" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_GIFT_COST, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.diplomacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Gold") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(InGame_SendGift.giftGoldClicks * GameValues.diplomacy.DIPLOMACY_GIFT_GOLD_PER_CLICK, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Opinion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getPrecision2(InGame_SendGift.giftGoldClicks * GameValues.diplomacy.DIPLOMACY_GIFT_RELATION_PER_CLICK, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.relationsUp, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return Game.soundsManager.getGold();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$13, reason: invalid class name */
    class AnonymousClass13 extends MenuTitleIMG {
        AnonymousClass13(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_SendGift.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(InGame_SendGift.iCivID, Game.player.iCivID, Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(InGame_SendGift.iCivID), Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(InGame_SendGift.iCivID));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Provinces") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses {
        public int lastValue;

        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.lastValue = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != InGame_SendGift.giftGoldClicks) {
                setText2((InGame_SendGift.giftGoldClicks > 0 ? "+" : "") + CFG.getPrecision2(InGame_SendGift.giftGoldClicks * GameValues.diplomacy.DIPLOMACY_GIFT_RELATION_PER_CLICK, 100));
                this.lastValue = InGame_SendGift.giftGoldClicks;
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonRuler_Diplomacy {
        AnonymousClass6(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy
        public Image getRulerImage() {
            return RulersManager.rulerIMG_DiplomacyRight;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Bonuses {
        public int lastValue;

        AnonymousClass7(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
            this.lastValue = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.lastValue != InGame_SendGift.giftGoldClicks) {
                setText2((InGame_SendGift.giftGoldClicks > 0 ? "+" : "") + CFG.getPrecision2(InGame_SendGift.giftGoldClicks * GameValues.diplomacy.DIPLOMACY_GIFT_GOLD_PER_CLICK, 100));
                this.lastValue = InGame_SendGift.giftGoldClicks;
            }
            return this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsRect_Active {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_SendGift.giftGoldClicks = Math.max(1, InGame_SendGift.giftGoldClicks - 1);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Gold"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", "-" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_GIFT_GOLD_PER_CLICK, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_SendGift$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsRect_Active {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_SendGift.giftGoldClicks = Math.min(GameValues.diplomacy.DIPLOMACY_GIFT_MAX_CLICKS, InGame_SendGift.giftGoldClicks + 1);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Gold"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", "+" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_GIFT_GOLD_PER_CLICK, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public InGame_SendGift(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title600).getHeight();
        int i3 = CFG.PADDING;
        int i4 = CFG.PADDING;
        iCivID = i;
        giftGoldClicks = 1;
        int width2 = ImageManager.getImage(Images.giftBig).getWidth() + (CFG.PADDING * 4);
        int i5 = CFG.PADDING;
        int height3 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i5 * 2);
        int i6 = width / 2;
        int i7 = width2 / 2;
        int width3 = (((i6 - i2) - (CFG.PADDING * 2)) - i7) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        int i8 = i5 + i4;
        arrayList.add(new ButtonFlag_Diplomacy(Game.player.iCivID, ((i6 - i7) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i8, true));
        int i9 = i6 + i7;
        arrayList.add(new ButtonFlag_Diplomacy(iCivID, (CFG.PADDING * 2) + i9, i8, true));
        int i10 = iCivID;
        arrayList.add(new Text_Static_ID(i10, Game.getCiv(i10).getCivName(), CFG.FONT_REGULAR, -1, i9 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i4, width3, height3));
        arrayList.add(new Text_Static_ID(Game.player.iCivID, Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_REGULAR, -1, i2, i4, width3, height3));
        int i11 = width - (i2 * 2);
        arrayList.add(new AnonymousClass1(Images.giftBig, i2, i4, i11, height3, width2));
        int height4 = i4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int buttonWidth = ButtonRuler_Diplomacy.getButtonWidth() + i2 + (CFG.PADDING * 2);
        int i12 = (i6 - buttonWidth) - (CFG.PADDING / 2);
        int buttonHeight = (ButtonRuler_Diplomacy.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        int width4 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() + (CFG.PADDING * 2);
        int i13 = i12 * 2;
        arrayList.add(new AnonymousClass2(Game.lang.get("Opinion") + ": " + CFG.getPrecision2(Game.getCiv(iCivID).diplomacy.getRelation(Game.player.iCivID), 1), Images.relations, buttonWidth, height4, i13 + ((CFG.PADDING / 2) * 2), buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass3("" + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), Images.provinces, buttonWidth, CFG.PADDING + height4 + buttonHeight, i12, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass4("" + Game.getCiv(iCivID).getNumOfProvinces(), Images.provinces, CFG.PADDING + buttonWidth + i12, CFG.PADDING + height4 + buttonHeight, i12, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass5(Game.lang.get("Opinion") + ": ", (giftGoldClicks > 0 ? "+" : "") + CFG.getPrecision2(giftGoldClicks * GameValues.diplomacy.DIPLOMACY_GIFT_RELATION_PER_CLICK, 100), Images.relationsUp, buttonWidth, height4 + ((CFG.PADDING + buttonHeight) * 2), i13 + CFG.PADDING, buttonHeight, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 2)));
        RulersManager.loadRulerIMG_DiplomacyLeft(Game.player.iCivID);
        RulersManager.loadRulerIMG_DiplomacyRight(iCivID);
        arrayList.add(new ButtonRuler_Diplomacy(Game.player.iCivID, CFG.PADDING + i2, height4));
        arrayList.add(new AnonymousClass6(iCivID, ((width - i2) - ButtonRuler_Diplomacy.getButtonWidth()) - CFG.PADDING, height4));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i14 = (int) ((i11 - (CFG.PADDING * 2)) * 0.6f);
        int i15 = (int) ((i11 - (CFG.PADDING * 2)) * 0.2f);
        int i16 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        arrayList.add(new AnonymousClass7(Game.lang.get("Gold") + ": ", (giftGoldClicks > 0 ? "+" : "") + CFG.getPrecision2(giftGoldClicks * GameValues.diplomacy.DIPLOMACY_GIFT_GOLD_PER_CLICK, 100), Images.gold, i2, height5, i14, i16, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 3)));
        int width5 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i2;
        arrayList.add(new AnonymousClass8("-", width5, height5, i15, i16, CFG.FONT_BOLD));
        arrayList.add(new AnonymousClass9(fTNtCctcBZcqKK.sMI, width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height5, i15, i16, CFG.FONT_BOLD));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass10(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_GIFT_COST, 100), Images.diplomacy, i2, height6, i11, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f)));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i17 = i2 + CFG.PADDING;
        int i18 = width - (i17 * 2);
        arrayList.add(new AnonymousClass11(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i17, height7, (i18 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass12(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, i17 + CFG.PADDING + ((i18 - ((CFG.PADDING / 2) * 2)) / 2), height7, (i18 - ((CFG.PADDING / 2) * 2)) / 2, true, Images.gift));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int iMin = Math.min(height8, (CFG.GAME_HEIGHT - height) - height2);
        arrayList.add(new Empty(0, 0, width, Math.max(height8, height8)));
        initMenu(new AnonymousClass13(Game.lang.get("SendGift"), true, false, Images.title600), (CFG.GAME_WIDTH / 2) - i6, Math.min((int) (CFG.GAME_HEIGHT * 0.2f), (CFG.GAME_HEIGHT / 2) - ((iMin + height) / 2)), width, iMin, arrayList, false, true);
    }

    public static void confirm() {
        if (Game.getCiv(Game.player.iCivID).fDiplomacy < GameValues.diplomacy.DIPLOMACY_GIFT_COST) {
            Game.menuManager.addToastInsufficient(Game.lang.get("Cost") + ", " + Game.lang.get("DiplomacyPoints") + ": ", CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_GIFT_COST, 100), Images.diplomacy);
        } else {
            if (Game.getCiv(Game.player.iCivID).fGold < giftGoldClicks * GameValues.diplomacy.DIPLOMACY_GIFT_GOLD_PER_CLICK) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(giftGoldClicks * GameValues.diplomacy.DIPLOMACY_GIFT_GOLD_PER_CLICK, 100), Images.gold);
                return;
            }
            DiplomacyManager.giftGold(Game.player.iCivID, iCivID, giftGoldClicks);
            Game.menuManager.setVisibleInGame_PopUp(false);
            ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(iCivID).getCapitalProvinceID(), Colors.HOVER_GOLD);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        DiplomacyManager.updateInAnimation();
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - ((CFG.BUTTON_HEIGHT * 3) / 5)) + ((int) (((CFG.BUTTON_HEIGHT * 3) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop600, Images.insideBot600);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        DiplomacyManager.updateAnimationTime();
    }
}
