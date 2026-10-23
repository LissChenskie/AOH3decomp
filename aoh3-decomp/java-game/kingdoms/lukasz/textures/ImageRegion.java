package aoc.kingdoms.lukasz.textures;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ImageRegion {
    private int iHeight;
    private int iWidth;
    private TextureRegion textureRegion = new TextureRegion();
    private int iRegionWidth = 1;
    private int iRegionHeight = 1;

    protected ImageRegion(Texture texture, int i, int i2) {
        init(texture, Texture.TextureFilter.Linear, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge, Texture.TextureWrap.ClampToEdge, i, i2);
    }

    protected ImageRegion(Texture texture, Texture.TextureFilter textureFilter, int i) {
        init(texture, textureFilter, textureFilter, Texture.TextureWrap.ClampToEdge, Texture.TextureWrap.ClampToEdge, i);
    }

    protected ImageRegion(Texture texture, Texture.TextureFilter textureFilter, int i, int i2) {
        init(texture, textureFilter, textureFilter, Texture.TextureWrap.ClampToEdge, Texture.TextureWrap.ClampToEdge, i, i2);
    }

    protected ImageRegion(Texture texture, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, int i, int i2) {
        init(texture, textureFilter, textureFilter2, Texture.TextureWrap.ClampToEdge, Texture.TextureWrap.ClampToEdge, i, i2);
    }

    protected ImageRegion(Texture texture, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2, int i, int i2) {
        init(texture, textureFilter, textureFilter2, textureWrap, textureWrap2, i, i2);
    }

    protected ImageRegion(Texture texture, Texture.TextureFilter textureFilter, Texture.TextureWrap textureWrap, int i, int i2) {
        init(texture, textureFilter, textureFilter, textureWrap, textureWrap, i, i2);
    }

    public final void dispose() {
        if (this.textureRegion.getTexture() != null) {
            this.textureRegion.getTexture().dispose();
        }
        this.textureRegion = null;
    }

    public final void draw(SpriteBatch spriteBatch) {
        int i = this.iWidth;
        int i2 = this.iHeight;
        draw(spriteBatch, 0, 0, 0, 0, i, i2, 1.0f, 1.0f, 0.0f, 0, 0, i, i2, false, false);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2) {
        int i3 = this.iWidth;
        int i4 = this.iHeight;
        draw(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, 0.0f, 0, 0, i3, i4, false, false);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6, float f, float f2, float f3, int i7, int i8, int i9, int i10, boolean z, boolean z2) {
        spriteBatch.draw(this.textureRegion.getTexture(), i, (-i2) - this.iHeight, i3, i4, i5, i6, f, f2, f3, i7, i8, i9, i10, z, z2);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3 = this.iWidth;
        int i4 = this.iHeight;
        draw(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, 0.0f, 0, 0, i3, i4, z, false);
    }

    public final void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        int i3 = this.iWidth;
        int i4 = this.iHeight;
        draw(spriteBatch, i, i2, 0, 0, i3, i4, 1.0f, 1.0f, 0.0f, 0, 0, i3, i4, z, z2);
    }

    public final void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        draw(spriteBatch, i, i2 + (i4 - this.iHeight), 0, 0, i3, i4, 1.0f, 1.0f, 0.0f, 0, 0, i3, i4, false, false);
    }

    public final void drawRegion(SpriteBatch spriteBatch) {
        drawRegion(spriteBatch, 0, 0);
    }

    public final void drawRegion(SpriteBatch spriteBatch, int i, int i2) {
        drawRegion(spriteBatch, i, i2, this.iRegionWidth, this.iRegionHeight);
    }

    public final void drawRegion(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        spriteBatch.draw(this.textureRegion, i, (-i2) - i4, i3, i4);
    }

    public final int getHeight() {
        return this.iHeight;
    }

    public final int getRegionHeight() {
        return this.iRegionHeight;
    }

    public final int getRegionWidth() {
        return this.iRegionWidth;
    }

    public final Texture getTexture() {
        return this.textureRegion.getTexture();
    }

    public final TextureRegion getTextureRegion() {
        return this.textureRegion;
    }

    public final int getWidth() {
        return this.iWidth;
    }

    public final void init(Texture texture, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2, int i) {
        this.textureRegion.setTexture(texture);
        this.textureRegion.getTexture().setFilter(textureFilter, textureFilter2);
        this.textureRegion.getTexture().setWrap(textureWrap, textureWrap2);
        this.iRegionWidth = this.textureRegion.getTexture().getWidth();
        this.iRegionHeight = i;
        this.iWidth = texture.getWidth();
        this.iHeight = texture.getHeight();
    }

    public final void init(Texture texture, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2, int i, int i2) {
        this.textureRegion.setTexture(texture);
        this.textureRegion.getTexture().setFilter(textureFilter, textureFilter2);
        this.textureRegion.getTexture().setWrap(textureWrap, textureWrap2);
        this.iRegionWidth = i;
        this.iRegionHeight = i2;
        this.iWidth = texture.getWidth();
        this.iHeight = texture.getHeight();
    }
}
