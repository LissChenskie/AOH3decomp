package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.GeneralManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral_Assign;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_GeneralRecruit extends Menu {
    protected static final int ANIMATION_TIME = 60;
    private long lTime = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_GeneralRecruit$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fGold < GeneralManager.getRecruitGoldCost(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(GeneralManager.getRecruitGoldCost(Game.player.iCivID), 100), Images.gold);
                return;
            }
            if (Game.getCiv(Game.player.iCivID).fLegacy < GeneralManager.getRecruitLegacyCost(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(GeneralManager.getRecruitLegacyCost(Game.player.iCivID), 100), Images.legacy);
                return;
            }
            String str = Game.player.civilizationGeneralsPool.lGenerals.get(getCurrent()).n;
            if (Game.player.civilizationGeneralsPool.recruitGeneralID(Game.player.iCivID, getCurrent(), true)) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                Game.menuManager.rebuildInGame_Info(Game.lang.get("General"), Game.lang.get(IlLkpaQxs.FKACrewmuqlJXo) + ": " + str);
                InGame_Info.imgID = Images.infoGeneral;
            }
            Game.menuManager.setVisibleInGame_GeneralRecruit(false);
            if (Game.menuManager.getVisibleInGame_Generals()) {
                Game.menuManager.rebuildInGame_Generals();
                Game.menuManager.setVisibleInGame_Generals(true);
                InGame_Generals.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("RecruitGeneral"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.general, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + GeneralManager.getRecruitGoldCost(Game.player.iCivID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + GeneralManager.getRecruitLegacyCost(Game.player.iCivID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_GeneralRecruit$2, reason: invalid class name */
    class AnonymousClass2 extends MenuTitleIMG {
        AnonymousClass2(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_GeneralRecruit.this.lTime;
        }
    }

    public InGame_GeneralRecruit() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i5 = CFG.PADDING * 2;
        int i6 = width - (i * 2);
        int i7 = (i6 - (CFG.PADDING * 2)) / 3;
        Game.player.civilizationGeneralsPool.updatePoolOfGenerals(Game.player.iCivID);
        int width2 = i;
        int posY = i5;
        int i8 = 0;
        while (i8 < Game.player.civilizationGeneralsPool.lGenerals.size()) {
            arrayList.add(new ButtonArmyGeneral_Assign(width2, posY, i7, Game.player.civilizationGeneralsPool.lGenerals.get(i8).n, Game.player.iCivID, Game.player.civilizationGeneralsPool.lGenerals.get(i8).getAttack(), Game.player.civilizationGeneralsPool.lGenerals.get(i8).getDefense(), Game.player.civilizationGeneralsPool.lGenerals.get(i8).g, Game.player.civilizationGeneralsPool.lGenerals.get(i8).d, Game.player.civilizationGeneralsPool.lGenerals.get(i8).m, Game.player.civilizationGeneralsPool.lGenerals.get(i8).y, true, null, Game.player.civilizationGeneralsPool.lGenerals.get(i8).sI, Game.player.civilizationGeneralsPool.lGenerals.get(i8).getCombatExperience()));
            int i9 = i8;
            arrayList.add(new AnonymousClass1(Game.lang.get("Recruit"), CFG.FONT_REGULAR, -1, width2, posY + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING, i7, true));
            arrayList.get(arrayList.size() - 1).setCurrent(i9);
            if (i9 % 3 == 2) {
                width2 = i;
                posY = arrayList.get(arrayList.size() - 1).getPosY() + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                width2 += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            }
            i8 = i9 + 1;
        }
        int posY2 = arrayList.size() > 0 ? arrayList.get(arrayList.size() - 1).getPosY() + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2) : posY;
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        int i10 = (i6 - CFG.PADDING) / 2;
        arrayList.add(new TextBonus(Game.lang.get("Cost") + ": ", "" + GeneralManager.getRecruitGoldCost(Game.player.iCivID), Images.gold, i, posY2, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        arrayList.add(new TextBonus(Game.lang.get("LegacyPoints") + ": ", "" + GeneralManager.getRecruitLegacyCost(Game.player.iCivID), Images.legacy, i + i10 + CFG.PADDING, posY2, i10, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        int height3 = posY2 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int iMin = Math.min(height3, (CFG.GAME_HEIGHT - height) - height2);
        arrayList.add(new Empty(0, 0, width, Math.max(height3, iMin)));
        initMenu(new AnonymousClass2("", true, false, Images.title600), (CFG.GAME_WIDTH / 2) - (width / 2), (CFG.GAME_HEIGHT / 2) - ((iMin + height) / 2), width, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = this.lTime + 60 >= CFG.currentTimeMillis ? (i2 - ((CFG.BUTTON_HEIGHT * 2) / 5)) + ((int) (((CFG.BUTTON_HEIGHT * 2) / 5) * ((CFG.currentTimeMillis - this.lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop600, Images.insideBot600);
        spriteBatch.setColor(Colors.COLOR_GRADIENT);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight(), false, true);
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        this.lTime = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("SelectGeneralToRecruit"));
    }
}
