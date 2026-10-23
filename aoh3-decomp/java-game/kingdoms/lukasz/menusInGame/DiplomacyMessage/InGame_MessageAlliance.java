package aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_Message;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy_Flip;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.net.HttpRequestHeader;
import com.badlogic.gdx.net.HttpResponseHeader;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_MessageAlliance extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static int iCivID;
    public static String key;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return DiplomacyManager.COLOR_ALLIANCE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance$10, reason: invalid class name */
    class AnonymousClass10 extends MenuTitleIMG_Message {
        AnonymousClass10(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_MessageAlliance.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(InGame_MessageAlliance.iCivID, Game.player.iCivID, Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(InGame_MessageAlliance.iCivID), Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(InGame_MessageAlliance.iCivID));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance$3, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance$4, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Alliance"), "", Images.alliance, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", getText(), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonRuler_Diplomacy {
        AnonymousClass6(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy
        public Image getRulerImage() {
            return RulersManager.rulerIMG_DiplomacyRight;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            PMessage message = Game.player.getMessage(InGame_MessageAlliance.key);
            if (message != null) {
                message.onRefuse();
            }
            Game.menuManager.setVisibleInGame_PopUp(false);
            Game.player.removeMessage(InGame_MessageAlliance.key);
            Game.getCiv(InGame_MessageAlliance.iCivID).diplomacy.setRelation(InGame_MessageAlliance.iCivID, Game.player.iCivID, GameValues.diplomacy.DIPLOMACY_REFUSE_ALLIANCE_OPINION_CHANGE_TO);
            Game.getCiv(Game.player.iCivID).diplomacy.setRelation(Game.player.iCivID, InGame_MessageAlliance.iCivID, GameValues.diplomacy.DIPLOMACY_REFUSE_ALLIANCE_OPINION_CHANGE_TO);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.player.getMessage(InGame_MessageAlliance.key) == null) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Refuse"), CFG.FONT_BOLD, Colors.HOVER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Relations") + " -> ", CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_REFUSE_ALLIANCE_OPINION_CHANGE_TO, 10), Images.relationsDown, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_MessageAlliance.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            if (Game.player.getMessage(InGame_MessageAlliance.key) == null) {
                this.menuElementHover = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("FormAlliance"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageAlliance$9, reason: invalid class name */
    class AnonymousClass9 extends Game.SimpleTask {
        AnonymousClass9(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_MessagesSavePos();
        }
    }

    public InGame_MessageAlliance(String str) {
        PMessage pMessage;
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title600).getHeight();
        int i3 = CFG.PADDING;
        int height3 = CFG.PADDING;
        key = str;
        PMessage message = Game.player.getMessage(key);
        boolean z = true;
        if (message != null) {
            iCivID = message.fromCivID;
            int width2 = ImageManager.getImage(Images.giftBig).getWidth() + (CFG.PADDING * 4);
            int i4 = CFG.PADDING;
            int height4 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i4 * 2);
            int i5 = width / 2;
            int i6 = width2 / 2;
            int width3 = (((i5 - i2) - (CFG.PADDING * 2)) - i6) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
            int i7 = i4 + height3;
            arrayList.add(new ButtonFlag_Diplomacy(iCivID, ((i5 - i6) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i7, true));
            int i8 = i5 + i6;
            arrayList.add(new ButtonFlag_Diplomacy(Game.player.iCivID, (CFG.PADDING * 2) + i8, i7, true));
            arrayList.add(new Text_Static_ID(Game.player.iCivID, Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_REGULAR, -1, i8 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), height3, width3, height4));
            int i9 = iCivID;
            arrayList.add(new Text_Static_ID(i9, Game.getCiv(i9).getCivName(), CFG.FONT_REGULAR, -1, i2, height3, width3, height4));
            arrayList.add(new AnonymousClass1(Images.allianceBig, i2, height3, width - (i2 * 2), height4, width2));
            int height5 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int buttonWidth = i2 + ButtonRuler_Diplomacy.getButtonWidth() + (CFG.PADDING * 2);
            int i10 = (i5 - buttonWidth) - (CFG.PADDING / 2);
            int buttonHeight = (ButtonRuler_Diplomacy.getButtonHeight() - (CFG.PADDING * 2)) / 3;
            int width4 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() + (CFG.PADDING * 2);
            int i11 = i10 * 2;
            pMessage = message;
            i = width;
            arrayList.add(new AnonymousClass2(Game.lang.get("Opinion") + ": " + CFG.getPrecision2(Game.getCiv(iCivID).diplomacy.getRelation(Game.player.iCivID), 1), Images.relations, buttonWidth, height5, i11 + ((CFG.PADDING / 2) * 2), buttonHeight, width4, 0));
            arrayList.add(new AnonymousClass3("" + Game.getCiv(iCivID).getNumOfProvinces(), Images.provinces, buttonWidth, CFG.PADDING + height5 + buttonHeight, i10, buttonHeight, width4, 0));
            arrayList.add(new AnonymousClass4("" + Game.getCiv(Game.player.iCivID).getNumOfProvinces(), Images.provinces, CFG.PADDING + buttonWidth + i10, CFG.PADDING + height5 + buttonHeight, i10, buttonHeight, width4, 0));
            arrayList.add(new AnonymousClass5(Game_Calendar.getDate_ByTurnID(Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_ALLIANCE_EXPIRES), Images.time, buttonWidth, height5 + ((CFG.PADDING + buttonHeight) * 2), i11 + CFG.PADDING, buttonHeight, width4, 0));
            RulersManager.loadRulerIMG_DiplomacyLeft(iCivID);
            RulersManager.loadRulerIMG_DiplomacyRight(Game.player.iCivID);
            arrayList.add(new ButtonRuler_Diplomacy(iCivID, i2 + CFG.PADDING, height5));
            arrayList.add(new AnonymousClass6(Game.player.iCivID, ((i - i2) - ButtonRuler_Diplomacy.getButtonWidth()) - CFG.PADDING, height5));
            int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i12 = i2 + CFG.PADDING;
            int i13 = i - (i12 * 2);
            arrayList.add(new AnonymousClass7(Game.lang.get("Refuse"), CFG.FONT_REGULAR, -1, i12, height6, (i13 - ((CFG.PADDING / 2) * 2)) / 2, true));
            arrayList.add(new AnonymousClass8(Game.lang.get(HttpRequestHeader.Accept), CFG.FONT_REGULAR, -1, i12 + CFG.PADDING + ((i13 - ((CFG.PADDING / 2) * 2)) / 2), height6, (i13 - ((CFG.PADDING / 2) * 2)) / 2, true));
            z = true;
            height3 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        } else {
            pMessage = message;
            i = width;
            Game.addSimpleTask(new AnonymousClass9("rebuildInGame_MessagesSavePos"));
        }
        int iMin = Math.min(height3, (CFG.GAME_HEIGHT - height) - height2);
        arrayList.add(new Empty(0, 0, i, Math.max(height3, height3)));
        initMenu(new AnonymousClass10(Game.lang.get(kfGnwGN.JDNbjFbxTOVHnB), true, false, Images.title600), (CFG.GAME_WIDTH / 2) - (i / 2), Math.min((int) (CFG.GAME_HEIGHT * 0.2f), (CFG.GAME_HEIGHT / 2) - ((iMin + height) / 2)), i, iMin, arrayList, pMessage != null ? z : false, true);
        lTime = CFG.currentTimeMillis;
    }

    public static void confirm() {
        PMessage message = Game.player.getMessage(key);
        if (message != null) {
            message.onAccept();
        }
        Game.menuManager.setVisibleInGame_PopUp(false);
        Game.player.removeMessage(key);
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
