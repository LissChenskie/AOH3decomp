package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapSeaProvinces extends Menu {
    public static int nLevelOfPort = -1;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapSeaProvinces$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SaveManager.saveProvinceDetails();
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
            Game.menuManager.addToast(Game.lang.get("Saved"));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Save"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapSeaProvinces$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    public EditorMapSeaProvinces() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(null, 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass2(null, 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static boolean keyUp(int i) {
        if (i == 21) {
            int i2 = nLevelOfPort - 1;
            nLevelOfPort = i2;
            if (i2 < -4) {
                nLevelOfPort = -4;
            }
            return true;
        }
        if (i == 22) {
            int i3 = nLevelOfPort + 1;
            nLevelOfPort = i3;
            if (i3 > -1) {
                nLevelOfPort = -1;
            }
            return true;
        }
        if (i != 66 && i != 62) {
            return false;
        }
        if (Game.iActiveProvince >= 0) {
            boolean z = (Game.getProvince(Game.iActiveProvince).getLevelOfPort() >= -1 && nLevelOfPort < -1) || (Game.getProvince(Game.iActiveProvince).getLevelOfPort() < -1 && nLevelOfPort >= -1);
            Game.getProvince(Game.iActiveProvince).setLevelOfPort(nLevelOfPort);
            if (Game.getProvince(Game.iActiveProvince).getLevelOfPort() < -1) {
                Game.getProvince(Game.iActiveProvince).setContinent(0);
            } else if (Game.getProvince(Game.iActiveProvince).getContinent() == 0) {
                Game.getProvince(Game.iActiveProvince).setContinent(1);
            }
            if (z) {
                Game.getProvince(Game.iActiveProvince).loadProvinceBG();
            }
            Game.getProvince(Game.iActiveProvince).updateSeaProvince();
            Game.updateProvincesInView = true;
            ProvinceDrawDetails.updateDrawProvinceDetails_SeaProvinces(Game.iActiveProvince);
        }
        return true;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.boxSimple, i, ((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2), (CFG.BUTTON_WIDTH * 4) + (CFG.PADDING * 3), CFG.BUTTON_HEIGHT + (CFG.PADDING * 2));
        drawEditorText(spriteBatch, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    public final void drawEditorText(SpriteBatch spriteBatch, int i, int i2) {
        String str;
        StringBuilder sbAppend = new StringBuilder("SET TO LEVEL: ").append(nLevelOfPort).append(" [");
        int i3 = nLevelOfPort;
        if (i3 == -1) {
            str = "LAND";
        } else if (i3 == -2) {
            str = "SEA";
        } else {
            str = i3 == -3 ? "CLOSED SEA" : nEtnPpUF.rziK;
        }
        String string = sbAppend.append(str).append("]\n\nENTER/SPACE -> SET LEVEL\nLEFT - > LEVEL--\nRIGHT - > LEVEL++\n\n-1 = LAND PROVINCE\n-2 = SEA PROVINCE\n-3 = CLOSED SEA, LAKES\n-4 = SEA PROVINCE, x1 SCALE").toString();
        Renderer.glyphLayout.setText(Renderer.fontMain.get(0), string);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
        Renderer.drawBoxCorner(spriteBatch, (CFG.PADDING * 4) + i, (CFG.PADDING * 4) + i2, (int) Renderer.glyphLayout.width, (int) Renderer.glyphLayout.height);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, string, i + (CFG.PADDING * 4), i2 + (CFG.PADDING * 4), Colors.COLOR_TEXT_TITLE);
    }
}
