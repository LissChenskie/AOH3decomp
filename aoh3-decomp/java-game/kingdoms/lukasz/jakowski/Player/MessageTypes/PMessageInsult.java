package aoc.kingdoms.lukasz.jakowski.Player.MessageTypes;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageInsult;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.net.HttpResponseHeader;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PMessageInsult extends PMessage {
    public PMessageInsult(int i, int i2) {
        super(i, i2, 0);
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void actionClick() {
        if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 34 && InGame_MessageInsult.key.equals(this.key)) {
            Game.menuManager.setVisibleInGame_PopUp(false);
        } else {
            Game.menuManager.rebuildInGame_MessageInsult(this.key);
        }
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public MenuElement_Hover buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AnInsultFrom") + ": " + Game.getCiv(this.fromCivID).getCivName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.insult, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag("", Game.getCiv(this.fromCivID).getCivName(), this.fromCivID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(DiplomacyManager.getInsult(this.fromCivID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
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
        return Images.insult;
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void onAccept() {
        ProvinceDraw.addDiplomacyLines(Game.getCiv(this.fromCivID).getCapitalProvinceID(), Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), DiplomacyManager.COLOR_INSULT);
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void onRefuse() {
        ProvinceDraw.addDiplomacyLines(Game.getCiv(this.fromCivID).getCapitalProvinceID(), Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), DiplomacyManager.COLOR_INSULT);
    }
}
