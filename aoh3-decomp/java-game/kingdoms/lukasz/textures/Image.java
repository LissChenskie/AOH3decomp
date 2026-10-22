package aoc.kingdoms.lukasz.textures;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Image {
    private int iHeight;
    private int iWidth;
    private Texture texture;

    public Image(Texture texture) {
        init(texture, Texture.TextureFilter.Linear, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge, Texture.TextureWrap.ClampToEdge);
    }

    public Image(Texture texture, Texture.TextureFilter textureFilter) {
        init(texture, textureFilter, textureFilter, Texture.TextureWrap.ClampToEdge, Texture.TextureWrap.ClampToEdge);
    }

    public Image(Texture texture, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2) {
        init(texture, textureFilter, textureFilter2, Texture.TextureWrap.ClampToEdge, Texture.TextureWrap.ClampToEdge);
    }

    public Image(Texture texture, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2) {
        init(texture, textureFilter, textureFilter2, textureWrap, textureWrap2);
    }

    public Image(Texture texture, Texture.TextureFilter textureFilter, Texture.TextureWrap textureWrap) {
        init(texture, textureFilter, textureFilter, textureWrap, textureWrap);
    }

    private final void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6, float f, float f2, float f3, int i7, int i8, int i9, int i10, boolean z, boolean z2) {
        spriteBatch.draw(this.texture, i, -(i2 + this.iHeight), i3, i4, i5, i6, f, f2, f3, i7, i8, i9, i10, z, z2);
    }

    private final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6, float f, float f2, float f3, int i7, int i8, int i9, int i10, boolean z, boolean z2) {
        spriteBatch.draw(this.texture, i, -(i2 + i6), i3, i4, i5, i6, f, f2, f3, i7, i8, i9, i10, z, z2);
    }

    private final void draw2_2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, boolean z2) {
        spriteBatch.draw(this.texture, i, -(i2 + i4), i3, i4, i5, i6, i7, i8, z, z2);
    }

    private final void draw_1(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, boolean z2) {
        spriteBatch.draw(this.texture, i, -(i2 + this.iHeight), i3, i4, i5, i6, i7, i8, z, z2);
    }

    public final void dispose() {
        Texture texture = this.texture;
        if (texture != null) {
            texture.dispose();
        }
        this.texture = null;
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2) {
        spriteBatch.draw(this.texture, i, -(i2 + this.iHeight));
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, float f) {
        int i3 = this.iHeight;
        int i4 = this.iWidth;
        draw(spriteBatch, i, i2 + ((int) ((i3 * f) - i3)), 0, 0, i4, i3, f, f, 0.0f, 0, 0, i4, i3, false, false);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, float f, float f2) {
        int i3 = this.iHeight;
        int i4 = this.iWidth;
        draw(spriteBatch, i, i2 + ((int) ((i3 * f) - i3)), 0, 0, i4, i3, f, f, f2, 0, 0, i4, i3, false, false);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, int i3) {
        Texture texture = this.texture;
        float f = i;
        int i4 = -i2;
        int i5 = this.iHeight;
        spriteBatch.draw(texture, f, i4 - i5, i3, i5);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        spriteBatch.draw(this.texture, i, -(i2 + i4), i3, i4);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f) {
        draw2(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, f, 0, 0, i3, i4, false, false);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f, int i5) {
        draw2(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, f, i5, 0, i3, i4, false, false);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f, int i5, boolean z) {
        draw(spriteBatch, i, i2, 0, 0, i3, -i4, 1.0f, 1.0f, f, i5, 0, i3, i4, z, false);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6) {
        draw2_2(spriteBatch, i, i2, i3, i4, i5, i6, this.iWidth, this.iHeight, false, false);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        draw2_2(spriteBatch, i, i2, i3, i4, 0, 0, this.iWidth, this.iHeight, z, z2);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        int i3 = this.iWidth;
        int i4 = this.iHeight;
        draw_1(spriteBatch, i, i2, i3, i4, 0, 0, i3, i4, z, z2);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3) {
        int i4 = this.iHeight;
        draw_1(spriteBatch, i, i2, i3, i4, 0, 0, i3, i4, false, false);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        draw2_2(spriteBatch, i, i2, i3, i4, 0, 0, i3, i4, false, false);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f) {
        draw2(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, f, 0, 0, i3, i4, false, false);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f, int i5) {
        draw2(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, f, i5, 0, i3, i4, false, false);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f, boolean z, boolean z2) {
        draw2(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, f, 0, 0, i3, i4, z, z2);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f, boolean z, boolean z2, int i5) {
        draw2(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, f, i5, 0, i3, i4, z, z2);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6) {
        draw2_2(spriteBatch, i, i2, i3, i4, i5, i6, i3, i4, false, false);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6, float f) {
        draw2(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, f, i5, i6, i3, i4, false, false);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6, float f, boolean z, boolean z2) {
        draw2(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, f, i5, i6, i3, i4, z, z2);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2) {
        draw2_2(spriteBatch, i, i2, i3, i4, i5, i6, i3, i4, z, z2);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z) {
        draw2_2(spriteBatch, i, i2, i3, i4, 0, 0, i3, i4, z, false);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        draw2_2(spriteBatch, i, i2, i3, i4, 0, 0, i3, i4, z, z2);
    }

    public final void draw2_Scale(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, float f) {
        draw2(spriteBatch, i, i2, 0, 0, i3, i4, f, f, 0.0f, 0, 0, i3, i4, false, false);
    }

    public final void draw2_Scale(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z, boolean z2, float f) {
        draw(spriteBatch, i, (i2 + ((int) (i4 * f))) - this.iHeight, 0, 0, i3, i4, f, f, 0.0f, 0, 0, i3, i4, z, z2);
    }

    public final void drawProvince(SpriteBatch spriteBatch, int i, int i2, float f) {
        int i3 = this.iWidth;
        int i4 = this.iHeight;
        draw(spriteBatch, i, i2, 0, 0, i3, i4, f, f, 0.0f, 0, 0, i3, i4, false, false);
    }

    public final int getHeight() {
        return this.iHeight;
    }

    public final Texture getTexture() {
        return this.texture;
    }

    public final int getWidth() {
        return this.iWidth;
    }

    public final void init(Texture texture, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2) {
        this.texture = texture;
        texture.setFilter(textureFilter, textureFilter2);
        this.texture.setWrap(textureWrap, textureWrap2);
        this.iWidth = texture.getWidth();
        this.iHeight = texture.getHeight();
    }
}
