package aoc.kingdoms.lukasz.jakowski;

import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class GlyphLayout_Game {
    public float width = 1.0f;
    public float height = 1.0f;

    public float getHeight() {
        return this.height;
    }

    public float getWidth() {
        return this.width;
    }

    public boolean setText(BitmapFont bitmapFont, CharSequence charSequence) {
        if (charSequence != null) {
            try {
                if (charSequence.length() > 0) {
                    GlyphLayout glyphLayout = new GlyphLayout();
                    glyphLayout.setText(bitmapFont, charSequence);
                    this.width = glyphLayout.width;
                    this.height = glyphLayout.height;
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        this.width = 1.0f;
        this.height = CFG.TEXT_HEIGHT;
        return false;
    }
}
