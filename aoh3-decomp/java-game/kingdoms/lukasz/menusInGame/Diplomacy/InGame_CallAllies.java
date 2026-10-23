package aoc.kingdoms.lukasz.menusInGame.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_ImageSparks;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_GreenRed;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static_ID;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_CallAllies extends Menu {
    public static final int ANIMATION_TIME = 60;
    public static List<Integer> callToWar = new ArrayList();
    public static int iCivID = 0;
    public static long lTime = 0;
    public static String warKey = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_CallAllies$1, reason: invalid class name */
    class AnonymousClass1 extends TextIcon_Diplomacy {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon_Diplomacy
        public Color getColorBar() {
            return DiplomacyManager.COLOR_WAR;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_CallAllies$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            List<Integer> listDeclareWar_AlliesAttacker = DiplomacyManager.declareWar_AlliesAttacker(Game.player.iCivID, InGame_CallAllies.iCivID);
            if (listDeclareWar_AlliesAttacker.size() > 0) {
                for (int size = listDeclareWar_AlliesAttacker.size() - 1; size >= 0; size--) {
                    if (InGame_CallAllies.callToWar.contains(listDeclareWar_AlliesAttacker.get(size))) {
                        for (int size2 = InGame_CallAllies.callToWar.size() - 1; size2 >= 0; size2--) {
                            if (InGame_CallAllies.callToWar.get(size2).equals(listDeclareWar_AlliesAttacker.get(size))) {
                                InGame_CallAllies.callToWar.remove(size2);
                                break;
                            }
                        }
                    } else {
                        InGame_CallAllies.callToWar.add(listDeclareWar_AlliesAttacker.get(size));
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_CallAllies$3, reason: invalid class name */
    class AnonymousClass3 extends Text_StaticBG_ID_FlagCiv_GreenRed {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!InGame_CallAllies.callToWar.contains(Integer.valueOf(getCurrent()))) {
                InGame_CallAllies.callToWar.add(Integer.valueOf(getCurrent()));
                return;
            }
            for (int size = InGame_CallAllies.callToWar.size() - 1; size >= 0; size--) {
                if (InGame_CallAllies.callToWar.get(size).intValue() == getCurrent()) {
                    InGame_CallAllies.callToWar.remove(size);
                    return;
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CallAlly") + ": " + Game.getCiv(getCurrent()).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_GreenRed, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return InGame_CallAllies.callToWar.contains(Integer.valueOf(getCurrent()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_CallAllies$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_CallAllies$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame_ImageSparks {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_CallAllies.confirm();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Confirm"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.v, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.DIPLOMACY_CLICK;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Diplomacy.InGame_CallAllies$6, reason: invalid class name */
    class AnonymousClass6 extends MenuTitleIMG {
        AnonymousClass6(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_CallAllies.lTime;
        }
    }

    public InGame_CallAllies(int i) {
        String str = "";
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.insideTop600).getWidth();
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title600).getHeight();
        int i3 = CFG.PADDING;
        int i4 = CFG.PADDING;
        callToWar.clear();
        iCivID = i;
        int width2 = ImageManager.getImage(Images.warBig).getWidth() + (CFG.PADDING * 4);
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
        arrayList.add(new AnonymousClass1(Images.warBig, i2, i4, i11, height3, width2));
        int height4 = i4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        try {
            int i12 = CFG.BUTTON_HEIGHT3;
            List<Integer> listDeclareWar_AlliesAttacker = DiplomacyManager.declareWar_AlliesAttacker(Game.player.iCivID, iCivID);
            if (WarManager.lWars.containsKey(warKey)) {
                for (int size = listDeclareWar_AlliesAttacker.size() - 1; size >= 0; size--) {
                    if (WarManager.lWars.get(warKey).isAggressor(listDeclareWar_AlliesAttacker.get(size).intValue()) || WarManager.lWars.get(warKey).isDefender(listDeclareWar_AlliesAttacker.get(size).intValue())) {
                        listDeclareWar_AlliesAttacker.remove(size);
                    }
                }
            }
            if (listDeclareWar_AlliesAttacker.size() == 0) {
                arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i2, height4, i11, i12));
                height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } else {
                List<Integer> list = listDeclareWar_AlliesAttacker;
                arrayList.add(new AnonymousClass2("" + Game.lang.get("CallAllies"), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i2, height4, i11, i12, Game.player.iCivID));
                height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                int i13 = 0;
                while (i13 < list.size()) {
                    List<Integer> list2 = list;
                    list = list2;
                    String str2 = str;
                    arrayList.add(new AnonymousClass3(str + Game.getCiv(list2.get(i13).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i2, height4, i11, i12, list2.get(i13).intValue()));
                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    i13++;
                    str = str2;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        int i14 = i2 + CFG.PADDING;
        int i15 = width - (i14 * 2);
        int i16 = height4;
        arrayList.add(new AnonymousClass4(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i14, i16, (i15 - ((CFG.PADDING / 2) * 2)) / 2, true));
        arrayList.add(new AnonymousClass5(Game.lang.get("Confirm"), CFG.FONT_REGULAR, -1, i14 + CFG.PADDING + ((i15 - ((CFG.PADDING / 2) * 2)) / 2), i16, (i15 - ((CFG.PADDING / 2) * 2)) / 2, true, Images.v));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int iMin = Math.min(height5, (CFG.GAME_HEIGHT - height) - height2);
        arrayList.add(new Empty(0, 0, width, Math.max(height5, height5)));
        initMenu(new AnonymousClass6(Game.lang.get("CallAllies"), true, false, Images.title600), (CFG.GAME_WIDTH / 2) - i6, Math.min((int) (CFG.GAME_HEIGHT * 0.2f), (CFG.GAME_HEIGHT / 2) - ((height + iMin) / 2)), width, iMin, arrayList, false, true);
    }

    public static final void confirm() {
        if (callToWar.size() > 0 && WarManager.lWars.containsKey(warKey)) {
            if (WarManager.lWars.get(warKey).isDefender(Game.player.iCivID)) {
                for (int i = 0; i < callToWar.size(); i++) {
                    WarManager.lWars.get(warKey).addDefender(callToWar.get(i).intValue());
                }
            } else if (WarManager.lWars.get(warKey).isAggressor(Game.player.iCivID)) {
                for (int i2 = 0; i2 < callToWar.size(); i2++) {
                    WarManager.lWars.get(warKey).addAggressor(callToWar.get(i2).intValue());
                }
            }
        }
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
}
