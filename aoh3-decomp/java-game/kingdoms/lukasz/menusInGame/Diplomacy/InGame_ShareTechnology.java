package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
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
import aoc.kingdoms.lukasz.menu_element.button.ButtonTechnology;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ShareTechnology extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static int shareWithCivID;
    public static int technologyID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return Colors.TECH_BLUE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations(InGame_ShareTechnology.shareWithCivID, Game.player.iCivID, Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(InGame_ShareTechnology.shareWithCivID), Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(InGame_ShareTechnology.shareWithCivID));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Diplomacy, aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active, aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return Colors.getColorTopStats(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Diplomacy {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("UnlockedTechnologies") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(Game.player.iCivID).getResearchedTechnologies(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Diplomacy_Flip {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("UnlockedTechnologies") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getCiv(InGame_ShareTechnology.shareWithCivID).getResearchedTechnologies(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonRuler_Diplomacy {
        AnonymousClass5(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonRuler_Diplomacy
        public Image getRulerImage() {
            return RulersManager.rulerIMG_DiplomacyRight;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonTechnology {
        AnonymousClass6(int i, int i2, int i3, int i4, boolean z, int i5) {
            super(i, i2, i3, i4, z, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTechnology, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_ShareTechnology(InGame_ShareTechnology.shareWithCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame_ImageSparks {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_ShareTechnology.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ShareTechnology"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Opinion") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text((GameValues.diplomacy.SHARE_TECHNOLOGY_OPINION > 0.0f ? "+" : "") + CFG.getPrecision2(GameValues.diplomacy.SHARE_TECHNOLOGY_OPINION, 100), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.relations, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return InGame_ShareTechnology.technologyID >= 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.DIPLOMACY_CLICK;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_ShareTechnology$9, reason: invalid class name */
    class AnonymousClass9 extends MenuTitleIMG {
        AnonymousClass9(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ShareTechnology.lTime;
        }
    }

    public InGame_ShareTechnology(int i) {
        int height;
        int i2;
        ArrayList arrayList = new ArrayList();
        int i3 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int height2 = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int height3 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title600).getHeight();
        int i4 = CFG.PADDING;
        int i5 = CFG.PADDING;
        shareWithCivID = i;
        shareRandomTechnology(i);
        int width2 = ImageManager.getImage(Images.insultBig).getWidth() + (CFG.PADDING * 4);
        int i6 = CFG.PADDING;
        int height4 = ImageManager.getImage(Images.flagDiplomacyOver).getHeight() + (i6 * 2);
        int i7 = width / 2;
        int i8 = width2 / 2;
        int width3 = (((i7 - i3) - (CFG.PADDING * 2)) - i8) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
        int i9 = i6 + i5;
        arrayList.add(new ButtonFlag_Diplomacy(Game.player.iCivID, ((i7 - i8) - (CFG.PADDING * 2)) - ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i9, true));
        int i10 = i7 + i8;
        arrayList.add(new ButtonFlag_Diplomacy(shareWithCivID, (CFG.PADDING * 2) + i10, i9, true));
        int i11 = shareWithCivID;
        arrayList.add(new Text_Static_ID(i11, Game.getCiv(i11).getCivName(), CFG.FONT_REGULAR, -1, i10 + (CFG.PADDING * 2) + ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), i5, width3, height4));
        arrayList.add(new Text_Static_ID(Game.player.iCivID, Game.getCiv(Game.player.iCivID).getCivName(), CFG.FONT_REGULAR, -1, i3, i5, width3, height4));
        int i12 = width - (i3 * 2);
        arrayList.add(new AnonymousClass1(Game_Calendar.IMG_TECHNOLOGY, i3, i5, i12, height4, width2));
        int height5 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int buttonWidth = ButtonRuler_Diplomacy.getButtonWidth() + i3 + (CFG.PADDING * 2);
        int i13 = (i7 - buttonWidth) - (CFG.PADDING / 2);
        int buttonHeight = (ButtonRuler_Diplomacy.getButtonHeight() - (CFG.PADDING * 2)) / 3;
        int width4 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() + (CFG.PADDING * 2);
        int i14 = i13 * 2;
        arrayList.add(new AnonymousClass2(Game.lang.get("Opinion") + ": " + CFG.getPrecision2(Game.getCiv(shareWithCivID).diplomacy.getRelation(Game.player.iCivID), 1), Images.relations, buttonWidth, height5, i14 + ((CFG.PADDING / 2) * 2), buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass3("" + CFG.getShortNumber(Game.getCiv(Game.player.iCivID).getResearchedTechnologies()), Game_Calendar.IMG_TECHNOLOGY, buttonWidth, CFG.PADDING + height5 + buttonHeight, i13, buttonHeight, width4, 0));
        arrayList.add(new AnonymousClass4("" + CFG.getShortNumber(Game.getCiv(shareWithCivID).getResearchedTechnologies()), Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING + buttonWidth + i13, CFG.PADDING + height5 + buttonHeight, i13, buttonHeight, width4, 0));
        arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Opinion") + ": ", (GameValues.diplomacy.SHARE_TECHNOLOGY_OPINION > 0.0f ? "+" : "") + CFG.getPrecision2(GameValues.diplomacy.SHARE_TECHNOLOGY_OPINION, 100), Images.relationsUp, buttonWidth, height5 + ((CFG.PADDING + buttonHeight) * 2), i14 + CFG.PADDING, buttonHeight, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 2)));
        RulersManager.loadRulerIMG_DiplomacyLeft(Game.player.iCivID);
        RulersManager.loadRulerIMG_DiplomacyRight(shareWithCivID);
        arrayList.add(new ButtonRuler_Diplomacy(Game.player.iCivID, CFG.PADDING + i3, height5));
        arrayList.add(new AnonymousClass5(shareWithCivID, ((width - i3) - ButtonRuler_Diplomacy.getButtonWidth()) - CFG.PADDING, height5));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (technologyID < 0) {
            arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i3, height6, i12, CFG.BUTTON_HEIGHT2));
            height = arrayList.get(arrayList.size() - 1).getHeight();
            i2 = CFG.PADDING;
        } else {
            arrayList.add(new AnonymousClass6(Images.techAvailable, technologyID, i7 - (ImageManager.getImage(Images.techGray).getWidth() / 2), height6 + CFG.PADDING, false, -1));
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i3, height6, i12, TechnologyTree.iTechnologyHeight + (CFG.PADDING * 2)));
            height = arrayList.get(arrayList.size() - 1).getHeight();
            i2 = CFG.PADDING;
        }
        int i15 = height6 + height + i2;
        int i16 = i3 + CFG.PADDING;
        int i17 = width - (i16 * 2);
        arrayList.add(new AnonymousClass7(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i16, i15, (i17 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass8(Game.lang.get("ShareTechnology"), CFG.FONT_REGULAR, -1, i16 + CFG.PADDING + ((i17 - ((CFG.PADDING / 2) * 2)) / 2), i15, (i17 - ((CFG.PADDING / 2) * 2)) / 2, true, Game_Calendar.IMG_TECHNOLOGY));
        int height7 = i15 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int iMin = Math.min(height7, (CFG.GAME_HEIGHT - height2) - height3);
        arrayList.add(new Empty(0, 0, width, Math.max(height7, height7)));
        initMenu(new AnonymousClass9(Game.lang.get("ShareTechnology"), true, false, Images.title600), (CFG.GAME_WIDTH / 2) - i7, Math.min((int) (CFG.GAME_HEIGHT * 0.2f), (CFG.GAME_HEIGHT / 2) - ((iMin + height2) / 2)), width, iMin, arrayList, false, true);
    }

    public static final void confirm() {
        if (technologyID < 0) {
            return;
        }
        Game.getCiv(shareWithCivID).addTechnology(technologyID, false);
        Game.getCiv(shareWithCivID).diplomacy.updateRelation(shareWithCivID, Game.player.iCivID, GameValues.diplomacy.SHARE_TECHNOLOGY_OPINION);
        Game.getCiv(Game.player.iCivID).diplomacy.updateRelation(Game.player.iCivID, shareWithCivID, GameValues.diplomacy.SHARE_TECHNOLOGY_OPINION);
        if (Game.menuManager.getVisibleInGame_Civ()) {
            InGame_Civ.rebuildMenu();
        }
        InGame_Info.iCivID = Game.player.iCivID;
        InGame_Info.iCivID2 = shareWithCivID;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("TechnologyShared"), Game.getCiv(shareWithCivID).getCivName());
        InGame_Info.imgID = Images.infoDiplomacy;
        ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(shareWithCivID).getCapitalProvinceID(), Colors.TECH_BLUE);
        Game.menuManager.setVisibleInGame_PopUp(false);
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

    public void shareRandomTechnology(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < TechnologyTree.iTechnologySize; i2++) {
            if (Game.getCiv(Game.player.iCivID).getTechResearched(i2) && !Game.getCiv(i).getTechResearched(i2) && ((TechnologyTree.lTechnology.get(i2).RequiredTech < 0 || Game.getCiv(i).getTechResearched(TechnologyTree.lTechnology.get(i2).RequiredTech)) && (TechnologyTree.lTechnology.get(i2).RequiredTech2 < 0 || Game.getCiv(i).getTechResearched(TechnologyTree.lTechnology.get(i2).RequiredTech2)))) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (arrayList.size() > 0) {
            technologyID = ((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue();
        } else {
            technologyID = -1;
        }
    }
}
