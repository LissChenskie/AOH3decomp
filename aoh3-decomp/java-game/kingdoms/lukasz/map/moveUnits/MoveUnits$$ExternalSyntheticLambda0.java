package aoc.kingdoms.lukasz.map.moveUnits;

import java.util.function.ToDoubleFunction;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public final /* synthetic */ class MoveUnits$$ExternalSyntheticLambda0 implements ToDoubleFunction {
    @Override // java.util.function.ToDoubleFunction
    public final double applyAsDouble(Object obj) {
        return ((MoveUnits.Node) obj).getFCost();
    }
}
