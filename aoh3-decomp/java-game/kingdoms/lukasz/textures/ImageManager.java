package aoc.kingdoms.lukasz.textures;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ImageManager {
    private static List<Image> images = new ArrayList();

    public static final int addImage(String str) {
        return addImage(str, Texture.TextureFilter.Linear);
    }

    public static final int addImage(String str, Pixmap.Format format, Texture.TextureFilter textureFilter) {
        images.add(new Image(loadTexture(str, format), textureFilter));
        return images.size() - 1;
    }

    public static final int addImage(String str, Pixmap.Format format, Texture.TextureFilter textureFilter, Texture.TextureWrap textureWrap) {
        images.add(new Image(loadTexture(str, format), textureFilter, textureWrap));
        return images.size() - 1;
    }

    public static final int addImage(String str, Texture.TextureFilter textureFilter) {
        return addImage(str, Pixmap.Format.RGBA8888, textureFilter);
    }

    public static final int buildPix() {
        Pixmap pixmap = new Pixmap(1, 1, Pixmap.Format.RGBA8888);
        pixmap.drawPixel(0, 0, Color.WHITE.toIntBits());
        images.add(new Image(new Texture(pixmap)));
        return images.size() - 1;
    }

    public static final Image buildPix_IMG() {
        Pixmap pixmap = new Pixmap(1, 1, Pixmap.Format.RGBA8888);
        pixmap.drawPixel(0, 0, Color.WHITE.toIntBits());
        return new Image(new Texture(pixmap));
    }

    public static final Image getImage(int i) {
        return images.get(i);
    }

    public static final int getImagesSize() {
        return images.size();
    }

    public static final Image loadImage(String str) {
        return loadImage(str, Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear);
    }

    public static final Image loadImage(String str, Pixmap.Format format) {
        return loadImage(str, format, Texture.TextureFilter.Linear);
    }

    public static final Image loadImage(String str, Pixmap.Format format, Texture.TextureFilter textureFilter) {
        return new Image(loadTexture(str, format), textureFilter);
    }

    public static final Image loadImage(String str, Pixmap.Format format, Texture.TextureFilter textureFilter, Texture.TextureWrap textureWrap) {
        return new Image(loadTexture(str, format), textureFilter, textureWrap);
    }

    public static final Image loadImage(String str, Texture.TextureFilter textureFilter) {
        return loadImage(str, Pixmap.Format.RGBA8888, textureFilter);
    }

    public static final ImageRegion loadImageRegion(String str, int i) {
        return loadImageRegion(str, Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, i);
    }

    public static final ImageRegion loadImageRegion(String str, int i, int i2) {
        return loadImageRegion(str, Pixmap.Format.RGBA8888, Texture.TextureFilter.Linear, i, i2);
    }

    public static final ImageRegion loadImageRegion(String str, Pixmap.Format format, int i, int i2) {
        return loadImageRegion(str, format, Texture.TextureFilter.Linear, i, i2);
    }

    public static final ImageRegion loadImageRegion(String str, Pixmap.Format format, Texture.TextureFilter textureFilter, int i) {
        return new ImageRegion(loadTexture(str, format), textureFilter, i);
    }

    public static final ImageRegion loadImageRegion(String str, Pixmap.Format format, Texture.TextureFilter textureFilter, int i, int i2) {
        return new ImageRegion(loadTexture(str, format), textureFilter, i, i2);
    }

    public static final ImageRegion loadImageRegion(String str, Texture.TextureFilter textureFilter, int i, int i2) {
        return loadImageRegion(str, Pixmap.Format.RGBA8888, textureFilter, i, i2);
    }

    public static final Texture loadTexture(String str) {
        return loadTexture(str, Pixmap.Format.RGBA8888);
    }

    public static final Texture loadTexture(String str, Pixmap.Format format) {
        try {
            try {
                if (CFG.isDesktop()) {
                    if (FileManager.IS_MAC) {
                        for (int i = 0; i < SteamManager.modsFoldersSize; i++) {
                            if (Gdx.files.external(SteamManager.modsFolders.get(i) + str).exists()) {
                                return new Texture(Gdx.files.external(SteamManager.modsFolders.get(i) + str), format, false);
                            }
                        }
                    } else {
                        for (int i2 = 0; i2 < SteamManager.modsFoldersSize; i2++) {
                            if (Gdx.files.internal(SteamManager.modsFolders.get(i2) + str).exists()) {
                                return new Texture(Gdx.files.internal(SteamManager.modsFolders.get(i2) + str), format, false);
                            }
                        }
                    }
                    for (int i3 = 0; i3 < SteamManager.itemsInstalledSize; i3++) {
                        if (Gdx.files.absolute(SteamManager.itemsInstalled.get(i3).getFolder() + "/" + str).exists()) {
                            return new Texture(Gdx.files.absolute(SteamManager.itemsInstalled.get(i3).getFolder() + "/" + str), format, false);
                        }
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            return (FileManager.IS_MAC && Gdx.files.external(str).exists()) ? new Texture(Gdx.files.external(str), format, false) : new Texture(Gdx.files.internal(str), format, false);
        } catch (GdxRuntimeException e2) {
            CFG.exceptionStack(e2);
            return new Texture(CFG.FILE_IMAGE_NOT_FOUND);
        }
    }

    public static final Texture loadTexture_RGB888(String str) {
        return loadTexture(str, Pixmap.Format.RGB888);
    }
}
