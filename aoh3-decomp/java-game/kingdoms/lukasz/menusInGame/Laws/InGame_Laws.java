package aoc.kingdoms.lukasz.menusInGame.Laws;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_FlagCenter;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button_Law3;
import aoc.kingdoms.lukasz.menu_element.button.Button_Law3_Green;
import aoc.kingdoms.lukasz.menu_element.button.Button_Law3_Red;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTree;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Laws extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static int lawID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Laws.InGame_Laws$1, reason: invalid class name */
    class AnonymousClass1 extends Button_Law3_Red {
        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                Game.menuManager.setVisibleInGame_TechnologyTree(false);
                return;
            }
            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
            InGame_TechnologyTree.centerToTechID = LawsManager.laws.get(getValue1()).RequiredTechID[getValue2()];
            Game.menuManager.rebuildInGame_TechnologyTree(false, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Laws.InGame_Laws$2, reason: invalid class name */
    class AnonymousClass2 extends Button_Law3_Red {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.addToastNegative(Game.lang.get("Government") + ": ", Game.ideologiesManager.getIdeology(LawsManager.laws.get(getValue1()).RequiredGovernmentID[getValue2()]).Name, Images.government);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Laws.InGame_Laws$3, reason: invalid class name */
    class AnonymousClass3 extends Button_Law3 {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_LawReform(getValue1(), getValue2());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Laws.InGame_Laws$4, reason: invalid class name */
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
            return InGame_Laws.lTime;
        }
    }

    public InGame_Laws(int i) {
        ArrayList arrayList = new ArrayList();
        lawID = i;
        int i2 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i3 = CFG.BUTTON_WIDTH;
        int i4 = Renderer.boxBGExtraY;
        int i5 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i6 = CFG.PADDING * 2;
        for (int i7 = 0; i7 < LawsManager.laws.get(lawID).Law.length; i7++) {
            if (Game.getCiv(Game.player.iCivID).laws.get(lawID).intValue() == i7) {
                arrayList.add(new Button_Law3_Green(Game.lang.get(LawsManager.laws.get(lawID).Law[i7]), Game.lang.get(LawsManager.laws.get(lawID).LawDesc != null ? LawsManager.laws.get(lawID).LawDesc[i7] : LawsManager.laws.get(lawID).Law[i7] + ".d"), i2 + CFG.PADDING, i6, (width - (i2 * 2)) - (CFG.PADDING * 2), LawsManager.laws.get(lawID).ImageID[i7], lawID, i7));
            } else if (LawsManager.laws.get(lawID).RequiredTechID[i7] >= 0 && !Game.getCiv(Game.player.iCivID).getTechResearched(LawsManager.laws.get(lawID).RequiredTechID[i7])) {
                arrayList.add(new AnonymousClass1(Game.lang.get(LawsManager.laws.get(lawID).Law[i7]), Game.lang.get(LawsManager.laws.get(lawID).LawDesc != null ? LawsManager.laws.get(lawID).LawDesc[i7] : LawsManager.laws.get(lawID).Law[i7] + ".d"), i2 + CFG.PADDING, i6, (width - (i2 * 2)) - (CFG.PADDING * 2), LawsManager.laws.get(lawID).ImageID[i7], lawID, i7));
            } else if (LawsManager.laws.get(lawID).RequiredGovernmentID == null || LawsManager.laws.get(lawID).RequiredGovernmentID[i7] < 0 || LawsManager.laws.get(lawID).RequiredGovernmentID[i7] == Game.getCiv(Game.player.iCivID).getIdeologyID()) {
                arrayList.add(new AnonymousClass3(Game.lang.get(LawsManager.laws.get(lawID).Law[i7]), Game.lang.get(LawsManager.laws.get(lawID).LawDesc != null ? LawsManager.laws.get(lawID).LawDesc[i7] : LawsManager.laws.get(lawID).Law[i7] + ".d"), i2 + CFG.PADDING, i6, (width - (i2 * 2)) - (CFG.PADDING * 2), LawsManager.laws.get(lawID).ImageID[i7], lawID, i7));
            } else {
                arrayList.add(new AnonymousClass2(Game.lang.get(LawsManager.laws.get(lawID).Law[i7]), Game.lang.get(LawsManager.laws.get(lawID).LawDesc != null ? LawsManager.laws.get(lawID).LawDesc[i7] : LawsManager.laws.get(lawID).Law[i7] + ".d"), i2 + CFG.PADDING, i6, (width - (i2 * 2)) - (CFG.PADDING * 2), LawsManager.laws.get(lawID).ImageID[i7], lawID, i7));
            }
            int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + i6;
            List<MenuElement> lawBonuses = LawsManager.getLawBonuses(lawID, i7, CFG.PADDING + i2, width);
            if (!lawBonuses.isEmpty()) {
                for (int i8 = 0; i8 < lawBonuses.size(); i8++) {
                    lawBonuses.get(i8).setPosY(height2);
                    arrayList.add(lawBonuses.get(i8));
                    height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                int i9 = height2 - i6;
                arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i2, height2 - i9, width - (i2 * 2), i9));
                height2 += CFG.PADDING;
            }
            i6 = height2;
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i10 = 0; i10 < size; i10++) {
            if (posY < arrayList.get(i10).getPosY() + arrayList.get(i10).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i10).getPosY() + arrayList.get(i10).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, CFG.GAME_HEIGHT - (height * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(posY, iMin)));
        initMenu(new AnonymousClass4(Game.lang.get(LawsManager.laws.get(lawID).Title), Game.lang.get("Law"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), height, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
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
