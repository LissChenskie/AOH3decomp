package aoc.kingdoms.lukasz.menu;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.FBOProvincesBG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menusEditor.CreateCiv;
import aoc.kingdoms.lukasz.menusEditor.GameCivsEdit;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ColorPicker {
    public static int ACTIVE_CIV_ID = 0;
    public static int activeRGB = -1;
    public ColorPicker_AoC_Action ColorPicker_AoC_Action;
    private int iBTextWidth;
    private int iGTextWidth;
    private int iHUEWidth;
    private int iLastHUEPosY;
    private int iLastSVPosX;
    private int iLastSVPosY;
    private int iRGBTextWidth;
    private int iRTextWidth;
    private int iResizeHeight;
    private int iSVHeight;
    private int iStartPosX;
    private int iStartPosY;
    private int iStartResizeHeight;
    public static Color hueColor = new Color(1.0f, 0.0f, 0.0f, 1.0f);
    public static Color activeColor = new Color(1.0f, 0.0f, 0.0f, 1.0f);
    private int iPosX = 100;
    private int iPosY = 100;
    private boolean visible = false;
    private int fontID = 0;
    private boolean activeHUE = false;
    private boolean activeSV = false;
    private boolean activeResize = false;
    private boolean activeMove = false;
    private boolean activeClose = false;
    private int iActiveColorID = -1;
    private float fAlpha = 1.0f;
    private Color colorSVPos = Color.WHITE;
    private final float RGB_TEXT_SCALE = 0.9f;
    private List<Box> lRGBBoxes = new ArrayList();
    private List<Box> lColorsBoxes = new ArrayList();
    private List<Color> lColors = new ArrayList();
    private float[] hsv = {0.0f, 1.0f, 1.0f};
    private float hueVal = 1.0f;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.ColorPicker$1, reason: invalid class name */
    class AnonymousClass1 implements ColorPicker_AoC_Action {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void setActiveProvince_Action() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void update() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.ColorPicker$10, reason: invalid class name */
    static /* synthetic */ class AnonymousClass10 {
        static final /* synthetic */ int[] $SwitchMap$aoc$kingdoms$lukasz$menu$ColorPicker$PickerAction;

        static {
            int[] iArr = new int[PickerAction.values().length];
            $SwitchMap$aoc$kingdoms$lukasz$menu$ColorPicker$PickerAction = iArr;
            try {
                iArr[PickerAction.NONE_ACTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$ColorPicker$PickerAction[PickerAction.GAMECIVS_EDIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$ColorPicker$PickerAction[PickerAction.CREATE_CIV_EDIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$ColorPicker$PickerAction[PickerAction.CREATE_CIV_DIVISION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$ColorPicker$PickerAction[PickerAction.CIV_COLOR_NEWGAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$menu$ColorPicker$PickerAction[PickerAction.CIV_COLOR_INGAME.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.ColorPicker$2, reason: invalid class name */
    class AnonymousClass2 implements ColorPicker_AoC_Action {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void setActiveProvince_Action() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void update() {
            GameCivsEdit.nCiv.iR = (int) (ColorPicker.activeColor.r * 255.0f);
            GameCivsEdit.nCiv.iG = (int) (ColorPicker.activeColor.g * 255.0f);
            GameCivsEdit.nCiv.iB = (int) (ColorPicker.activeColor.b * 255.0f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.ColorPicker$3, reason: invalid class name */
    class AnonymousClass3 implements ColorPicker_AoC_Action {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void setActiveProvince_Action() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void update() {
            CreateCiv.nCiv.iR = (int) (ColorPicker.activeColor.r * 255.0f);
            CreateCiv.nCiv.iG = (int) (ColorPicker.activeColor.g * 255.0f);
            CreateCiv.nCiv.iB = (int) (ColorPicker.activeColor.b * 255.0f);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.ColorPicker$4, reason: invalid class name */
    class AnonymousClass4 implements ColorPicker_AoC_Action {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void setActiveProvince_Action() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void update() {
            Game.flagManager.flagEdit.lDivisionColors.set(Game.flagManager.activeColorID, new Color(ColorPicker.activeColor.r, ColorPicker.activeColor.g, ColorPicker.activeColor.b, 1.0f));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.ColorPicker$5, reason: invalid class name */
    class AnonymousClass5 implements ColorPicker_AoC_Action {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void setActiveProvince_Action() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void update() {
            Game.getCiv(ColorPicker.ACTIVE_CIV_ID).setR((int) (ColorPicker.activeColor.r * 255.0f));
            Game.getCiv(ColorPicker.ACTIVE_CIV_ID).setG((int) (ColorPicker.activeColor.g * 255.0f));
            Game.getCiv(ColorPicker.ACTIVE_CIV_ID).setB((int) (ColorPicker.activeColor.b * 255.0f));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.ColorPicker$6, reason: invalid class name */
    class AnonymousClass6 implements ColorPicker_AoC_Action {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void setActiveProvince_Action() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void update() {
            Game.getCiv(ColorPicker.ACTIVE_CIV_ID).setR((int) (ColorPicker.activeColor.r * 255.0f));
            Game.getCiv(ColorPicker.ACTIVE_CIV_ID).setG((int) (ColorPicker.activeColor.g * 255.0f));
            Game.getCiv(ColorPicker.ACTIVE_CIV_ID).setB((int) (ColorPicker.activeColor.b * 255.0f));
            FBOProvincesBG.redrawnProvinces();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.ColorPicker$7, reason: invalid class name */
    class AnonymousClass7 implements ColorPicker_AoC_Action {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void setActiveProvince_Action() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void update() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.ColorPicker$8, reason: invalid class name */
    class AnonymousClass8 implements ColorPicker_AoC_Action {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void setActiveProvince_Action() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void update() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu.ColorPicker$9, reason: invalid class name */
    class AnonymousClass9 implements ColorPicker_AoC_Action {
        AnonymousClass9() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void setActiveProvince_Action() {
        }

        @Override // aoc.kingdoms.lukasz.menu.ColorPicker.ColorPicker_AoC_Action
        public void update() {
        }
    }

    class Box {
        private int iHeight;
        private int iPosX;
        private int iPosY;
        private int iWidth;
        private boolean visible = true;

        public Box(int i, int i2, int i3, int i4) {
            this.iPosX = i;
            this.iPosY = i2;
            this.iWidth = i3;
            this.iHeight = i4;
        }

        public final int getHeight() {
            return this.iHeight;
        }

        public final int getPosX() {
            return this.iPosX;
        }

        public final int getPosY() {
            return this.iPosY;
        }

        public final boolean getVisible() {
            return this.visible;
        }

        public final int getWidth() {
            return this.iWidth;
        }

        public final void setHeight(int i) {
            this.iHeight = i;
        }

        public final void setPosX(int i) {
            this.iPosX = i;
        }

        public final void setPosY(int i) {
            this.iPosY = i;
        }

        public final void setVisible(boolean z) {
            this.visible = z;
        }

        public final void setWidth(int i) {
            this.iWidth = i;
        }
    }

    public interface ColorPicker_AoC_Action {
        void setActiveProvince_Action();

        void update();
    }

    public enum PickerAction {
        NONE_ACTION,
        GAMECIVS_EDIT,
        CREATE_CIV_EDIT,
        CREATE_CIV_DIVISION,
        CREATE_CIV_OVERLAY,
        CIV_COLOR_NEWGAME,
        CIV_COLOR_INGAME
    }

    public ColorPicker() {
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID), "G 255");
        this.iRGBTextWidth = (int) glyphLayout_Game.width;
        updateRGBWidth();
        this.lRGBBoxes.add(new Box(CFG.PADDING, ImageManager.getImage(Images.btn_close).getHeight() + (ImageManager.getImage(Images.btn_close).getHeight() / 2), this.iRGBTextWidth + (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
        this.lRGBBoxes.add(new Box(CFG.PADDING, ImageManager.getImage(Images.btn_close).getHeight() + (ImageManager.getImage(Images.btn_close).getHeight() / 2) + CFG.PADDING + CFG.TEXT_HEIGHT + (CFG.PADDING * 2), this.iRGBTextWidth + (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
        this.lRGBBoxes.add(new Box(CFG.PADDING, ImageManager.getImage(Images.btn_close).getHeight() + (ImageManager.getImage(Images.btn_close).getHeight() / 2) + (CFG.PADDING * 2) + ((CFG.TEXT_HEIGHT + (CFG.PADDING * 2)) * 2), this.iRGBTextWidth + (CFG.PADDING * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
        updateColorPicker_Action(PickerAction.NONE_ACTION);
    }

    private final void HSVtoRGB(float[] fArr, Color color) {
        float f;
        float f2;
        float f3;
        float f4 = fArr[0];
        float f5 = fArr[1];
        float f6 = fArr[2];
        if (f5 == 0.0f) {
            f2 = f6;
            f = f2;
        } else {
            float f7 = f4 / 60.0f;
            int i = (int) f7;
            float f8 = f7 - i;
            f = (1.0f - f5) * f6;
            float f9 = (1.0f - (f5 * f8)) * f6;
            f2 = (1.0f - (f5 * (1.0f - f8))) * f6;
            if (i == 0) {
                f = f2;
                f2 = f;
            } else if (i != 1) {
                if (i == 2) {
                    f3 = f;
                    f = f6;
                } else if (i == 3) {
                    f2 = f6;
                    f6 = f;
                    f = f9;
                } else if (i != 4) {
                    f2 = f9;
                } else {
                    f3 = f2;
                    f2 = f6;
                }
                f6 = f3;
            } else {
                f2 = f;
                f = f6;
                f6 = f9;
            }
        }
        color.r = f6;
        color.g = f;
        color.b = f2;
        color.a = 1.0f;
    }

    private final int getPickerHue_InnerShadowWidth() {
        return CFG.PADDING * 2;
    }

    private final void setActiveRGB_Box(int i, int i2) {
        for (int i3 = 0; i3 < this.lRGBBoxes.size(); i3++) {
            if (i >= this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth + CFG.PADDING + this.lRGBBoxes.get(i3).getPosX() && i <= this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth + CFG.PADDING + this.lRGBBoxes.get(i3).getPosX() + this.lRGBBoxes.get(i3).getWidth() && i2 >= this.iPosY + this.lRGBBoxes.get(i3).getPosY() && i2 <= this.iPosY + this.lRGBBoxes.get(i3).getPosY() + this.lRGBBoxes.get(i3).getHeight()) {
                activeRGB = i3;
                return;
            }
        }
        activeRGB = -1;
    }

    private final void showKeyboard() {
        StringBuilder sb;
        float f;
        if (activeRGB >= 0) {
            if (Keyboard.keyboardMode) {
                Game.keyboard.hideKeyboard();
            }
            Keyboard keyboard = Game.keyboard;
            Keyboard.KeyboardActionType keyboardActionType = Keyboard.KeyboardActionType.COLORPICKER;
            int i = activeRGB;
            if (i == 0) {
                sb = new StringBuilder("");
                f = activeColor.r;
            } else if (i == 1) {
                sb = new StringBuilder("");
                f = activeColor.g;
            } else {
                sb = new StringBuilder("");
                f = activeColor.b;
            }
            keyboard.showKeyboard(keyboardActionType, sb.append((int) (f * 255.0f)).toString());
        }
    }

    private final void updateColorSVPos(int i) {
        if (this.iSVHeight * 0.1f > i) {
            this.colorSVPos = Color.BLACK;
        } else {
            this.colorSVPos = Color.WHITE;
        }
    }

    private final void updateHUE(int i) {
        float f = 1.0f - ((i - this.iPosY) / this.iSVHeight);
        float[] fArr = this.hsv;
        float f2 = f * 360.0f;
        this.hueVal = f2;
        fArr[0] = f2;
        fArr[2] = 1.0f;
        fArr[1] = 1.0f;
        HSVtoRGB(fArr, hueColor);
        updateSV(this.iLastSVPosX, this.iLastSVPosY);
        this.iLastHUEPosY = i - this.iPosY;
    }

    private final void updateSV(int i, int i2) {
        float f = i - this.iPosX;
        int i3 = this.iSVHeight;
        int i4 = this.iPosY;
        float[] fArr = this.hsv;
        fArr[0] = this.hueVal;
        fArr[1] = f / i3;
        fArr[2] = 1.0f - ((i2 - i4) / i3);
        updateColorSVPos(i2 - i4);
        HSVtoRGB(this.hsv, activeColor);
        updateRGBWidth();
    }

    public final void RGBtoHSV(int i, int i2, int i3) {
        int i4;
        float f;
        float fMin = Math.min(Math.min(i, i2), i3);
        float fMax = Math.max(Math.max(i, i2), i3);
        if (fMin == fMax) {
            float[] fArr = this.hsv;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
        } else {
            int i5 = (int) fMin;
            if (i == i5) {
                i4 = i2 - i3;
            } else {
                i4 = i2 == i5 ? i3 - i : i - i2;
            }
            float f2 = i4;
            if (i == i5) {
                f = 3.0f;
            } else {
                f = i2 == i5 ? 5 : 1;
            }
            float[] fArr2 = this.hsv;
            float f3 = fMax - fMin;
            fArr2[0] = ((f - (f2 / f3)) * 60.0f) % 360.0f;
            fArr2[1] = f3 / fMax;
        }
        float[] fArr3 = this.hsv;
        float f4 = fMax / 255.0f;
        fArr3[2] = f4;
        float f5 = fArr3[0];
        this.hueVal = f5;
        float f6 = fArr3[1];
        int i6 = this.iSVHeight;
        int i7 = (int) (f6 * i6);
        this.iLastSVPosX = i7;
        int i8 = (int) (((-f4) * i6) + i6);
        this.iLastSVPosY = i8;
        this.iLastHUEPosY = (int) (i6 - ((f5 / 360.0f) * i6));
        int i9 = this.iPosY;
        updateSV(i7 + i9, i9 + i8);
        updateHUE(this.iPosY + this.iLastHUEPosY);
        activeColor.r = i / 255.0f;
        activeColor.g = i2 / 255.0f;
        activeColor.b = i3 / 255.0f;
        updateRGBWidth();
    }

    public final void buildColors() {
        this.lColorsBoxes.add(new Box(0, CFG.PADDING, getColorBoxWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
        this.lColors.add(new Color(activeColor.r, activeColor.g, activeColor.b, 1.0f));
        new Random();
        int posX = this.lColorsBoxes.get(0).getPosX();
        int width = this.lColorsBoxes.get(0).getWidth();
        while (true) {
            posX += width;
            if (posX >= CFG.GAME_WIDTH) {
                return;
            }
            this.lColorsBoxes.add(new Box(posX, CFG.PADDING, getColorBoxWidth(), CFG.TEXT_HEIGHT + (CFG.PADDING * 2)));
            this.lColors.add(new Color(Game.oR.nextInt(256) / 255.0f, Game.oR.nextInt(256) / 255.0f, Game.oR.nextInt(256) / 255.0f, 1.0f));
            width = getColorBoxWidth();
        }
    }

    public final void draw(SpriteBatch spriteBatch, int i) {
        spriteBatch.setColor(1.0f, 1.0f, 1.0f, this.fAlpha);
        Renderer.drawBoxHover(spriteBatch, (this.iPosX - (CFG.PADDING * 2)) + i, this.iPosY - (CFG.PADDING * 2), (CFG.PADDING * 4) + getWidth(), (CFG.PADDING * 4) + getHeight(), this.fAlpha);
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.pickerHUE).draw(spriteBatch, this.iPosX + this.iSVHeight + CFG.PADDING + i, this.iPosY, this.iHUEWidth, this.iSVHeight);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.275f));
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, this.iPosX + this.iSVHeight + CFG.PADDING + i, this.iPosY, getPickerHue_InnerShadowWidth(), this.iSVHeight);
        ImageManager.getImage(Images.gradientHorizontal).draw(spriteBatch, ((((this.iPosX + this.iSVHeight) + CFG.PADDING) + this.iHUEWidth) - getPickerHue_InnerShadowWidth()) + i, this.iPosY, getPickerHue_InnerShadowWidth(), this.iSVHeight, true, false);
        spriteBatch.setColor(Color.WHITE);
        Image image = Images.pix;
        int i2 = this.iPosX + i;
        int i3 = this.iPosY;
        int i4 = this.iSVHeight;
        image.draw(spriteBatch, i2, i3, i4, i4);
        spriteBatch.setColor(hueColor);
        Image image2 = ImageManager.getImage(Images.pickerSV);
        int i5 = this.iPosX + i;
        int i6 = this.iPosY;
        int i7 = this.iSVHeight;
        image2.draw(spriteBatch, i5, i6, i7, i7);
        if (this.activeMove) {
            spriteBatch.setColor(Color.BLACK);
            ImageManager.getImage(Images.pickerEdge).draw(spriteBatch, this.iPosX + 1 + i, this.iPosY, true, true);
        } else {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.825f));
            ImageManager.getImage(Images.pickerEdge).draw(spriteBatch, this.iPosX + 1 + i, this.iPosY, true, true);
        }
        if (this.activeResize) {
            spriteBatch.setColor(Color.WHITE);
            ImageManager.getImage(Images.pickerEdge).draw(spriteBatch, ((this.iPosX + this.iSVHeight) - ImageManager.getImage(Images.pickerEdge).getWidth()) + i, (this.iPosY + this.iSVHeight) - ImageManager.getImage(Images.pickerEdge).getHeight());
        } else {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.675f));
            ImageManager.getImage(Images.pickerEdge).draw(spriteBatch, ((this.iPosX + this.iSVHeight) - ImageManager.getImage(Images.pickerEdge).getWidth()) + i, (this.iPosY + this.iSVHeight) - ImageManager.getImage(Images.pickerEdge).getHeight());
            int i8 = this.iPosX + i;
            int i9 = CFG.GAME_HEIGHT - this.iPosY;
            int i10 = this.iSVHeight;
            if (!Renderer.clipView_Start(spriteBatch, i8, i9, i10, -i10)) {
                return;
            }
            spriteBatch.setColor(this.colorSVPos);
            ImageManager.getImage(Images.pickerSVPos).draw(spriteBatch, ((this.iPosX + this.iLastSVPosX) - (ImageManager.getImage(Images.pickerSVPos).getWidth() / 2)) + i, (this.iPosY + this.iLastSVPosY) - (ImageManager.getImage(Images.pickerSVPos).getHeight() / 2));
            Renderer.clipView_End(spriteBatch);
            spriteBatch.setColor(0.0f, 0.0f, 0.0f, this.fAlpha);
            Images.pix.draw2(spriteBatch, this.iPosX + this.iSVHeight + CFG.PADDING + CFG.PADDING + i, this.iLastHUEPosY + (this.iPosY - 1), (this.iHUEWidth - (CFG.PADDING * 2)) + 1, 1);
        }
        spriteBatch.setColor(Color.BLACK);
        int i11 = this.iPosX + i;
        int i12 = this.iPosY - 1;
        int i13 = this.iSVHeight;
        Renderer.drawRect(spriteBatch, i11, i12, i13, i13 + 2);
        int i14 = this.iPosX + CFG.PADDING;
        int i15 = this.iSVHeight;
        Renderer.drawRect(spriteBatch, i14 + i15 + i, this.iPosY - 1, this.iHUEWidth, i15 + 2);
        drawRGBText(spriteBatch, 0, this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth + this.lRGBBoxes.get(0).getPosX() + i, this.iPosY + this.lRGBBoxes.get(0).getPosY(), this.lRGBBoxes.get(0).getWidth(), this.lRGBBoxes.get(0).getHeight(), "R", "" + ((int) (activeColor.r * 255.0f)), this.iRTextWidth);
        drawRGBText(spriteBatch, 1, this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth + this.lRGBBoxes.get(1).getPosX() + i, this.iPosY + this.lRGBBoxes.get(1).getPosY(), this.lRGBBoxes.get(1).getWidth(), this.lRGBBoxes.get(1).getHeight(), "G", "" + ((int) (activeColor.g * 255.0f)), this.iGTextWidth);
        drawRGBText(spriteBatch, 2, this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth + this.lRGBBoxes.get(2).getPosX() + i, this.iPosY + this.lRGBBoxes.get(2).getPosY(), this.lRGBBoxes.get(2).getWidth(), this.lRGBBoxes.get(2).getHeight(), cIUGJCqyPXfp.MphfjcrlfjUvXGg, "" + ((int) (activeColor.b * 255.0f)), this.iBTextWidth);
        drawColorBoxes(spriteBatch, this.iPosX + i, this.iPosY + this.iSVHeight);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.175f));
        Image image3 = ImageManager.getImage(Images.gradientVertical);
        int posX = this.iPosX + this.lColorsBoxes.get(0).getPosX() + i;
        int posY = this.lColorsBoxes.get(0).getPosY() + this.iPosY + this.iSVHeight;
        int width = getWidth();
        List<Box> list = this.lColorsBoxes;
        image3.draw(spriteBatch, posX, posY, width, list.get(list.size() - 1).getHeight(), false, true);
        if (this.iActiveColorID >= 0) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.3f));
            Image image4 = ImageManager.getImage(Images.gradientVertical);
            int posX2 = this.iPosX + this.lColorsBoxes.get(this.iActiveColorID).getPosX() + i;
            int posY2 = this.lColorsBoxes.get(0).getPosY() + this.iPosY + this.iSVHeight;
            int width2 = this.lColorsBoxes.get(this.iActiveColorID).getWidth();
            List<Box> list2 = this.lColorsBoxes;
            image4.draw(spriteBatch, posX2, posY2, width2, list2.get(list2.size() - 1).getHeight());
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, this.fAlpha));
        int posX3 = this.iPosX + this.lColorsBoxes.get(0).getPosX() + i;
        int posY3 = this.iPosY + this.iSVHeight + this.lColorsBoxes.get(0).getPosY();
        int width3 = getWidth();
        List<Box> list3 = this.lColorsBoxes;
        Renderer.drawRect(spriteBatch, posX3, posY3, width3, list3.get(list3.size() - 1).getHeight());
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(this.activeClose ? Images.btnh_close : Images.btn_close).draw(spriteBatch, ((getPosX() + getWidth()) - ImageManager.getImage(Images.btn_close).getWidth()) + i, getPosY());
    }

    public final void drawColorBoxes(SpriteBatch spriteBatch, int i, int i2) {
        for (int size = this.lColorsBoxes.size() - 1; size >= 0; size--) {
            if (this.lColorsBoxes.get(size).getVisible()) {
                spriteBatch.setColor(this.lColors.get(size).r, this.lColors.get(size).g, this.lColors.get(size).b, this.fAlpha);
                Images.pix.draw(spriteBatch, i + this.lColorsBoxes.get(size).getPosX(), i2 + this.lColorsBoxes.get(size).getPosY(), this.lColorsBoxes.get(size).getWidth(), this.lColorsBoxes.get(size).getHeight());
                spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, this.fAlpha));
                ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, this.lColorsBoxes.get(size).getPosX() + i + this.lColorsBoxes.get(size).getWidth(), i2 + this.lColorsBoxes.get(size).getPosY(), 1, this.lColorsBoxes.get(size).getHeight());
            }
        }
    }

    public final void drawRGBText(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, String str, String str2, int i6) {
        spriteBatch.setColor(Colors.COLOR_COLOR_PICKER_RGB_BG);
        Images.pix.draw(spriteBatch, i2, i3, i4, i5);
        if (activeRGB == i) {
            spriteBatch.setColor(Colors.COLOR_LOADING_SPLIT_ACTIVE);
        } else {
            spriteBatch.setColor(Colors.COLOR_LOADING_SPLIT);
        }
        Renderer.drawRect(spriteBatch, i2, i3, i4, i5);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawRect(spriteBatch, i2 - 1, i3 - 1, i4 + 2, i5 + 2);
        spriteBatch.setColor(Color.WHITE);
        int i7 = i3 + (i5 / 2);
        Renderer.drawText(spriteBatch, this.fontID, str, i2 + CFG.PADDING, i7 - (CFG.TEXT_HEIGHT / 2), new Color(0.84f, 0.84f, 0.88f, 1.0f));
        Renderer.fontMain.get(this.fontID).getData().setScale(0.9f);
        Renderer.drawText(spriteBatch, this.fontID, str2, ((i2 + i4) - CFG.PADDING) - ((int) (i6 * 0.9f)), i7 - (CFG.TEXT_HEIGHT / 2), Color.WHITE);
        Renderer.fontMain.get(this.fontID).getData().setScale(1.0f);
    }

    public final Color getActiveColor() {
        return activeColor;
    }

    public final int getColorBoxWidth() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
    }

    public ColorPicker_AoC_Action getColorPickerAction() {
        return this.ColorPicker_AoC_Action;
    }

    public final int getHeight() {
        return this.iSVHeight + CFG.TEXT_HEIGHT + (CFG.PADDING * 3);
    }

    public final int getPosX() {
        return this.iPosX;
    }

    public final int getPosY() {
        return this.iPosY;
    }

    public final boolean getVisible() {
        return this.visible;
    }

    public final int getWidth() {
        return this.iSVHeight + this.iHUEWidth + CFG.PADDING + this.iRGBTextWidth + (CFG.PADDING * 3);
    }

    public final void hideColorPicker() {
        this.visible = false;
        this.ColorPicker_AoC_Action = new AnonymousClass8();
    }

    public final void setActiveRGBColor(float f, float f2, float f3) {
        setActiveRGBColor((int) (f * 255.0f), (int) (f2 * 255.0f), (int) (f3 * 255.0f));
    }

    public final void setActiveRGBColor(int i, int i2, int i3) {
        if (Keyboard.keyboardMode || activeRGB >= 0) {
            activeRGB = -1;
            Game.keyboard.hideKeyboard();
        }
        RGBtoHSV(i, i2, i3);
    }

    public final void setHueWidth(int i) {
        this.iHUEWidth = i;
    }

    public final void setPosX(int i) {
        if (i > CFG.GAME_WIDTH - (ImageManager.getImage(Images.pickerSV).getHeight() / 2)) {
            i = CFG.GAME_WIDTH - (ImageManager.getImage(Images.pickerSV).getHeight() / 2);
        } else if (i < CFG.PADDING * 2) {
            i = CFG.PADDING * 2;
        }
        this.iPosX = i;
    }

    public final void setPosY(int i) {
        if (i > CFG.GAME_HEIGHT - (ImageManager.getImage(Images.pickerSV).getHeight() / 2)) {
            i = CFG.GAME_HEIGHT - (ImageManager.getImage(Images.pickerSV).getHeight() / 2);
        } else if (i < CFG.PADDING * 2) {
            i = CFG.PADDING * 2;
        }
        this.iPosY = i;
    }

    public final void setResizeHeight(int i) {
        this.iResizeHeight = i;
    }

    public final void setSVHeight(int i) {
        if (i < ImageManager.getImage(Images.pickerSV).getHeight()) {
            i = ImageManager.getImage(Images.pickerSV).getHeight();
        } else if (getPosY() + i + CFG.TEXT_HEIGHT + (CFG.PADDING * 5) > CFG.GAME_HEIGHT) {
            i = (CFG.GAME_HEIGHT - getPosY()) - (CFG.TEXT_HEIGHT + (CFG.PADDING * 5));
        }
        this.iSVHeight = i;
        for (int i2 = 1; i2 < this.lColorsBoxes.size(); i2++) {
            this.lColorsBoxes.get(i2).setWidth(this.lColorsBoxes.get(0).getWidth());
            this.lColorsBoxes.get(i2).setVisible(true);
        }
        for (int size = this.lColorsBoxes.size() - 1; size > 0; size--) {
            if (this.lColorsBoxes.get(size).getPosX() > getWidth()) {
                this.lColorsBoxes.get(size).setVisible(false);
            } else {
                this.lColorsBoxes.get(size).setVisible(true);
                if (this.lColorsBoxes.get(size).getPosX() + this.lColorsBoxes.get(size).getWidth() > getWidth()) {
                    this.lColorsBoxes.get(size).setWidth(getWidth() - this.lColorsBoxes.get(size).getPosX());
                }
            }
        }
    }

    public final void setVisible(boolean z, PickerAction pickerAction) {
        if (pickerAction != null) {
            updateColorPicker_Action(pickerAction);
        } else {
            this.ColorPicker_AoC_Action = new AnonymousClass9();
        }
        this.visible = z;
        if (Keyboard.keyboardMode || activeRGB >= 0) {
            activeRGB = -1;
            Game.keyboard.hideKeyboard();
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:130:0x0337  */
    /* JADX WARN: Code duplicated, block: B:132:0x0354  */
    /* JADX WARN: Code duplicated, block: B:139:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:141:0x03cb  */
    public final void touch(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.activeHUE) {
            int i7 = this.iPosY;
            if (i2 <= i7) {
                i2 = i7 + 1;
            } else {
                int i8 = this.iSVHeight;
                if (i2 > i7 + i8) {
                    i2 = i7 + i8;
                }
            }
            if (i < this.iPosX + this.iSVHeight + CFG.PADDING || i > this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth) {
                int i9 = CFG.PADDING;
            }
            updateHUE(i2);
            updateSV(this.iPosX + this.iLastSVPosX, this.iPosY + this.iLastSVPosY);
        } else if (this.activeSV) {
            int i10 = this.iPosY;
            if (i2 < i10) {
                i2 = i10;
            } else {
                int i11 = this.iSVHeight;
                if (i2 > i10 + i11) {
                    i2 = i10 + i11;
                }
            }
            int i12 = this.iPosX;
            if (i < i12) {
                i = i12;
            } else {
                int i13 = this.iSVHeight;
                if (i > i12 + i13) {
                    i = i12 + i13;
                }
            }
            updateSV(i, i2);
            this.iLastSVPosX = i - this.iPosX;
            this.iLastSVPosY = i2 - this.iPosY;
        } else {
            if (this.activeResize) {
                setSVHeight((i2 - this.iPosY) - this.iStartPosY);
                return;
            }
            if (this.activeMove) {
                setPosX(i - this.iStartPosX);
                setPosY(i2 - this.iStartPosY);
                this.fAlpha = 0.75f;
                return;
            }
            int i14 = 0;
            if (this.iActiveColorID >= 0) {
                while (i14 < this.lColorsBoxes.size()) {
                    if (this.lColorsBoxes.get(i14).getVisible() && i >= this.iPosX + this.lColorsBoxes.get(i14).getPosX() && i <= this.iPosX + this.lColorsBoxes.get(i14).getPosX() + this.lColorsBoxes.get(i14).getWidth()) {
                        this.iActiveColorID = i14;
                        if (((int) (activeColor.r * 255.0f)) != ((int) (this.lColors.get(i14).r * 255.0f)) && ((int) (activeColor.r * 255.0f)) != ((int) (this.lColors.get(i14).g * 255.0f)) && ((int) (activeColor.r * 255.0f)) != ((int) (this.lColors.get(i14).b * 255.0f))) {
                            RGBtoHSV((int) (this.lColors.get(i14).r * 255.0f), (int) (this.lColors.get(i14).g * 255.0f), (int) (this.lColors.get(i14).b * 255.0f));
                            break;
                        } else {
                            break;
                            break;
                            break;
                        }
                    }
                    i14++;
                }
            } else if (activeRGB >= 0) {
                setActiveRGB_Box(i, i2);
                showKeyboard();
            } else if (this.activeClose) {
                this.iLastSVPosX = i;
                this.iLastSVPosY = i2;
            } else {
                int i15 = this.iPosX;
                int i16 = this.iSVHeight;
                int i17 = this.iResizeHeight;
                if (i >= (i15 + i16) - i17 && i <= i15 + i16) {
                    int i18 = this.iPosY;
                    if (i2 >= (i18 + i16) - i17 && i2 <= i18 + i16) {
                        this.activeResize = true;
                        this.iStartPosY = (i2 - i18) - i16;
                        this.iStartResizeHeight = i16;
                        this.fAlpha = 0.75f;
                        return;
                    }
                }
                if (i >= i15 && i <= i15 + i17 && i2 >= (i6 = this.iPosY) && i2 <= i17 + i6) {
                    this.activeMove = true;
                    this.iStartPosX = i - i15;
                    this.iStartPosY = i2 - i6;
                    return;
                }
                if (i < i15 + i16 + CFG.PADDING || i > this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth || i2 < (i5 = this.iPosY) || i2 > i5 + this.iSVHeight) {
                    int i19 = this.iPosX;
                    if (i >= i19) {
                        int i20 = this.iSVHeight;
                        if (i <= i19 + i20 && i2 >= (i4 = this.iPosY) && i2 <= i4 + i20) {
                            updateSV(i, i2);
                            this.activeSV = true;
                            this.iLastSVPosX = i - this.iPosX;
                            this.iLastSVPosY = i2 - this.iPosY;
                            activeRGB = -1;
                            Game.keyboard.hideKeyboard();
                        } else if (i < i19 + this.lColorsBoxes.get(0).getPosX() && i <= this.iPosX + getWidth() && i2 >= this.iPosY + this.iSVHeight + this.lColorsBoxes.get(0).getPosY() && i2 <= this.iPosY + this.iSVHeight + this.lColorsBoxes.get(0).getPosY() + this.lColorsBoxes.get(0).getHeight()) {
                            while (i14 < this.lColorsBoxes.size()) {
                                if (this.lColorsBoxes.get(i14).getVisible() && i >= this.iPosX + this.lColorsBoxes.get(i14).getPosX() && i <= this.iPosX + this.lColorsBoxes.get(i14).getPosX() + this.lColorsBoxes.get(i14).getWidth() && i2 >= this.iPosY + this.iSVHeight + this.lColorsBoxes.get(i14).getPosY() && i2 <= this.iPosY + this.iSVHeight + this.lColorsBoxes.get(i14).getPosY() + this.lColorsBoxes.get(i14).getHeight()) {
                                    this.iActiveColorID = i14;
                                    if (((int) (activeColor.r * 255.0f)) != ((int) (this.lColors.get(i14).r * 255.0f)) && ((int) (activeColor.r * 255.0f)) != ((int) (this.lColors.get(i14).g * 255.0f)) && ((int) (activeColor.r * 255.0f)) != ((int) (this.lColors.get(i14).b * 255.0f))) {
                                        RGBtoHSV((int) (this.lColors.get(i14).r * 255.0f), (int) (this.lColors.get(i14).g * 255.0f), (int) (this.lColors.get(i14).b * 255.0f));
                                        break;
                                    } else {
                                        break;
                                        break;
                                        break;
                                    }
                                }
                                i14++;
                            }
                            activeRGB = -1;
                            Game.keyboard.hideKeyboard();
                        } else if (i < this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth + CFG.PADDING + this.lRGBBoxes.get(0).getPosX() && i <= this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth + CFG.PADDING + this.lRGBBoxes.get(0).getPosX() + this.lRGBBoxes.get(0).getWidth() && i2 >= this.iPosY + this.lRGBBoxes.get(0).getPosY() && i2 <= this.iPosY + this.lRGBBoxes.get(2).getPosY() + this.lRGBBoxes.get(2).getHeight()) {
                            setActiveRGB_Box(i, i2);
                            showKeyboard();
                        } else if (i >= (getPosX() + getWidth()) - ImageManager.getImage(Images.btn_close).getWidth() && i <= getPosX() + getWidth() && i2 >= (i3 = this.iPosY) && i2 <= i3 + ImageManager.getImage(Images.btn_close).getHeight()) {
                            this.activeClose = true;
                        }
                    } else if (i < i19 + this.lColorsBoxes.get(0).getPosX()) {
                        if (i < this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth + CFG.PADDING + this.lRGBBoxes.get(0).getPosX()) {
                            if (i >= (getPosX() + getWidth()) - ImageManager.getImage(Images.btn_close).getWidth()) {
                                this.activeClose = true;
                            }
                        } else if (i >= (getPosX() + getWidth()) - ImageManager.getImage(Images.btn_close).getWidth()) {
                            this.activeClose = true;
                        }
                    } else if (i < this.iPosX + this.iSVHeight + CFG.PADDING + this.iHUEWidth + CFG.PADDING + this.lRGBBoxes.get(0).getPosX()) {
                        if (i >= (getPosX() + getWidth()) - ImageManager.getImage(Images.btn_close).getWidth()) {
                            this.activeClose = true;
                        }
                    } else if (i >= (getPosX() + getWidth()) - ImageManager.getImage(Images.btn_close).getWidth()) {
                        this.activeClose = true;
                    }
                } else {
                    updateHUE(i2);
                    updateSV(this.iPosX + this.iLastSVPosX, this.iPosY + this.iLastSVPosY);
                    this.activeHUE = true;
                    activeRGB = -1;
                    Game.keyboard.hideKeyboard();
                }
            }
        }
        this.ColorPicker_AoC_Action.update();
    }

    public final void touchUp() {
        int i;
        int i2;
        if (this.activeResize) {
            int i3 = this.iLastSVPosX;
            int i4 = this.iSVHeight;
            int i5 = this.iStartResizeHeight;
            this.iLastSVPosX = (int) ((i3 * i4) / i5);
            this.iLastSVPosY = (int) ((this.iLastSVPosY * i4) / i5);
            this.iLastHUEPosY = (int) ((this.iLastHUEPosY * i4) / i5);
        } else if (this.activeClose && this.iLastSVPosX >= (getPosX() + getWidth()) - ImageManager.getImage(Images.btn_close).getWidth() && this.iLastSVPosX <= getPosX() + getWidth() && (i = this.iLastSVPosY) >= (i2 = this.iPosY) && i <= i2 + ImageManager.getImage(Images.btn_close).getHeight()) {
            setVisible(false, null);
        }
        this.activeSV = false;
        this.activeHUE = false;
        this.activeResize = false;
        this.activeMove = false;
        this.activeClose = false;
        this.iActiveColorID = -1;
        this.fAlpha = 1.0f;
    }

    public final void updateColorPicker_Action(PickerAction pickerAction) {
        switch (AnonymousClass10.$SwitchMap$aoc$kingdoms$lukasz$menu$ColorPicker$PickerAction[pickerAction.ordinal()]) {
            case 1:
                this.ColorPicker_AoC_Action = new AnonymousClass1();
                break;
            case 2:
                this.ColorPicker_AoC_Action = new AnonymousClass2();
                break;
            case 3:
                this.ColorPicker_AoC_Action = new AnonymousClass3();
                break;
            case 4:
                this.ColorPicker_AoC_Action = new AnonymousClass4();
                break;
            case 5:
                this.ColorPicker_AoC_Action = new AnonymousClass5();
                break;
            case 6:
                this.ColorPicker_AoC_Action = new AnonymousClass6();
                break;
            default:
                this.ColorPicker_AoC_Action = new AnonymousClass7();
                break;
        }
    }

    public final void updateColors() {
        this.lColors.set(0, new Color(activeColor.r, activeColor.g, activeColor.b, 1.0f));
        for (int i = 1; i < this.lColors.size(); i++) {
            this.lColors.set(i, new Color(Game.oR.nextInt(256) / 255.0f, Game.oR.nextInt(256) / 255.0f, Game.oR.nextInt(256) / 255.0f, 1.0f));
        }
    }

    public final void updateRGBWidth() {
        String str = CaiJWNfqszJNZ.QYDOcWqTsPqZe;
        this.iRTextWidth = Renderer.getTextWidth(str + ((int) (activeColor.r * 255.0f)));
        this.iGTextWidth = Renderer.getTextWidth(str + ((int) (activeColor.g * 255.0f)));
        this.iBTextWidth = Renderer.getTextWidth(str + ((int) (activeColor.b * 255.0f)));
    }
}
