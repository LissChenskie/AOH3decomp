package aoc.kingdoms.lukasz.jakowski.Player.MessageTypes;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.war.War;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.DiplomacyMessage.InGame_MessageCallToWar;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.net.HttpResponseHeader;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class PMessageCallToWar extends PMessage {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageCallToWar$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceBorderManager.updateProvinceBorder();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessageCallToWar$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Wars();
        }
    }

    public PMessageCallToWar(int i, String str, int i2) {
        super(i, i2, 0);
        this.key = str;
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void actionClick() {
        if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 46 && InGame_MessageCallToWar.key.equals(this.key)) {
            Game.menuManager.setVisibleInGame_PopUp(false);
        } else {
            Game.menuManager.rebuildInGame_MessageCallToWar(this);
        }
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public MenuElement_Hover buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CallToArms"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.war, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag("", Game.getCiv(this.fromCivID).getCivName(), this.fromCivID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(LBhZogys.DEXFegHXBeqokIJ), "", Images.message, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(HttpResponseHeader.Expires) + ": ", "" + Game_Calendar.getDate_ByTurnID(this.expiresTurnID), Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public int getImageID() {
        return Images.alliance;
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void onAccept() {
        Game.getCiv(Game.player.iCivID).fLegacy += GameValues.diplomacy.CALL_TO_ARMS_REFUSE_LEGACY;
        Game.getCiv(Game.player.iCivID).diplomacy.removeAlliance(this.fromCivID);
        Game.getCiv(Game.player.iCivID).diplomacy.removeDefensivePact(this.fromCivID);
        ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(this.fromCivID).getCapitalProvinceID(), Colors.HOVER_NEGATIVE);
    }

    @Override // aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage
    public void onRefuse() {
        War war = WarManager.lWars.get(this.key);
        if (war != null) {
            if (war.isAggressor(this.fromCivID)) {
                war.addAggressor(Game.player.iCivID);
            } else if (war.isDefender(this.fromCivID)) {
                war.addDefender(Game.player.iCivID);
            }
            for (int i = 0; i < war.lDefenders.size(); i++) {
                try {
                    Game.getCiv(war.lDefenders.get(i).iCivID).updateArmyImgID();
                } catch (Exception unused) {
                }
            }
            for (int i2 = 0; i2 < war.lAggressors.size(); i2++) {
                Game.getCiv(war.lAggressors.get(i2).iCivID).updateArmyImgID();
            }
            if (GameValues.provinceBorderWar.ENABLE_WAR_BORDER) {
                Game.addSimpleTask(new AnonymousClass1("updateProvinceBorder"));
            }
            Game.addSimpleTask(new AnonymousClass2("rebuildInGame_Wars"));
        }
        ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(this.fromCivID).getCapitalProvinceID(), DiplomacyManager.COLOR_ALLIANCE);
    }
}
