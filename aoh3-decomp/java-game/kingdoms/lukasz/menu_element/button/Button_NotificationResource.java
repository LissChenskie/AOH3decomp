package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Button_NotificationResource extends Button_Notification {
    public Button_NotificationResource(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j) {
        super(str, str2, i, i2, i3, i4, i5, i6, j);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification
    protected void drawIcon(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, this.fAlpha));
        ResourcesManager.resourceImages.get(this.imageID).draw(spriteBatch, getPosX() + (CFG.PADDING * 2) + i, ((getPosY() + (getHeight() / 2)) - (this.iconHeight / 2)) + i2, this.iconWidth, this.iconHeight);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification
    public float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ResourcesManager.resourceImages.get(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification
    public void updateIcon() {
        float imageScale = getImageScale(this.imageID) * 1.2f;
        this.iconWidth = (int) (ResourcesManager.resourceImages.get(this.imageID).getWidth() * imageScale);
        this.iconHeight = (int) (ResourcesManager.resourceImages.get(this.imageID).getHeight() * imageScale);
    }
}
