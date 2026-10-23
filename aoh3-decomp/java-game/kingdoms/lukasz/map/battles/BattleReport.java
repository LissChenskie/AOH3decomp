package aoc.kingdoms.lukasz.map.battles;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class BattleReport {
    public CivReport civReportLeft;
    public CivReport civReportRight;
    public float fWarScore;
    public int iProvinceID;
    public int iTurnID;
    public String key;
    public boolean leftSideWon;
    public boolean playerWon;

    public static class CivReport {
        public int iCasualties;
        public int iCivID;
        public int iRetreated;
        public int iSoldiers;

        public CivReport(int i, int i2, int i3, int i4) {
            this.iCivID = i;
            this.iSoldiers = i2;
            this.iCasualties = i3;
            this.iRetreated = i4;
        }
    }

    public BattleReport(String str, int i, float f, boolean z, boolean z2, int i2, CivReport civReport, CivReport civReport2) {
        this.key = str;
        this.iProvinceID = i;
        this.fWarScore = f;
        this.leftSideWon = z;
        this.playerWon = z2;
        this.civReportLeft = civReport;
        this.civReportRight = civReport2;
        this.iTurnID = i2;
    }
}
