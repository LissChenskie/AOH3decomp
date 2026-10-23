package aoc.kingdoms.lukasz.jakowski;

import android.os.Bundle;
import com.android.support.Main;
import com.badlogic.gdx.backends.android.AndroidApplication;
import com.badlogic.gdx.backends.android.AndroidApplicationConfiguration;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AndroidLauncher extends AndroidApplication {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Main.ServiceStart(this);
        super.onCreate(bundle);
        initialize(new AA_Game(), new AndroidApplicationConfiguration());
    }
}
