package aoc.kingdoms.lukasz.jakowski.Steam;

import androidx.arch.core.ht.qIuEvFbUtcea;
import androidx.core.internal.oiV.CoLRpi;
import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class SteamAchievementsManager {
    public static String ALLIANCE = "ALLIANCE";
    public static String DECLARE_WAR = "DECLARE_WAR";
    public static String DROP_NUKE = "DROP_NUKE";
    public static String EVENT_RES = "EVENT_RES";
    public static String GOLDEN_MILITARY = "GOLDEN_MILITARY";
    public static String GOLDEN_PROSPERITY = "GOLDEN_PROSPERITY";
    public static String GOLDEN_SCIENCE = "GOLDEN_SCIENCE";
    public static String PROMOTE_ADVISOR = "PROMOTE_ADVISOR";
    public static String SPY = "SPY";
    public static String UNITE_HRE = "UNITE_HRE";
    public static String UNLOCK_LEGACY = "UNLOCK_LEGACY";

    public static void unlockAchievement(String str) {
        try {
            SteamManager.userStats.setAchievement(str);
            SteamManager.userStats.storeStats();
        } catch (Exception unused) {
        }
    }

    public static void unlockFormable(String str) {
        String str2 = cIUGJCqyPXfp.lwoc;
        try {
            String realTag = Game.ideologiesManager.getRealTag(str);
            if (str.equals("adri3") || realTag.equals("adri3")) {
                unlockAchievement("ADRIATIC_IMPERIUM");
            } else if (str.equals("pol2") || realTag.equals("pol2")) {
                unlockAchievement("COMMONWEALTH");
            } else if (str.equals("afri") || realTag.equals("afri")) {
                unlockAchievement(HjHDSSkYG.egYeWRsCsUcCtG);
            } else if (str.equals("alpi3") || realTag.equals("alpi3")) {
                unlockAchievement("ALIPINE_IMPERIUM");
            } else if (str.equals("anda3") || realTag.equals("anda3")) {
                unlockAchievement("ANDALUCIA");
            } else if (str.equals("arab") || realTag.equals("arab")) {
                unlockAchievement("ARABIA");
            } else if (str.equals("gatr3") || realTag.equals("gatr3")) {
                unlockAchievement("AUSTRIAN_REICH");
            } else if (str.equals("baby") || realTag.equals("baby")) {
                unlockAchievement("BABYLON");
            } else if (str.equals("gboh3") || realTag.equals("gboh3")) {
                unlockAchievement("BOHEMIAN_EMPIRE");
            } else if (str.equals("cary3") || realTag.equals("cary3")) {
                unlockAchievement("CARPATHIAN_EMPIRE");
            } else if (str.equals("carr") || realTag.equals("carr")) {
                unlockAchievement("CARTHAGE");
            } else if (str.equals("argg3") || realTag.equals("argg3")) {
                unlockAchievement("CATALAN_IMPERIUM");
            } else if (str.equals(str2) || realTag.equals(str2)) {
                unlockAchievement("CAUCASIAN_EMPIRE");
            } else if (str.equals("plai3") || realTag.equals("plai3")) {
                unlockAchievement("CONFED_PLAINS");
            } else if (str.equals("dalm2") || realTag.equals("dalm2")) {
                unlockAchievement("DALMATIA");
            } else if (str.equals("danu3") || realTag.equals("danu3")) {
                unlockAchievement("DUNUBIAN");
            } else if (str.equals("eagl3") || realTag.equals("eagl3")) {
                unlockAchievement("EAGLE_UNION");
            } else if (str.equals("evil3") || realTag.equals("evil3")) {
                unlockAchievement("EVIL_SCOTLAND");
            } else if (str.equals("east2") || realTag.equals("east2")) {
                unlockAchievement("EASTERN_ROMAN");
            } else if (str.equals("jauu3") || realTag.equals("jauu3")) {
                unlockAchievement("EMPIRE_JAUNPUR");
            } else if (str.equals("sarr3") || realTag.equals("sarr3")) {
                unlockAchievement("SARDINES");
            } else if (str.equals("eunn") || realTag.equals("eunn")) {
                unlockAchievement("THE_EU");
            } else if (str.equals("frc") || realTag.equals("frc")) {
                unlockAchievement("FRANCONIA");
            } else if (str.equals("gaja3") || realTag.equals("gaja3")) {
                unlockAchievement("GAJAPATI");
            } else if (str.equals("frak3") || realTag.equals("frak3")) {
                unlockAchievement("GALLIAN");
            } else if (str.equals("ger") || realTag.equals(IwYCCQBuFGwl.EAEoIX)) {
                unlockAchievement("GERMAN_EMPIRE");
            } else if (str.equals("est") || realTag.equals("est")) {
                unlockAchievement("ESTONIA");
            } else if (str.equals("ghav") || realTag.equals("ghav")) {
                unlockAchievement("GHAZNA");
            } else if (str.equals("durr") || realTag.equals("durr")) {
                unlockAchievement("DURRANI");
            } else if (str.equals("cent") || realTag.equals("cent")) {
                unlockAchievement("CENTRAL_AMERICA");
            } else if (str.equals("nirr3") || realTag.equals("nirr3")) {
                unlockAchievement("NIGER_EMPIRE");
            } else if (str.equals("grc") || realTag.equals("grc")) {
                unlockAchievement("GRAN_COLOMBIA");
            } else if (str.equals("grea3") || realTag.equals("grea3")) {
                unlockAchievement("GREATER_ASIA_CO");
            } else if (str.equals("hans3") || realTag.equals("hans3")) {
                unlockAchievement("HANSEATIC");
            } else if (str.equals("iber") || realTag.equals("iber")) {
                unlockAchievement("IBERIAN_UNION");
            } else if (str.equals("lech3") || realTag.equals("lech3")) {
                unlockAchievement("LICHITOW");
            } else if (str.equals("inca") || realTag.equals("inca")) {
                unlockAchievement("INCA_EMPIRE");
            } else if (str.equals("indo3") || realTag.equals("indo3")) {
                unlockAchievement("INDOCHINA_EMPIRE");
            } else if (str.equals("ita") || realTag.equals("ita")) {
                unlockAchievement(HTGgowNjn.mMKNtJObHqI);
            } else if (str.equals("jap") || realTag.equals("jap")) {
                unlockAchievement("JAPAN");
            } else if (str.equals("jur") || realTag.equals("jur")) {
                unlockAchievement("JERUSALEM");
            } else if (str.equals("keis3") || realTag.equals("keis3")) {
                unlockAchievement("KAISERREICH");
            } else if (str.equals("kek") || realTag.equals(qIuEvFbUtcea.wiLaf)) {
                unlockAchievement("KEKISTAN");
            } else if (str.equals("gmag3") || realTag.equals("gmag3")) {
                unlockAchievement("MAGHREB");
            } else if (str.equals("int") || realTag.equals(cIUGJCqyPXfp.VlRpRfdRNJczY)) {
                unlockAchievement("INTERMARIUM");
            } else if (str.equals("ire") || realTag.equals("ire")) {
                unlockAchievement("K_IRELAND");
            } else if (str.equals("glat3") || realTag.equals("glat3")) {
                unlockAchievement("LATIN_AMERICAN_UNION");
            } else if (str.equals("rivi3") || realTag.equals("rivi3")) {
                unlockAchievement("K_RIVIERA");
            } else if (str.equals("sok") || realTag.equals("sok")) {
                unlockAchievement("KOREAN_EMPIRE");
            } else if (str.equals(IlLkpaQxs.gFTRYLIGuct) || realTag.equals("lati")) {
                unlockAchievement("LATIN_EMPIRE");
            } else if (str.equals("leva3") || realTag.equals(uNBYrZVGzy.mnZbN)) {
                unlockAchievement("LEVANT_EMPIRE");
            } else if (str.equals("glux3") || realTag.equals("glux3")) {
                unlockAchievement("LUXEMBOURG_EMPIRE");
            } else if (str.equals("lot") || realTag.equals("lot")) {
                unlockAchievement("LOTHARINGIA");
            } else if (str.equals("mad") || realTag.equals("mad")) {
                unlockAchievement("MADAGASCAR");
            } else if (str.equals("magy3") || realTag.equals("magy3")) {
                unlockAchievement("MAGYAR_EMPIRE");
            } else if (str.equals("gmaj3") || realTag.equals("gmaj3")) {
                unlockAchievement("MAJAPAHIT_E");
            } else if (str.equals("mara") || realTag.equals("mara")) {
                unlockAchievement("MARATHA_E");
            } else if (str.equals("meko3") || realTag.equals("meko3")) {
                unlockAchievement("MEKONG_EMPIRE");
            } else if (str.equals("mex2") || realTag.equals("mex2")) {
                unlockAchievement(SwmJtrccN.ydADa);
            } else if (str.equals("mone3") || realTag.equals("mone3")) {
                unlockAchievement("MONGOL_EMPIRE");
            } else if (str.equals("nand3") || realTag.equals("nand3")) {
                unlockAchievement("NANDA_EMPIRE");
            } else if (str.equals("nors") || realTag.equals("nors")) {
                unlockAchievement("NORTH_SEA_EMPIRE");
            } else if (str.equals("pizz3") || realTag.equals("pizz3")) {
                unlockAchievement("PIZZA_EMPIRE");
            } else if (str.equals("occa") || realTag.equals(LBhZogys.ZjCh)) {
                unlockAchievement("OCCITANIA");
            } else if (str.equals("mya") || realTag.equals("mya")) {
                unlockAchievement("PAGAN_EMPIRE");
            } else if (str.equals("ira") || realTag.equals("ira")) {
                unlockAchievement("PERSIAN_EMPIRE");
            } else if (str.equals("red3") || realTag.equals("red3")) {
                unlockAchievement("RED_SEA_EMPIRE");
            } else if (str.equals("ratt") || realTag.equals("ratt")) {
                unlockAchievement("RATTANAKOSIN");
            } else if (str.equals("rash") || realTag.equals("rash")) {
                unlockAchievement("RASHIDUN");
            } else if (str.equals("mal") || realTag.equals("mal")) {
                unlockAchievement("MALAYSIA");
            } else if (str.equals("spqr") || realTag.equals("spqr")) {
                unlockAchievement("ROME_E");
            } else if (str.equals("cono3") || realTag.equals("cono3")) {
                unlockAchievement("R_CONOSUR");
            } else if (str.equals(ClXgFvsSKQc.gOcJ) || realTag.equals("rom")) {
                unlockAchievement("K_ROMANIA");
            } else if (str.equals("rus2") || realTag.equals("rus2")) {
                unlockAchievement("RUSSIAN_EMPIRE");
            } else if (str.equals("gsca3") || realTag.equals("gsca3")) {
                unlockAchievement("SCANDINAVIA");
            } else if (str.equals("swab") || realTag.equals("swab")) {
                unlockAchievement("SWABIA");
            } else if (str.equals("swi") || realTag.equals("swi")) {
                unlockAchievement(CoLRpi.uVN);
            } else if (str.equals("uni") || realTag.equals("uni")) {
                unlockAchievement("UNITED_KINGDOM");
            } else if (str.equals("gbul3") || realTag.equals("gbul3")) {
                unlockAchievement("TSAR_BULGARIA");
            } else if (str.equals("uso") || realTag.equals("uso")) {
                unlockAchievement("US_OCEANIA");
            } else if (str.equals("somi3") || realTag.equals("somi3")) {
                unlockAchievement("SOMALI_EMPIRE");
            } else if (str.equals("gsg3") || realTag.equals("gsg3")) {
                unlockAchievement("S_GERMAN_CONF");
            }
        } catch (Exception unused) {
        }
    }
}
