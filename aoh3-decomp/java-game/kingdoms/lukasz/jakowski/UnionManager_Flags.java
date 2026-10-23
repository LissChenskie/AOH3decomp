package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import com.badlogic.gdx.utils.ScreenUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class UnionManager_Flags {
    public List<Image> lFlags_H = new ArrayList();

    public final void generateFlag(SpriteBatch spriteBatch) {
        if (Game.player.playerStats4.flagsGenerated || Game.player.playerStats4.unionTags.size() <= 1) {
            return;
        }
        Game.player.playerStats4.flagsGenerated = true;
        generateFlag(spriteBatch, Game.player.playerStats4.unionTags);
        int i = 0;
        String str = "";
        while (i < Game.player.playerStats4.unionTags.size()) {
            str = str + Game.lang.getCiv(Game.player.playerStats4.unionTags.get(i)) + (i == Game.player.playerStats4.unionTags.size() - 1 ? "" : " - ");
            i++;
        }
        Game.getCiv(Game.player.iCivID).setCivName(str);
    }

    public final void generateFlag(SpriteBatch spriteBatch, List<String> list) {
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                String realTag = Game.ideologiesManager.getRealTag(list.get(i));
                if (FileManager.loadFile("gfx/flagsXH/" + list.get(i) + ".png").exists()) {
                    arrayList.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + list.get(i) + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear));
                } else if (FileManager.loadFile("gfx/flagsXH/" + realTag + ".png").exists()) {
                    arrayList.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + realTag + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear));
                } else if (FileManager.loadFile("gfx/flagsH/" + list.get(i) + ".png").exists()) {
                    arrayList.add(new Image(new Texture(FileManager.loadFile("gfx/flagsH/" + list.get(i) + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear));
                } else if (FileManager.loadFile("gfx/flagsH/" + realTag + ".png").exists()) {
                    arrayList.add(new Image(new Texture(FileManager.loadFile("gfx/flagsH/" + realTag + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear));
                } else if (FileManager.loadFile("gfx/flags/" + list.get(i) + ".png").exists()) {
                    arrayList.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + list.get(i) + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Nearest));
                } else if (FileManager.loadFile("gfx/flags/" + realTag + ".png").exists()) {
                    arrayList.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + realTag + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Nearest));
                } else if (FileManager.loadFile("mods/GameCivs/gfx/flagsH/" + list.get(i) + ".png").exists()) {
                    arrayList.add(new Image(new Texture(FileManager.loadFile("mods/GameCivs/gfx/flagsH/" + list.get(i) + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear));
                } else if (FileManager.loadFile("mods/GameCivs/gfx/flagsH/" + realTag + ".png").exists()) {
                    arrayList.add(new Image(new Texture(FileManager.loadFile("mods/GameCivs/gfx/flagsH/" + realTag + ".png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Linear));
                } else {
                    arrayList.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/ran.png"), Pixmap.Format.RGB888, false), Texture.TextureFilter.Nearest));
                }
            }
            int width = this.lFlags_H.get(0).getWidth();
            int height = this.lFlags_H.get(0).getHeight();
            spriteBatch.setColor(Color.BLACK);
            Images.pix.draw(spriteBatch, 0, 0, width, height);
            spriteBatch.setColor(Color.WHITE);
            for (int i2 = 0; i2 < arrayList.size() && i2 < 4; i2++) {
                spriteBatch.setShader(Renderer.shaderAlpha);
                this.lFlags_H.get(i2).getTexture().bind(2);
                ((Image) arrayList.get(i2)).getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                this.lFlags_H.get(i2).draw(spriteBatch, 0, 0, false, true);
                spriteBatch.setShader(Renderer.shaderDefault);
            }
            Image image = new Image(new Texture(ScreenUtils.getFrameBufferPixmap(0, CFG.GAME_HEIGHT - height, width, height)));
            image.draw(spriteBatch, 0, 0, false, true);
            try {
                spriteBatch.flush();
                ScissorStack.popScissors();
            } catch (Exception unused) {
            }
            spriteBatch.end();
            spriteBatch.begin();
            spriteBatch.setColor(Color.WHITE);
            image.getTexture().dispose();
            Game.getCiv(Game.player.iCivID).setFlag(new Image(new Texture(ScreenUtils.getFrameBufferPixmap(0, CFG.GAME_HEIGHT - height, width, height))));
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                ((Image) arrayList.get(i3)).getTexture().dispose();
            }
            arrayList.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void loadImages() {
        for (int i = 0; i < 4; i++) {
            try {
                this.lFlags_H.add(new Image(new Texture(Gdx.files.internal("gfx/unions/unionH_0_" + i + ".png")), Texture.TextureFilter.Nearest));
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }
}
