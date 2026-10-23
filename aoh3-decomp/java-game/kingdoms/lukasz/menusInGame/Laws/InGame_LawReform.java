package aoc.kingdoms.lukasz.menusInGame.Laws;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.Button_Law3;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_CourtOptions;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_LawReform extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static int lawID;
    public static int lawID2;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Laws.InGame_LawReform$1, reason: invalid class name */
    class AnonymousClass1 extends Button_Law3 {
        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Laws(getValue1());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Laws.InGame_LawReform$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Laws.InGame_LawReform$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_LawReform.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = LawsManager.getHover(InGame_LawReform.lawID, InGame_LawReform.lawID2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Laws.InGame_LawReform$4, reason: invalid class name */
    class AnonymousClass4 extends MenuTitleIMG_FlagCenter {
        AnonymousClass4(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter
        public int getFlagCivID() {
            return Game.player.iCivID;
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_LawReform.lTime;
        }
    }

    public InGame_LawReform(int i, int i2) {
        int i3;
        ArrayList arrayList = new ArrayList();
        lawID = i;
        lawID2 = i2;
        int i4 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i5 = CFG.BUTTON_WIDTH;
        int i6 = Renderer.boxBGExtraY;
        int i7 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i8 = CFG.PADDING * 2;
        int i9 = width - (i4 * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get(LawsManager.laws.get(lawID).Law[i2]), Game.lang.get(LawsManager.laws.get(lawID).LawDesc != null ? LawsManager.laws.get(lawID).LawDesc[i2] : LawsManager.laws.get(lawID).Law[i2] + ".d"), i4 + CFG.PADDING, i8, i9 - (CFG.PADDING * 2), LawsManager.laws.get(lawID).ImageID[i2], lawID, i2));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + i8;
        List<MenuElement> lawBonuses = LawsManager.getLawBonuses(lawID, i2, CFG.PADDING + i4, width);
        if (lawBonuses.isEmpty()) {
            i3 = i9;
        } else {
            for (int i10 = 0; i10 < lawBonuses.size(); i10++) {
                lawBonuses.get(i10).setPosY(height2);
                arrayList.add(lawBonuses.get(i10));
                height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            int i11 = height2 - i8;
            i3 = i9;
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i4, height2 - i11, i3, i11));
            height2 += CFG.PADDING;
        }
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        int i12 = height2;
        arrayList.add(new TextBonus(Game.lang.get("Cost") + ": ", "" + CFG.getPrecision2(GameValues.laws.LAW_ADAPT_REFORM_COST_GOLD, 100), Images.gold, i4, height2, (i3 - ((CFG.PADDING / 2) * 2)) / 2, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        arrayList.add(new TextBonus(Game.lang.get("LegacyPoints") + ": ", "" + CFG.getPrecision2(GameValues.laws.LAW_ADAPT_REFORM_COST_LEGACY_POINTS, 100), Images.legacy, CFG.PADDING + i4 + ((i3 - ((CFG.PADDING / 2) * 2)) / 2), i12, (i3 - ((CFG.PADDING / 2) * 2)) / 2, (CFG.PADDING * 5) + CFG.TEXT_HEIGHT, iCeil));
        int height3 = i12 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass2(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i4, height3, (i3 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass3(Game.lang.get("AdoptReform"), CFG.FONT_REGULAR, -1, i4 + CFG.PADDING + ((i3 - ((CFG.PADDING / 2) * 2)) / 2), height3, (i3 - ((CFG.PADDING / 2) * 2)) / 2, true));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int iMin = Math.min(height4, CFG.GAME_HEIGHT - (height * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(height4, iMin)));
        initMenu(new AnonymousClass4(Game.lang.get(LawsManager.laws.get(lawID).Title), Game.lang.get("Law"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), height, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void confirm() {
        if (Game.getCiv(Game.player.iCivID).fGold < GameValues.laws.LAW_ADAPT_REFORM_COST_GOLD) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(GameValues.laws.LAW_ADAPT_REFORM_COST_GOLD, 100), Images.gold);
        } else if (Game.getCiv(Game.player.iCivID).fLegacy < GameValues.laws.LAW_ADAPT_REFORM_COST_LEGACY_POINTS) {
            Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(GameValues.laws.LAW_ADAPT_REFORM_COST_LEGACY_POINTS, 100), Images.legacy);
        } else if (LawsManager.adoptReform(Game.player.iCivID, lawID, lawID2)) {
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = 0;
            Game.menuManager.rebuildInGame_Info(Game.lang.get("ReformAdopted"), Game.lang.get(LawsManager.laws.get(lawID).Law[lawID2]));
            InGame_Info.imgID = Images.infoCrown;
            if (Game.menuManager.getVisibleInGame_Court() && InGame_CourtOptions.iActiveID == InGame_CourtOptions.iLawID) {
                Game.menuManager.rebuildInGame_LawsCourt();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
        }
        Game.menuManager.setVisibleInGame_PopUp(false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
