package aoc.kingdoms.lukasz.map.map.Waves;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class WavesManager {
    public static List<WavesLine> wavesLines = new ArrayList();
    public static int wavesLinesSize = 0;

    public static final void addWavesLine(WavesLine wavesLine) {
        wavesLines.add(wavesLine);
        wavesLinesSize = wavesLines.size();
    }
}
