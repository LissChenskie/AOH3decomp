package aoc.kingdoms.lukasz.menusInGame.Court;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button_Law3;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusInGame.Laws.InGame_Laws;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_Law extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Law$1, reason: invalid class name */
    class AnonymousClass1 extends Button_Law3 {
        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 23 && InGame_Laws.lawID == getValue1()) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_Laws(getValue1());
            }
        }
    }

    public InGame_Court_Law() {
        ArrayList arrayList = new ArrayList();
        int i = Images.boxTitleBORDERWIDTH + CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING;
        int i2 = CFG.PADDING;
        int i3 = 0;
        for (int i4 = 0; i4 < LawsManager.iLawsSize; i4++) {
            arrayList.add(new Text_Title_v2_TextLR(Game.lang.get(LawsManager.laws.get(i4).Title), CFG.FONT_BOLD, CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, i3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6), (Game.getCiv(Game.player.iCivID).laws.get(i4).intValue() + 1) + " / " + LawsManager.getAvailableLaws(Game.player.iCivID, i4)));
            int height2 = i3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            int i5 = width - (i * 2);
            arrayList.add(new AnonymousClass1(Game.lang.get(LawsManager.laws.get(i4).Law[Game.getCiv(Game.player.iCivID).laws.get(i4).intValue()]), Game.lang.get(LawsManager.laws.get(i4).LawDesc != null ? LawsManager.laws.get(i4).LawDesc[Game.getCiv(Game.player.iCivID).laws.get(i4).intValue()] : LawsManager.laws.get(i4).Law[Game.getCiv(Game.player.iCivID).laws.get(i4).intValue()] + ".d"), i + CFG.PADDING, height2, i5 - (CFG.PADDING * 2), LawsManager.laws.get(i4).ImageID[Game.getCiv(Game.player.iCivID).laws.get(i4).intValue()], i4, Game.getCiv(Game.player.iCivID).laws.get(i4).intValue()));
            int height3 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + height2;
            List<MenuElement> lawBonuses = LawsManager.getLawBonuses(i4, Game.getCiv(Game.player.iCivID).laws.get(i4).intValue(), CFG.PADDING + i, width);
            if (!lawBonuses.isEmpty()) {
                for (int i6 = 0; i6 < lawBonuses.size(); i6++) {
                    lawBonuses.get(i6).setPosY(height3);
                    arrayList.add(lawBonuses.get(i6));
                    height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
                int i7 = height3 - height2;
                arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i, height3 - i7, i5, i7));
                height3 += CFG.PADDING;
            }
            i3 = height3;
        }
        int i8 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(i3, (CFG.GAME_HEIGHT - i8) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(i3, iMin)));
        initMenu(null, otherMenuPosX, i8, width, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("Laws"));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.rulerOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.rulerOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.rulerOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameCourt();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        InGame_Court.lTime = CFG.currentTimeMillis;
        InGame_Court.lTime2 = CFG.currentTimeMillis;
    }
}
