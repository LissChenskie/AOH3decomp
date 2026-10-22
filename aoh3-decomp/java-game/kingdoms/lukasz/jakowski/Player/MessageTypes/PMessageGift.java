package aoc.kingdoms.lukasz.jakowski.Player.MessageTypes;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageGift;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.net.HttpResponseHeader;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PMessageGift extends PMessage {
    public PMessageGift(int i, int i2, int i3) {
        super(i, i2, i3);
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void actionClick() {
        if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 28 && InGame_MessageGift.key.equals(this.key)) {
            Game.menuManager.setVisibleInGame_PopUp(false);
        } else {
            Game.menuManager.rebuildInGame_MessageGift(this.key);
        }
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public MenuElement_Hover buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AGiftFromCivA", Game.getCiv(this.fromCivID).getCivName()), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gift, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Message"), "", Images.message, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(this.expiresTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public int getImageID() {
        return Images.gift;
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void onAccept() {
        ProvinceDraw.addDiplomacyLines(Game.getCiv(this.fromCivID).getCapitalProvinceID(), Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Colors.HOVER_POSITIVE);
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void onRefuse() {
        Game.getCiv(Game.player.iCivID).fGold -= this.iValue1;
        Game.getCiv(this.fromCivID).fGold += this.iValue1;
        float fCeil = (int) (Math.ceil(this.iValue1 / GameValues.diplomacy.DIPLOMACY_GIFT_GOLD_PER_CLICK) * ((double) GameValues.diplomacy.DIPLOMACY_GIFT_REFUSE_MULTIPLE));
        Game.getCiv(this.fromCivID).diplomacy.setRelation(this.fromCivID, Game.player.iCivID, Game.getCiv(this.fromCivID).diplomacy.getRelation(Game.player.iCivID) - (GameValues.diplomacy.DIPLOMACY_GIFT_RELATION_PER_CLICK * fCeil));
        Game.getCiv(Game.player.iCivID).diplomacy.setRelation(Game.player.iCivID, this.fromCivID, Game.getCiv(Game.player.iCivID).diplomacy.getRelation(this.fromCivID) - (fCeil * GameValues.diplomacy.DIPLOMACY_GIFT_RELATION_PER_CLICK));
        ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(this.fromCivID).getCapitalProvinceID(), Colors.HOVER_NEGATIVE);
    }
}
