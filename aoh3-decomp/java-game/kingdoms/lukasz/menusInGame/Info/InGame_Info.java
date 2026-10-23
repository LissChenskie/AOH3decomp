package aoc.kingdoms.lukasz.menusInGame.Info;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonFlag;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_InfoTop;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Info extends Menu {
    public static int TIME_IN_VIEW = 3500;
    public static float fAnimationPerc = 1.0f;
    public static boolean hideAnimation = false;
    public static int iAnimationWidth = 1;
    public static int iCivID;
    public static int iCivID2;
    public static int iInfoY;
    public static int imgID;
    public final int ANIMATION_TIME = 225;
    public long lTime = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info$1, reason: invalid class name */
    class AnonymousClass1 extends Text_InfoTop {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Info.this.setVisible(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info$2, reason: invalid class name */
    class AnonymousClass2 extends Text_InfoTop {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_Info.this.setVisible(false);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_InfoTop, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return new Color(Colors.COLOR_TOP_STATS_ACTIVE.r, Colors.COLOR_TOP_STATS_ACTIVE.g, Colors.COLOR_TOP_STATS_ACTIVE.b, InGame_Info.fAnimationPerc * 1.0f);
            }
            return getIsHovered() ? new Color(Colors.COLOR_TOP_STATS_HOVER.r, Colors.COLOR_TOP_STATS_HOVER.g, Colors.COLOR_TOP_STATS_HOVER.b, InGame_Info.fAnimationPerc * 1.0f) : new Color(Colors.COLOR_INFO_BOX.r, Colors.COLOR_INFO_BOX.g, Colors.COLOR_INFO_BOX.b, InGame_Info.fAnimationPerc * 1.0f);
        }
    }

    public InGame_Info(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        iInfoY = ButtonFlag.getButtonHeight() + (CFG.PADDING * 4);
        arrayList.add(new AnonymousClass1(str, CFG.FONT_REGULAR, -1, (CFG.GAME_WIDTH / 2) - (getInfoBoxWidth() / 2), iInfoY + ImageManager.getImage(Images.infoTop).getHeight(), ImageManager.getImage(Images.infoBox).getWidth(), (ImageManager.getImage(Images.infoBox).getHeight() * 3) / 5));
        arrayList.add(new AnonymousClass2(str2, CFG.FONT_REGULAR_SMALL, -1, (CFG.GAME_WIDTH / 2) - (getInfoBoxWidth() / 2), iInfoY + ImageManager.getImage(Images.infoTop).getHeight() + (ImageManager.getImage(Images.infoBox).getHeight() / 2), ImageManager.getImage(Images.infoBox).getWidth(), ImageManager.getImage(Images.infoBox).getHeight() / 2));
        imgID = Images.infoLegacy;
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, false);
        Game.soundsManager.playSound(SoundsManager.INFO_BOX);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (hideAnimation) {
            if (this.lTime + 225 >= CFG.currentTimeMillis) {
                float f = 1.0f - ((CFG.currentTimeMillis - this.lTime) / 225.0f);
                fAnimationPerc = f;
                fAnimationPerc = Math.max(0.0f, f);
            } else {
                fAnimationPerc = 0.0f;
                setVisible(false);
            }
            iAnimationWidth = (int) (ImageManager.getImage(Images.infoBox).getWidth() * fAnimationPerc);
        } else {
            if (this.lTime + 225 >= CFG.currentTimeMillis) {
                float f2 = (CFG.currentTimeMillis - this.lTime) / 225.0f;
                fAnimationPerc = f2;
                fAnimationPerc = Math.min(1.0f, f2);
            } else {
                fAnimationPerc = 1.0f;
            }
            iAnimationWidth = (int) (ImageManager.getImage(Images.infoBox).getWidth() * fAnimationPerc);
            if (this.lTime + ((long) TIME_IN_VIEW) <= CFG.currentTimeMillis) {
                hideAnimation = true;
                this.lTime = CFG.currentTimeMillis;
            }
        }
        drawInfoBox(spriteBatch, (CFG.GAME_WIDTH / 2) - (getInfoBoxWidthTotalAnimation() / 2), iInfoY);
        super.draw(spriteBatch, i, i2, z, status);
    }

    public void drawInfoBox(SpriteBatch spriteBatch, int i, int i2) {
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, fAnimationPerc * 0.65f));
        Images.gradientXY.draw(spriteBatch, i, i2 - (getInfoBoxHeightTotal() / 4), getInfoBoxWidthTotalAnimation(), (getInfoBoxHeightTotal() / 2) + (getInfoBoxHeightTotal() / 4));
        Images.gradientXY.draw(spriteBatch, i, i2 + (getInfoBoxHeightTotal() / 2), getInfoBoxWidthTotalAnimation(), (getInfoBoxHeightTotal() * 3) / 4, false, true);
        spriteBatch.setColor(Color.WHITE);
        if (hideAnimation) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, fAnimationPerc * 1.0f));
        }
        ImageManager.getImage(imgID).draw(spriteBatch, ((getInfoBoxWidthTotalAnimation() / 2) + i) - ((int) ((ImageManager.getImage(imgID).getWidth() * ((fAnimationPerc * 0.5f) + 0.5f)) / 2.0f)), ((getInfoBoxHeightTotal() / 2) + i2) - ((int) ((ImageManager.getImage(imgID).getHeight() * ((fAnimationPerc * 0.5f) + 0.5f)) / 2.0f)), (int) (ImageManager.getImage(imgID).getWidth() * ((fAnimationPerc * 0.5f) + 0.5f)), (int) (ImageManager.getImage(imgID).getHeight() * ((fAnimationPerc * 0.5f) + 0.5f)));
        ImageManager.getImage(Images.infoLeft).draw(spriteBatch, i, i2);
        ImageManager.getImage(Images.infoTop).draw(spriteBatch, i + ImageManager.getImage(Images.infoLeft).getWidth(), i2, iAnimationWidth, ImageManager.getImage(Images.infoTop).getHeight());
        ImageManager.getImage(Images.infoBox).draw(spriteBatch, i + ImageManager.getImage(Images.infoLeft).getWidth(), i2 + ImageManager.getImage(Images.infoTop).getHeight(), iAnimationWidth, ImageManager.getImage(Images.infoBox).getHeight());
        ImageManager.getImage(Images.infoBot).draw(spriteBatch, i + ImageManager.getImage(Images.infoLeft).getWidth(), ImageManager.getImage(Images.infoBox).getHeight() + ImageManager.getImage(Images.infoTop).getHeight() + i2, iAnimationWidth, ImageManager.getImage(Images.infoBot).getHeight());
        ImageManager.getImage(Images.infoRight).draw(spriteBatch, ImageManager.getImage(Images.infoLeft).getWidth() + i + iAnimationWidth, i2);
        spriteBatch.setColor(Color.WHITE);
        if (iCivID != 0) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            int i3 = iCivID;
            if (i3 < 0) {
                ImageManager.getImage(Images.rebelsFlag).getTexture().bind(1);
            } else {
                Game.getCiv(i3).getFlag().getTexture().bind(1);
            }
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, fAnimationPerc * 0.75f));
            ImageManager.getImage(Images.infoMaskLeft).draw(spriteBatch, i, i2, ImageManager.getImage(Images.infoMaskLeft).getWidth(), ImageManager.getImage(Images.infoMaskLeft).getHeight());
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
        }
        spriteBatch.setColor(Color.WHITE);
        if (iCivID2 != 0) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            int i4 = iCivID2;
            if (i4 < 0) {
                ImageManager.getImage(Images.rebelsFlag).getTexture().bind(1);
            } else {
                Game.getCiv(i4).getFlag().getTexture().bind(1);
            }
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, fAnimationPerc * 0.75f));
            ImageManager.getImage(Images.infoMaskRight).draw(spriteBatch, (getInfoBoxWidthTotalAnimation() + i) - ImageManager.getImage(Images.infoMaskRight).getWidth(), i2, ImageManager.getImage(Images.infoMaskRight).getWidth(), ImageManager.getImage(Images.infoMaskRight).getHeight());
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    public int getInfoBoxHeightTotal() {
        return ImageManager.getImage(Images.infoLeft).getHeight();
    }

    public int getInfoBoxWidth() {
        return ImageManager.getImage(Images.infoBox).getWidth();
    }

    public int getInfoBoxWidthTotal() {
        return ImageManager.getImage(Images.infoLeft).getWidth() + ImageManager.getImage(Images.infoBox).getWidth() + ImageManager.getImage(Images.infoRight).getWidth();
    }

    public int getInfoBoxWidthTotalAnimation() {
        return ImageManager.getImage(Images.infoLeft).getWidth() + iAnimationWidth + ImageManager.getImage(Images.infoRight).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        if (z) {
            this.lTime = CFG.currentTimeMillis;
            hideAnimation = false;
        }
    }
}
