package aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menusEditor.GameCivs;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioGuarantee extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioGuarantee$1, reason: invalid class name */
    class AnonymousClass1 extends Minimap {
        AnonymousClass1(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return CFG.GAME_WIDTH - getWidth();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosY() {
            return CFG.GAME_HEIGHT - getHeight();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioGuarantee$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Static {
        AnonymousClass2(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            Images.statsBG.draw2(spriteBatch, (getPosX() - (CFG.PADDING * 3)) + i, (getPosY() - (CFG.PADDING * 2)) + i2, Images.statsBG.getWidth(), (CFG.PADDING * 4) + getHeight());
            Images.statsBG2.draw2(spriteBatch, (getPosX() - (CFG.PADDING * 3)) + Images.statsBG.getWidth() + i, (getPosY() - (CFG.PADDING * 2)) + i2, (getWidth() + (CFG.PADDING * 6)) - Images.statsBG.getWidth(), getHeight() + (CFG.PADDING * 4), true, false);
            super.draw(spriteBatch, i, i2, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return (CFG.GAME_WIDTH - (CFG.PADDING * 4)) - getTextWidth();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosY() {
            return (ScenarioGuarantee.this.getMenuElement(0).getPosY() - CFG.PADDING) - getHeight();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioGuarantee$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            GameCivs.sSearch = "";
            CFG.brushTool = false;
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(ScenarioDiplomacy.goBackTo);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (ScenarioDiplomacy.goBackTo == View.IN_GAME) {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Back"), Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ScenarioSettings"), Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    public ScenarioGuarantee() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(0, 0));
        arrayList.add(new AnonymousClass2(Game.lang.get("Civilizations") + ": " + Game.lang.get("GuaranteeIndependence"), CFG.PADDING, CFG.BUTTON_HEIGHT + (CFG.PADDING * 3)));
        arrayList.add(new AnonymousClass3(Game.lang.get("Save"), 1, -1, CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, i, i2, (CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, true, true);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
