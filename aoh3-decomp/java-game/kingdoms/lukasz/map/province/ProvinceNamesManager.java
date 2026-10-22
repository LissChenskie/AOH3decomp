package aoc.kingdoms.lukasz.map.province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.FBOProvinceNames;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.jakowski.zOther.Point_XY;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegion;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceNamePoints;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.FrameBuffer;
import com.badlogic.gdx.math.CatmullRomSpline;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceNamesManager {
    public static final int FONT_ID = 0;
    public static int NULL_INDICATOR = 666;
    public static List<ProvinceNameData> provinceNames = new ArrayList();
    public static DrawProvinceNames drawProvinceNames = new AnonymousClass1();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceNamesManager$1, reason: invalid class name */
    class AnonymousClass1 implements DrawProvinceNames {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceNamesManager.DrawProvinceNames
        public void drawProvNames(SpriteBatch spriteBatch) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceNamesManager$2, reason: invalid class name */
    class AnonymousClass2 implements DrawProvinceNames {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceNamesManager.DrawProvinceNames
        public void drawProvNames(SpriteBatch spriteBatch) {
            if (Game.mapScale.getCurrentScale() < Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
                if (ProvinceDrawArmy.drawCitiesHideAnimation) {
                    ProvinceNamesManager.drawProvNames_Just_Medium_Default(spriteBatch);
                }
            } else if (Game.settingsManager.FBO_PROVINCE_NAMES) {
                ProvinceNamesManager.drawProvNames_Just_Medium(spriteBatch);
            } else {
                ProvinceNamesManager.drawProvNames_Just_Medium_Default(spriteBatch);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceNamesManager$3, reason: invalid class name */
    class AnonymousClass3 implements DrawProvinceNames {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceNamesManager.DrawProvinceNames
        public void drawProvNames(SpriteBatch spriteBatch) {
            if (Game.mapScale.getCurrentScale() < Game.DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE) {
                if (ProvinceDrawArmy.drawCitiesHideAnimation) {
                    ProvinceNamesManager.drawProvNames_Just_Default(spriteBatch);
                }
            } else if (Game.settingsManager.FBO_PROVINCE_NAMES) {
                ProvinceNamesManager.drawProvNames_Just(spriteBatch);
            } else {
                ProvinceNamesManager.drawProvNames_Just_Default(spriteBatch);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceNamesManager$4, reason: invalid class name */
    class AnonymousClass4 implements DrawProvinceNames {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceNamesManager.DrawProvinceNames
        public void drawProvNames(SpriteBatch spriteBatch) {
        }
    }

    public interface DrawProvinceNames {
        void drawProvNames(SpriteBatch spriteBatch);
    }

    public static final void buildProvNameData() {
        int size = provinceNames.size();
        boolean z = false;
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (size <= i) {
                buildProvNamePoints(i);
                size = provinceNames.size();
                z = true;
            }
            buildProvNameData(i, false);
        }
        if (z) {
            SaveManager.saveProvinceNamesPoints();
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x040c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x0406 A[Catch: Exception -> 0x0430, all -> 0x0528, PHI: r8
      0x0406: PHI (r8v39 float) = (r8v37 float), (r8v40 float) binds: [B:59:0x03f4, B:56:0x03b7] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {Exception -> 0x0430, blocks: (B:53:0x037d, B:55:0x038c, B:57:0x03b9, B:61:0x0406, B:63:0x040c, B:58:0x03c9, B:60:0x03f6), top: B:84:0x037d, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x042d A[LOOP:5: B:52:0x037a->B:65:0x042d, LOOP_END] */
    public static final void buildProvNameData(int i, boolean z) {
        int i2;
        float length;
        int i3;
        float linesAngle2;
        if (provinceNames.get(i) != null) {
            if (z) {
                provinceNames.get(i).drawPoints.clear();
                provinceNames.get(i).drawMatrix4.clear();
                provinceNames.get(i).fontScale = 1.0f;
                provinceNames.get(0).drawAngleLow = 0.0f;
            }
            float lineWidth3 = CivilizationRegion.getLineWidth3(provinceNames.get(i).fX, provinceNames.get(i).fY, provinceNames.get(i).fX2, provinceNames.get(i).fY2);
            float f = provinceNames.get(i).fX + ((provinceNames.get(i).fCenterX - provinceNames.get(i).fX) * 0.4f);
            float f2 = provinceNames.get(i).fY + ((provinceNames.get(i).fCenterY - provinceNames.get(i).fY) * 0.4f);
            float f3 = provinceNames.get(i).fX2 + ((provinceNames.get(i).fCenterX - provinceNames.get(i).fX2) * 0.4f);
            float f4 = provinceNames.get(i).fY2 + ((provinceNames.get(i).fCenterY - provinceNames.get(i).fY2) * 0.4f);
            int length2 = Game.getProvince(i).getProvinceName().length() * 8;
            Vector2[] vector2Arr = new Vector2[length2];
            CatmullRomSpline catmullRomSpline = new CatmullRomSpline(new Vector2[]{new Vector2(f, f2), new Vector2(f, f2), new Vector2(provinceNames.get(i).fCenterX, provinceNames.get(i).fCenterY), new Vector2(f3, f4), new Vector2(f3, f4)}, false);
            for (int i4 = 0; i4 < length2; i4++) {
                Vector2 vector2 = new Vector2();
                vector2Arr[i4] = vector2;
                catmullRomSpline.valueAt(vector2, i4 / (length2 - 1.0f));
            }
            float lineWidth4 = 0.0f;
            int i5 = 0;
            while (true) {
                i2 = length2 - 1;
                if (i5 < i2) {
                    float f5 = vector2Arr[i5].x;
                    float f6 = vector2Arr[i5].y;
                    i5++;
                    lineWidth4 += CivilizationRegion.getLineWidth3(f5, f6, vector2Arr[i5].x, vector2Arr[i5].y);
                } else {
                    try {
                        break;
                    } catch (ArithmeticException e) {
                        CFG.exceptionStack(e);
                        length = 0.0f;
                    }
                }
            }
            length = lineWidth4 / (Game.getProvince(i).getProvinceName().length() - 1);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Vector2(vector2Arr[0].x, vector2Arr[0].y));
            float lineWidth5 = 0.0f;
            int i6 = 0;
            for (int i7 = 1; i7 < Game.getProvince(i).getProvinceName().length(); i7++) {
                while (i6 < i2) {
                    int i8 = i6 + 1;
                    lineWidth5 += CivilizationRegion.getLineWidth3(vector2Arr[i6].x, vector2Arr[i6].y, vector2Arr[i8].x, vector2Arr[i8].y);
                    if (lineWidth5 >= length) {
                        arrayList.add(new Vector2(vector2Arr[i6].x, vector2Arr[i6].y));
                        lineWidth5 = length - lineWidth5;
                        break;
                    }
                    i6 = i8;
                }
            }
            arrayList.add(new Vector2(vector2Arr[i2].x, vector2Arr[i2].y));
            ArrayList arrayList2 = new ArrayList();
            float fAtan2 = (float) ((Math.atan2(((Vector2) arrayList.get(0)).y - ((Vector2) arrayList.get(1)).y, (-((Vector2) arrayList.get(0)).x) + ((Vector2) arrayList.get(1)).y) * 180.0d) / 3.141592653589793d);
            int iMin = Math.min(arrayList.size(), Game.getProvince(i).getProvinceName().length());
            for (int i9 = 0; i9 < iMin; i9++) {
                try {
                    if (i9 < Game.getProvince(i).getProvinceName().length() - 1) {
                        int i10 = i9 + 1;
                        linesAngle2 = CivilizationRegion.getLinesAngle2(((Vector2) arrayList.get(i9)).x, ((Vector2) arrayList.get(i9)).y, ((Vector2) arrayList.get(i10)).x, ((Vector2) arrayList.get(i10)).y);
                    } else {
                        int i11 = i9 - 1;
                        linesAngle2 = CivilizationRegion.getLinesAngle2(((Vector2) arrayList.get(i11)).x, ((Vector2) arrayList.get(i11)).y, ((Vector2) arrayList.get(i9)).x, ((Vector2) arrayList.get(i9)).y);
                    }
                    arrayList2.add(Float.valueOf(linesAngle2));
                } catch (Exception unused) {
                    if (i9 == 0) {
                        try {
                            int i12 = i9 + 1;
                            arrayList2.add(Float.valueOf(CivilizationRegion.getLinesAngle2(((Vector2) arrayList.get(i9)).x, ((Vector2) arrayList.get(i9)).y, ((Vector2) arrayList.get(i12)).x, ((Vector2) arrayList.get(i12)).y)));
                        } catch (IndexOutOfBoundsException unused2) {
                            arrayList2.add(Float.valueOf(fAtan2));
                        }
                    } else {
                        int i13 = i9 - 1;
                        try {
                            arrayList2.add(Float.valueOf(CivilizationRegion.getLinesAngle2(((Vector2) arrayList.get(i13)).x, ((Vector2) arrayList.get(i13)).y, ((Vector2) arrayList.get(i9)).x, ((Vector2) arrayList.get(i9)).y)));
                        } catch (IndexOutOfBoundsException unused3) {
                            arrayList2.add(Float.valueOf(fAtan2));
                        }
                    }
                }
            }
            float f7 = lineWidth3 * 0.8f;
            GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
            synchronized (ProvinceNamesManager.class) {
                Renderer.fontBorder.get(0).getData().setScale(1.0f);
                glyphLayout_Game.setText(Renderer.fontBorder.get(0), Game.getProvince(i).getProvinceNameUpperCase());
                float fMax = Math.max(0.1f, f7 / glyphLayout_Game.width);
                if (glyphLayout_Game.width > 0.1f) {
                    Renderer.fontBorder.get(0).getData().setScale(fMax);
                }
                if (f7 > 0.0f) {
                    int i14 = 0;
                    while (true) {
                        try {
                            if (f7 > glyphLayout_Game.width) {
                                fMax += 0.025f;
                                Renderer.fontBorder.get(0).getData().setScale(Math.max(0.001f, fMax));
                                glyphLayout_Game.setText(Renderer.fontBorder.get(0), Game.getProvince(i).getProvinceNameUpperCase());
                                if (f7 < glyphLayout_Game.width) {
                                    provinceNames.get(i).fontScale = Math.max(1.0E-4f, fMax - 0.0125f);
                                    break;
                                }
                                i3 = i14 + 1;
                                if (i14 > 999) {
                                    CFG.LOG("ProvinceNamesManager: tempNumOfIterations: " + i3);
                                    provinceNames.get(i).fontScale = 1.0E-4f;
                                    break;
                                }
                                i14 = i3;
                            } else {
                                fMax -= 0.025f;
                                Renderer.fontBorder.get(0).getData().setScale(Math.max(0.001f, fMax));
                                glyphLayout_Game.setText(Renderer.fontBorder.get(0), Game.getProvince(i).getProvinceNameUpperCase());
                                if (f7 > glyphLayout_Game.width) {
                                    provinceNames.get(i).fontScale = Math.max(1.0E-4f, fMax + 0.0125f);
                                    break;
                                }
                                i3 = i14 + 1;
                                if (i14 > 999) {
                                    CFG.LOG("ProvinceNamesManager: tempNumOfIterations: " + i3);
                                    provinceNames.get(i).fontScale = 1.0E-4f;
                                    break;
                                }
                                i14 = i3;
                            }
                        } catch (Exception unused4) {
                            provinceNames.get(i).fontScale = 1.0E-4f;
                        }
                    }
                }
            }
            int size = arrayList.size();
            for (int i15 = 0; i15 < size; i15++) {
                provinceNames.get(i).drawPoints.add(new Point_XY((int) ((Vector2) arrayList.get(i15)).x, (int) ((Vector2) arrayList.get(i15)).y));
            }
            int size2 = arrayList2.size();
            for (int i16 = 0; i16 < size2; i16++) {
                provinceNames.get(i).drawMatrix4.add(new Matrix4().rotate(Renderer.textRotatedVector3, ((Float) arrayList2.get(i16)).floatValue()));
            }
            provinceNames.get(i).drawAngleLow = CivilizationRegion.getLinesAngle2(((Vector2) arrayList.get(0)).x, ((Vector2) arrayList.get(0)).y, ((Vector2) arrayList.get(arrayList.size() - 1)).x, ((Vector2) arrayList.get(arrayList.size() - 1)).y);
            for (int size3 = provinceNames.get(i).drawMatrix4.size(); size3 < Game.getProvince(i).getProvinceNameUpperCase().length(); size3++) {
                provinceNames.get(i).drawMatrix4.add(new Matrix4().rotate(Renderer.textRotatedVector3, 0.0f));
            }
            provinceNames.get(i).drawMatrix4.add(new Matrix4().rotate(Renderer.textRotatedVector3, provinceNames.get(i).drawAngleLow));
        }
    }

    public static final void buildProvNamePoints(int i) {
        ProvinceNameData provinceNameData = new ProvinceNameData();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < Game.getProvince(i).getPointsSize(); i2++) {
            arrayList.add(false);
        }
        int i3 = 0;
        while (i3 < Game.getProvince(i).getPointsSize() - 2 && i3 < 299) {
            i3 += 2;
            boolean z = true;
            float f = 0.0f;
            int i4 = 0;
            int i5 = 1;
            for (int i6 = 0; i6 < Game.getProvince(i).getPointsSize() - 1; i6++) {
                if (!((Boolean) arrayList.get(i6)).booleanValue()) {
                    for (int i7 = i6 + 1; i7 < Game.getProvince(i).getPointsSize(); i7++) {
                        if (!((Boolean) arrayList.get(i7)).booleanValue()) {
                            float fCeil = (float) Math.ceil(Math.sqrt(((Game.getProvince(i).getPointsX(i7) - Game.getProvince(i).getPointsX(i6)) * (Game.getProvince(i).getPointsX(i7) - Game.getProvince(i).getPointsX(i6))) + ((Game.getProvince(i).getPointsY(i6) - Game.getProvince(i).getPointsY(i7)) * (Game.getProvince(i).getPointsY(i6) - Game.getProvince(i).getPointsY(i7)))));
                            if (fCeil > f) {
                                provinceNameData.fX = Game.getProvince(i).getPointsX(i6);
                                provinceNameData.fX2 = Game.getProvince(i).getPointsX(i7);
                                provinceNameData.fY = Game.getProvince(i).getPointsY(i6);
                                provinceNameData.fY2 = Game.getProvince(i).getPointsY(i7);
                                provinceNameData.fCenterX = Game.getProvince(i).getCenterX();
                                provinceNameData.fCenterY = Game.getProvince(i).getCenterY();
                                i4 = i6;
                                i5 = i7;
                                f = fCeil;
                            }
                        }
                    }
                }
            }
            arrayList.set(i4, true);
            arrayList.set(i5, true);
            if (provinceNameData.fX2 < provinceNameData.fX) {
                float f2 = provinceNameData.fX;
                provinceNameData.fX = provinceNameData.fX2;
                provinceNameData.fX2 = f2;
                float f3 = provinceNameData.fY;
                provinceNameData.fY = provinceNameData.fY2;
                provinceNameData.fY2 = f3;
            }
            float centerX = provinceNameData.fX + ((Game.getProvince(i).getCenterX() - provinceNameData.fX) * 0.4f);
            float centerY = provinceNameData.fY + ((Game.getProvince(i).getCenterY() - provinceNameData.fY) * 0.4f);
            float centerX2 = provinceNameData.fX2 + ((Game.getProvince(i).getCenterX() - provinceNameData.fX2) * 0.4f);
            float centerY2 = provinceNameData.fY2 + ((Game.getProvince(i).getCenterY() - provinceNameData.fY2) * 0.4f);
            int length = Game.getProvince(i).getProvinceName().length() * 4;
            Vector2[] vector2Arr = new Vector2[length];
            CatmullRomSpline catmullRomSpline = new CatmullRomSpline(new Vector2[]{new Vector2(centerX, centerY), new Vector2(centerX, centerY), new Vector2(Game.getProvince(i).getCenterX(), Game.getProvince(i).getCenterY()), new Vector2(centerX2, centerY2), new Vector2(centerX2, centerY2)}, false);
            for (int i8 = 0; i8 < length; i8++) {
                Vector2 vector2 = new Vector2();
                vector2Arr[i8] = vector2;
                catmullRomSpline.valueAt(vector2, i8 / (length - 1.0f));
            }
            for (int i9 = length - 1; i9 >= 0; i9--) {
                if (Game.setProvinceID_Point((int) vector2Arr[i9].x, (int) vector2Arr[i9].y) != i || Game.setProvinceID_Point(((int) vector2Arr[i9].x) + CFG.PADDING, (int) vector2Arr[i9].y) != i || Game.setProvinceID_Point(((int) vector2Arr[i9].x) - CFG.PADDING, (int) vector2Arr[i9].y) != i || Game.setProvinceID_Point((int) vector2Arr[i9].x, ((int) vector2Arr[i9].y) + CFG.PADDING) != i || Game.setProvinceID_Point((int) vector2Arr[i9].x, ((int) vector2Arr[i9].y) - CFG.PADDING) != i) {
                    z = false;
                    break;
                }
            }
            if (z) {
                i3 = -1;
                break;
            }
        }
        if (i3 > 0) {
            provinceNames.add(null);
        } else {
            provinceNames.add(provinceNameData);
        }
    }

    public static void clearProvNameData(int i) {
        if (provinceNames.get(i) != null) {
            provinceNames.get(i).drawPoints.clear();
            provinceNames.get(i).drawMatrix4.clear();
            provinceNames.get(i).fontScale = 1.0f;
            provinceNames.get(i).drawAngleLow = 0.0f;
        }
    }

    public static final synchronized void drawProvName(SpriteBatch spriteBatch, int i, int i2) {
        if (provinceNames.get(i) == null) {
            return;
        }
        try {
            ProvinceNameData provinceNameData = provinceNames.get(i);
            float currentScale = provinceNameData.fontScale * Game.mapScale.getCurrentScale();
            if (currentScale > Game.settingsManager.PROVINCE_NAMES_SCALE) {
                Renderer.fontBorder.get(0).getData().setScale(currentScale);
                int translateProvincePosX = Game.getProvince(i).getTranslateProvincePosX() + i2;
                for (int i3 = Game.getProvince(i).iProvinceNameLength_Minus1; i3 >= 0; i3--) {
                    Renderer.drawTextRotatedBorder(spriteBatch, 0, String.valueOf(Game.getProvince(i).getProvinceNameUpperCase().charAt(i3)), (int) ((provinceNameData.drawPoints.get(i3).getPosX() + translateProvincePosX) * Game.mapScale.getCurrentScale()), (int) ((Game.mapCoords.getPosY() + provinceNameData.drawPoints.get(i3).getPosY()) * Game.mapScale.getCurrentScale()), provinceNameData.drawMatrix4.get(i3));
                }
            }
        } catch (Exception unused) {
        }
    }

    public static final void drawProvNamePoints(SpriteBatch spriteBatch, int i) {
        if (provinceNames.get(i) != null) {
            if (EditorMapProvinceNamePoints.firstPoint && !EditorMapProvinceNamePoints.centerPoint) {
                spriteBatch.setColor(Color.RED);
            }
            Images.pix.draw(spriteBatch, ((int) (Game.mapCoords.getPosX() + provinceNames.get(i).fX)) - 1, ((int) (Game.mapCoords.getPosY() + provinceNames.get(i).fY)) - 1, 3, 3);
            spriteBatch.setColor(Color.WHITE);
            if (EditorMapProvinceNamePoints.centerPoint) {
                spriteBatch.setColor(Color.RED);
            }
            Images.pix.draw(spriteBatch, ((int) (Game.mapCoords.getPosX() + provinceNames.get(i).fCenterX)) - 1, ((int) (Game.mapCoords.getPosY() + provinceNames.get(i).fCenterY)) - 1, 3, 3);
            spriteBatch.setColor(Color.WHITE);
            if (!EditorMapProvinceNamePoints.firstPoint && !EditorMapProvinceNamePoints.centerPoint) {
                spriteBatch.setColor(Color.RED);
            }
            Images.pix.draw(spriteBatch, ((int) (Game.mapCoords.getPosX() + provinceNames.get(i).fX2)) - 1, ((int) (Game.mapCoords.getPosY() + provinceNames.get(i).fY2)) - 1, 3, 3);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    public static final synchronized void drawProvName_Medium(SpriteBatch spriteBatch, int i, int i2) {
        if (provinceNames.get(i) == null) {
            return;
        }
        float currentScale = provinceNames.get(i).fontScale * Game.mapScale.getCurrentScale();
        if (currentScale > Game.settingsManager.PROVINCE_NAMES_SCALE) {
            Renderer.fontBorder.get(0).getData().setScale(currentScale);
            Renderer.drawTextRotatedBorder_2(spriteBatch, 0, "" + Game.getProvince(i).getProvinceNameUpperCase(), (int) ((Game.getProvince(i).getTranslateProvincePosX() + i2 + provinceNames.get(i).drawPoints.get(0).getPosX()) * Game.mapScale.getCurrentScale()), (int) ((Game.mapCoords.getPosY() + provinceNames.get(i).drawPoints.get(0).getPosY()) * Game.mapScale.getCurrentScale()), provinceNames.get(i).drawAngleLow);
        }
    }

    public static final synchronized void drawProvName_Old(SpriteBatch spriteBatch, int i, int i2) {
        try {
            if (!Game.getProvince(i).getSeaProvince() && provinceNames.get(i) != null) {
                Renderer.fontBorder.get(0).getData().setScale(provinceNames.get(i).fontScale * Game.mapScale.getCurrentScale());
                int translateProvincePosX = Game.getProvince(i).getTranslateProvincePosX() + i2;
                for (int i3 = Game.getProvince(i).iProvinceNameLength_Minus1; i3 >= 0; i3--) {
                    try {
                        Renderer.drawTextRotatedBorder(spriteBatch, 0, "" + Game.getProvince(i).getProvinceNameUpperCase().charAt(i3), (int) ((provinceNames.get(i).drawPoints.get(i3).getPosX() + translateProvincePosX) * Game.mapScale.getCurrentScale()), (int) ((Game.mapCoords.getPosY() + provinceNames.get(i).drawPoints.get(i3).getPosY()) * Game.mapScale.getCurrentScale()), provinceNames.get(i).drawMatrix4.get(i3));
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Exception unused2) {
        }
    }

    public static final void drawProvNames(SpriteBatch spriteBatch) {
        try {
            drawProvinceNames.drawProvNames(spriteBatch);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final synchronized void drawProvNames_Just(SpriteBatch spriteBatch) {
        try {
            if (FBOProvinceNames.textureProvince_Names == null) {
                FBOProvinceNames.updateFBO();
                if (FBOProvinceNames.fboNumToGenerate_Names >= GameValues.value.FBO_NUM_TO_GENERATE_NAMES) {
                    FBOProvinceNames.fboNumToGenerate_Names = 0;
                    spriteBatch.end();
                    FBOProvinceNames.disposeProvinceNamesFBO();
                    FBOProvinceNames.disposeProvinceNamesTexture();
                    FBOProvinceNames.fboProvince_Names = new FrameBuffer(Pixmap.Format.RGBA8888, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, false);
                    FBOProvinceNames.fboProvince_Names.begin();
                    spriteBatch.begin();
                    Matrix4 matrix4Cpy = spriteBatch.getTransformMatrix().cpy();
                    Renderer.fontBorder.get(0).setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
                    drawProvNames_Just_Default_Inner(spriteBatch);
                    spriteBatch.setTransformMatrix(matrix4Cpy);
                    spriteBatch.end();
                    FBOProvinceNames.fboProvince_Names.end();
                    FBOProvinceNames.textureProvince_Names = FBOProvinceNames.fboProvince_Names.getColorBufferTexture();
                    FBOProvinceNames.fboPosX = Game.mapCoords.getPosX();
                    FBOProvinceNames.fboPosY = Game.mapCoords.getPosY();
                    spriteBatch.begin();
                    if (FBOProvinceNames.textureProvince_Names != null) {
                        FBOProvinceNames.drawProvinceNames(spriteBatch);
                    }
                } else {
                    drawProvNames_Just_Default(spriteBatch);
                }
            } else if (FBOProvinceNames.lastPosX == Game.mapCoords.getPosX() && FBOProvinceNames.lastPosY == Game.mapCoords.getPosY()) {
                FBOProvinceNames.drawProvinceNames(spriteBatch);
            } else {
                FBOProvinceNames.disposeProvinceNamesTexture();
                FBOProvinceNames.disposeProvinceNamesFBO();
                drawProvNames_Just_Default(spriteBatch);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final synchronized void drawProvNames_Just_Default(SpriteBatch spriteBatch) {
        Matrix4 matrix4Cpy = spriteBatch.getTransformMatrix().cpy();
        Renderer.fontBorder.get(0).setColor(new Color(1.0f, 1.0f, 1.0f, Game.settingsManager.PROVINCE_NAMES_ALPHA * ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA));
        drawProvNames_Just_Default_Inner(spriteBatch);
        spriteBatch.setTransformMatrix(matrix4Cpy);
    }

    public static final void drawProvNames_Just_Default_Inner(SpriteBatch spriteBatch) {
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            try {
                drawProvName(spriteBatch, Game.getProvinceInViewID(i), 0);
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            drawProvName(spriteBatch, Game.getExtraProvinceInViewID(i2), Game.mapBG.getWidth());
        }
    }

    public static final synchronized void drawProvNames_Just_Medium(SpriteBatch spriteBatch) {
        try {
            if (FBOProvinceNames.textureProvince_Names == null) {
                FBOProvinceNames.updateFBO();
                if (FBOProvinceNames.fboNumToGenerate_Names >= GameValues.value.FBO_NUM_TO_GENERATE_NAMES) {
                    FBOProvinceNames.fboNumToGenerate_Names = 0;
                    spriteBatch.end();
                    FBOProvinceNames.disposeProvinceNamesFBO();
                    FBOProvinceNames.disposeProvinceNamesTexture();
                    FBOProvinceNames.fboProvince_Names = new FrameBuffer(Pixmap.Format.RGBA8888, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, false);
                    FBOProvinceNames.fboProvince_Names.begin();
                    spriteBatch.begin();
                    Matrix4 matrix4Cpy = spriteBatch.getTransformMatrix().cpy();
                    Renderer.fontBorder.get(0).setColor(new Color(1.0f, 1.0f, 1.0f, 1.0f));
                    drawProvNames_Just_Medium_Default_Inner(spriteBatch);
                    spriteBatch.setTransformMatrix(matrix4Cpy);
                    spriteBatch.end();
                    FBOProvinceNames.fboProvince_Names.end();
                    FBOProvinceNames.textureProvince_Names = FBOProvinceNames.fboProvince_Names.getColorBufferTexture();
                    FBOProvinceNames.fboPosX = Game.mapCoords.getPosX();
                    FBOProvinceNames.fboPosY = Game.mapCoords.getPosY();
                    spriteBatch.begin();
                    if (FBOProvinceNames.textureProvince_Names != null) {
                        FBOProvinceNames.drawProvinceNames(spriteBatch);
                    }
                } else {
                    drawProvNames_Just_Medium_Default(spriteBatch);
                }
            } else if (FBOProvinceNames.lastPosX == Game.mapCoords.getPosX() && FBOProvinceNames.lastPosY == Game.mapCoords.getPosY()) {
                FBOProvinceNames.drawProvinceNames(spriteBatch);
            } else {
                FBOProvinceNames.disposeProvinceNamesTexture();
                FBOProvinceNames.disposeProvinceNamesFBO();
                drawProvNames_Just_Medium_Default(spriteBatch);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static final synchronized void drawProvNames_Just_Medium_Default(SpriteBatch spriteBatch) {
        Matrix4 matrix4Cpy = spriteBatch.getTransformMatrix().cpy();
        Renderer.fontBorder.get(0).setColor(new Color(1.0f, 1.0f, 1.0f, Game.settingsManager.PROVINCE_NAMES_ALPHA * ProvinceDrawArmy.DRAW_PROVINCE_NAMES_ALPHA));
        drawProvNames_Just_Medium_Default_Inner(spriteBatch);
        spriteBatch.setTransformMatrix(matrix4Cpy);
    }

    public static final void drawProvNames_Just_Medium_Default_Inner(SpriteBatch spriteBatch) {
        for (int i = 0; i < Game.NUM_OF_PROVINCES_IN_VIEW; i++) {
            try {
                drawProvName_Medium(spriteBatch, Game.getProvinceInViewID(i), 0);
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
        for (int i2 = 0; i2 < Game.NUM_OF_EXTRA_PROVINCES_IN_VIEW; i2++) {
            drawProvName_Medium(spriteBatch, Game.getExtraProvinceInViewID(i2), Game.mapBG.getWidth());
        }
    }

    public static final void updateDrawProvinceNames() {
        if (Game.settingsManager.SETTINGS_PROVINCE_NAMES <= 1) {
            drawProvinceNames = new AnonymousClass4();
        } else if (Game.settingsManager.SETTINGS_PROVINCE_NAMES == 2) {
            drawProvinceNames = new AnonymousClass2();
        } else {
            drawProvinceNames = new AnonymousClass3();
        }
    }
}
