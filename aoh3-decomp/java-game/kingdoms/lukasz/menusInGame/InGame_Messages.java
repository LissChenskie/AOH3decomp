package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.MessageButton;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Messages extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Messages$1, reason: invalid class name */
    class AnonymousClass1 extends MessageButton {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Messages$1$1, reason: invalid class name and collision with other inner class name */
        class C00081 extends ClickAnimation {
            C00081(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_GOLD;
            }
        }

        AnonymousClass1(String str, int i, int i2, int i3, long j, int i4, int i5, boolean z) {
            super(str, i, i2, i3, j, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MessageButton, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new C00081(getPosX() + (getWidth() / 2) + InGame_Messages.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Messages.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    public InGame_Messages() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING / 2;
        try {
            int width = 0;
            for (int i2 = Game.player.iMessagesSize - 1; i2 >= 0; i2--) {
                arrayList.add(new AnonymousClass1(Game.player.messages.get(i2).key, Game.player.messages.get(i2).fromCivID, Game.player.messages.get(i2).getImageID(), Game.player.messages.get(i2).expiresTurnID, Game.player.messages.get(i2).time, width, i, true));
                width += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        initMenu(null, InGame.rankPosXW, ImageManager.getImage(Images.topStats).getHeight(), CFG.GAME_WIDTH - InGame.rankPosXW, ImageManager.getImage(Images.messageBG).getHeight() + (CFG.PADDING * 3), arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionElement(int i) {
        super.actionElement(i);
        ProvinceDraw.drawProvincesCiv_HoveredFlagID = 0;
    }
}
