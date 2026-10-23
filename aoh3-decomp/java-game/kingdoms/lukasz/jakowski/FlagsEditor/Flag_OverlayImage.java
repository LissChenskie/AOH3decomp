package aoc.kingdoms.lukasz.jakowski.FlagsEditor;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Image;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Texture;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Flag_OverlayImage {
    public int iOverlayID;
    public Image imageOverlay;

    public Flag_OverlayImage(int i) {
        this.iOverlayID = i;
        this.imageOverlay = new Image(new Texture(Gdx.files.internal("gfx/editorFlags/overlays/" + Game.flagManager.lOverlays.get(i).sName + ".png")), Texture.TextureFilter.Linear);
    }
}
