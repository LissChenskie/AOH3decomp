package aoc.kingdoms.lukasz.animation;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AnimationOnce_Images {
    private float fPosX;
    private float fPosY;
    private int currentFrameID = 0;
    private boolean animationFinished = false;
    private long ANIMATION_LAST_UPDATE_TIME = CFG.currentTimeMillis;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.animation.AnimationOnce_Images$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$aoc$kingdoms$lukasz$animation$AnimationData_Type;

        static {
            int[] iArr = new int[AnimationData_Type.values().length];
            $SwitchMap$aoc$kingdoms$lukasz$animation$AnimationData_Type = iArr;
            try {
                iArr[AnimationData_Type.LOOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$animation$AnimationData_Type[AnimationData_Type.ONCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public AnimationOnce_Images(int i, int i2) {
        this.fPosX = i;
        this.fPosY = i2;
    }

    public final void draw(SpriteBatch spriteBatch) {
        getAnimationData_Images().drawFrame(spriteBatch, getPosX(), getPosY(), this.currentFrameID);
    }

    public AnimationData_Images getAnimationData_Images() {
        return Game.animationManager.animationMove;
    }

    public boolean getAnimationFinished() {
        return this.animationFinished;
    }

    public int getPosX() {
        return (int) this.fPosX;
    }

    public int getPosY() {
        return (int) this.fPosY;
    }

    public void setPosX(float f) {
        this.fPosX = f;
    }

    public void setPosY(float f) {
        this.fPosY = f;
    }

    public void update() {
        if (CFG.currentTimeMillis > this.ANIMATION_LAST_UPDATE_TIME + ((long) getAnimationData_Images().ANIMATION_FRAME_TIME)) {
            int i = this.currentFrameID + 1;
            this.currentFrameID = i;
            if (i >= getAnimationData_Images().getNumOfFrames()) {
                int i2 = AnonymousClass1.$SwitchMap$aoc$kingdoms$lukasz$animation$AnimationData_Type[getAnimationData_Images().animationType.ordinal()];
                if (i2 == 1) {
                    this.currentFrameID = 0;
                } else if (i2 == 2) {
                    this.currentFrameID = 0;
                    this.animationFinished = true;
                }
            }
            this.ANIMATION_LAST_UPDATE_TIME = CFG.currentTimeMillis;
        }
    }
}
