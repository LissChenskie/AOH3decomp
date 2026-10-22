package aoc.kingdoms.lukasz.jakowski.Player.MessageTypes;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.net.HttpResponseHeader;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PMessageGoldenAgeMilitary extends PMessage {
    public PMessageGoldenAgeMilitary(int i, int i2) {
        super(i, i2, 0);
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void actionClick() {
        onRefuse();
        Game.player.removeMessage(this.key);
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public MenuElement_Hover buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("OurCivilizationIsInAGoldenAgeOf") + ": " + Game.lang.get("GAMilitary"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goldenGreen, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsAttack") + ": ", "+" + GameValues.goldenAge.GA_MILITARY_UNITS_ATTACK[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary() - 1, GameValues.iGoldenAge_MilitarySize - 1)], Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsDefense") + ": ", "+" + GameValues.goldenAge.GA_MILITARY_UNITS_DEFENSE[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary() - 1, GameValues.iGoldenAge_MilitarySize - 1)], Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", "+" + CFG.getPrecision2(GameValues.goldenAge.GA_MILITARY_MAX_MANPOWER_PERC[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary() - 1, GameValues.iGoldenAge_MilitarySize - 1)] * 100.0f, 10) + "%", Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_POSITIVE));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Duration") + ": ", "" + Game.lang.get("XDays", GameValues.goldenAge.GA_MILITARY_DURATION_DAYS[Math.min(Game.getCiv(Game.player.iCivID).goldenAge.getGoldenAgeMilitary() - 1, GameValues.iGoldenAge_MilitarySize - 1)]), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
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
        return Images.goldenGreen;
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void onAccept() {
        onRefuse();
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void onRefuse() {
        InGame_Info.iCivID = Game.player.iCivID;
        InGame_Info.iCivID2 = Game.player.iCivID;
        Game.menuManager.rebuildInGame_Info(Game.lang.get("OurCivilizationIsInAGoldenAgeOf"), Game.lang.get("GAMilitary"));
        InGame_Info.imgID = Images.infoCrown;
        ProvinceDraw.addProvinceDot(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Colors.HOVER_GOLD);
    }
}
