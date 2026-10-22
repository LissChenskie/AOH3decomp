package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.FBOProvinceNames;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.map.province.ProvinceNameData;
import aoc.kingdoms.lukasz.map.province.ProvinceNamesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapProvinceNamePoints extends Menu {
    public static boolean centerPoint = false;
    public static boolean firstPoint = true;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceNamePoints$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SaveManager.saveProvinceNamesPoints();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
            Game.menuManager.addToast(Game.lang.get("Saved"));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Save"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceNamePoints$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapProvinceNamePoints.firstPoint = !EditorMapProvinceNamePoints.firstPoint;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("Change point");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceNamePoints$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            ProvinceNamesManager.updateDrawProvinceNames();
            Game.mapCities.updateCitiesInGame();
        }
    }

    public EditorMapProvinceNamePoints() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(null, 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass2(null, 1, -1, (CFG.GAME_WIDTH - CFG.PADDING) - (CFG.BUTTON_WIDTH * 2), (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static boolean keyUp(int i) {
        if (i == 62) {
            firstPoint = !firstPoint;
            centerPoint = false;
            return true;
        }
        if (i == 31) {
            centerPoint = !centerPoint;
            return true;
        }
        if (Game.iActiveProvince >= 0) {
            if (ProvinceNamesManager.provinceNames.get(Game.iActiveProvince) != null) {
                if (i == 46) {
                    if (Game.settingsManager.SETTINGS_PROVINCE_NAMES == 3) {
                        Game.settingsManager.SETTINGS_PROVINCE_NAMES = 2;
                    } else {
                        Game.settingsManager.SETTINGS_PROVINCE_NAMES = 3;
                    }
                    Game.addSimpleTask(new AnonymousClass3("updateDrawProvinceNames"));
                }
                if (centerPoint) {
                    if (i == 21) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterX -= 1.0f;
                    }
                    if (i == 22) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterX += 1.0f;
                    }
                    if (i == 19) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterY -= 1.0f;
                    }
                    if (i == 20) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterY += 1.0f;
                    }
                    if (AA_KeyManager.CTRL_HOLD) {
                        if (i == 29) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterX += Game.mapBG.iMapScale * (-15);
                        }
                        if (i == 32) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterX += Game.mapBG.iMapScale * 15;
                        }
                        if (i == 51) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterY += Game.mapBG.iMapScale * (-15);
                        }
                        if (i == 47) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterY += Game.mapBG.iMapScale * 15;
                        }
                    } else {
                        if (i == 29) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterX += Game.mapBG.iMapScale * (-3);
                        }
                        if (i == 32) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterX += Game.mapBG.iMapScale * 3;
                        }
                        if (i == 51) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterY += Game.mapBG.iMapScale * (-3);
                        }
                        if (i == 47) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterY += Game.mapBG.iMapScale * 3;
                        }
                    }
                } else if (firstPoint) {
                    if (i == 21) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX -= 1.0f;
                    }
                    if (i == 22) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX += 1.0f;
                    }
                    if (i == 19) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY -= 1.0f;
                    }
                    if (i == 20) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY += 1.0f;
                    }
                    if (AA_KeyManager.CTRL_HOLD) {
                        if (i == 29) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX += Game.mapBG.iMapScale * (-15);
                        }
                        if (i == 32) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX += Game.mapBG.iMapScale * 15;
                        }
                        if (i == 51) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY += Game.mapBG.iMapScale * (-15);
                        }
                        if (i == 47) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY += Game.mapBG.iMapScale * 15;
                        }
                    } else {
                        if (i == 29) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX += Game.mapBG.iMapScale * (-3);
                        }
                        if (i == 32) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX += Game.mapBG.iMapScale * 3;
                        }
                        if (i == 51) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY += Game.mapBG.iMapScale * (-3);
                        }
                        if (i == 47) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY += Game.mapBG.iMapScale * 3;
                        }
                    }
                } else {
                    if (i == 21) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX2 -= 1.0f;
                    }
                    if (i == 22) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX2 += 1.0f;
                    }
                    if (i == 19) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY2 -= 1.0f;
                    }
                    if (i == 20) {
                        ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY2 += 1.0f;
                    }
                    if (AA_KeyManager.CTRL_HOLD) {
                        if (i == 29) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX2 += Game.mapBG.iMapScale * (-15);
                        }
                        if (i == 32) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX2 += Game.mapBG.iMapScale * 15;
                        }
                        if (i == 51) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY2 += Game.mapBG.iMapScale * (-15);
                        }
                        if (i == 47) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY2 += Game.mapBG.iMapScale * 15;
                        }
                    } else {
                        if (i == 29) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX2 += Game.mapBG.iMapScale * (-3);
                        }
                        if (i == 32) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX2 += Game.mapBG.iMapScale * 3;
                        }
                        if (i == 51) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY2 += Game.mapBG.iMapScale * (-3);
                        }
                        if (i == 47) {
                            ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY2 += Game.mapBG.iMapScale * 3;
                        }
                    }
                }
                if (i == 44) {
                    if (ProvinceNamesManager.provinceNames.get(Game.iActiveProvince) == null) {
                        return true;
                    }
                    ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX = Game.getProvince(Game.iActiveProvince).getCenterX();
                    ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX2 = Game.getProvince(Game.iActiveProvince).getCenterX();
                    ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY = Game.getProvince(Game.iActiveProvince).getCenterY();
                    ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY2 = Game.getProvince(Game.iActiveProvince).getCenterY();
                    ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterX = Game.getProvince(Game.iActiveProvince).getCenterX();
                    ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fCenterY = Game.getProvince(Game.iActiveProvince).getCenterY();
                }
                if (ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX2 < ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX) {
                    float f = ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX;
                    ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX = ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX2;
                    ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fX2 = f;
                    float f2 = ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY;
                    ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY = ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY2;
                    ProvinceNamesManager.provinceNames.get(Game.iActiveProvince).fY2 = f2;
                    firstPoint = !firstPoint;
                }
                ProvinceNamesManager.clearProvNameData(Game.iActiveProvince);
                ProvinceNamesManager.buildProvNameData(Game.iActiveProvince, false);
                return true;
            }
            ProvinceNameData provinceNameData = new ProvinceNameData();
            provinceNameData.fCenterX = Game.getProvince(Game.iActiveProvince).getCenterX();
            provinceNameData.fCenterY = Game.getProvince(Game.iActiveProvince).getCenterY();
            provinceNameData.fX = Game.getProvince(Game.iActiveProvince).getMinX();
            provinceNameData.fY = Game.getProvince(Game.iActiveProvince).getCenterY();
            provinceNameData.fX2 = Game.getProvince(Game.iActiveProvince).getMaxX();
            provinceNameData.fY2 = Game.getProvince(Game.iActiveProvince).getCenterY();
            ProvinceNamesManager.provinceNames.set(Game.iActiveProvince, provinceNameData);
            ProvinceNamesManager.clearProvNameData(Game.iActiveProvince);
            ProvinceNamesManager.buildProvNameData(Game.iActiveProvince, false);
        }
        return false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, i, (((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH, (CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, true, false);
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, (((CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH) + i, (((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH, (CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, false, false);
        drawEditorText(spriteBatch, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
        FBOProvinceNames.fboNumToGenerate_Names = 0;
        FBOProvinceNames.disposeProvinceNamesTexture();
        FBOProvinceNames.disposeProvinceNamesFBO();
    }

    public final void drawEditorText(SpriteBatch spriteBatch, int i, int i2) {
        String str;
        String str2 = ((((((Game.iActiveProvince >= 0 ? "PROVINCE NAME: " + Game.getProvince(Game.iActiveProvince).getProvinceName() : "SELECT PROVINCE") + "\n W A S D x3") + "\n CTRL + W A S D x15") + "\n ARROWS x1") + TGqtTWl.kuBKwp) + "\n C -> Center Point ON/OFF") + "\n P -> RESET";
        if (centerPoint) {
            str = str2 + "\n MODE -> CENTER POINT";
        } else {
            str = firstPoint ? str2 + "\n MODE -> LEFT POINT" : str2 + "\n MODE -> RIGHT POINT";
        }
        Renderer.glyphLayout.setText(Renderer.fontMain.get(0), str);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
        Renderer.drawBoxCorner(spriteBatch, (CFG.PADDING * 3) + i, (CFG.PADDING * 3) + i2, ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 2), ((int) Renderer.glyphLayout.height) + (CFG.PADDING * 2));
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, str, i + (CFG.PADDING * 4), i2 + (CFG.PADDING * 4), Colors.COLOR_TEXT_TITLE);
    }
}
