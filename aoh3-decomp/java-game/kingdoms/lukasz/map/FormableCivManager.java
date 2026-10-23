package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FBO.FBOProvincesBG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamAchievementsManager;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Json;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class FormableCivManager {
    public static FormableCiv activeFormableCiv = new FormableCiv();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.FormableCivManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            RulersManager.loadRuler(this.id, Game.getCiv(this.id).getCivTag(), false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.FormableCivManager$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            FormableCivManager.updateFormableCivilizations(this.id);
            if (this.id == Game.player.iCivID) {
                Game.player.loadFormableCivs();
                InGame_Court_Government.reloadFlags = true;
            }
            FBOProvincesBG.redrawnProvinces();
        }
    }

    public static class ConfigJson {
        public String Age_of_History;
        public ArrayList Data;
    }

    public static class FormableCiv {
        public String FormableCivTag = null;
        public List<String> ClaimantsTag = new ArrayList();
        public List<Integer> Provinces = new ArrayList();
        public int CapitalProvinceID = -1;

        public final void addClaimant(String str) {
            String str2 = this.FormableCivTag;
            if (str2 == null || !str2.equals(str)) {
                for (int i = 0; i < this.ClaimantsTag.size(); i++) {
                    if (this.ClaimantsTag.get(i).equals(str)) {
                        return;
                    }
                }
                this.ClaimantsTag.add(str);
            }
        }

        public final void addProvince(int i) {
            if (i < 0) {
                return;
            }
            for (int i2 = 0; i2 < this.Provinces.size(); i2++) {
                if (this.Provinces.get(i2).intValue() == i) {
                    return;
                }
            }
            this.Provinces.add(Integer.valueOf(i));
        }

        public boolean controlsAllProvinces(int i) {
            for (int provincesSize = getProvincesSize() - 1; provincesSize >= 0; provincesSize--) {
                if (Game.getProvince(this.Provinces.get(provincesSize).intValue()).getWasteland() < 0 && Game.getProvince(this.Provinces.get(provincesSize).intValue()).getCivID() != i && Game.getCiv(Game.getProvince(this.Provinces.get(provincesSize).intValue()).getCivID()).getPuppetOfCivID() != i && Game.getProvince(this.Provinces.get(provincesSize).intValue()).getCivID() != 0) {
                    return false;
                }
            }
            return true;
        }

        public int getClaimantsSize() {
            return this.ClaimantsTag.size();
        }

        public int getControlledProvinces(int i) {
            int i2 = 0;
            for (int provincesSize = getProvincesSize() - 1; provincesSize >= 0; provincesSize--) {
                if (Game.getProvince(this.Provinces.get(provincesSize).intValue()).getCivID() == i) {
                    i2++;
                }
            }
            return i2;
        }

        public int getProvincesSize() {
            return this.Provinces.size();
        }

        public int getProvincesSize_WithoutNeutral() {
            int i = 0;
            for (int size = this.Provinces.size() - 1; size >= 0; size--) {
                if (Game.getProvince(this.Provinces.get(size).intValue()).getCivID() > 0) {
                    i++;
                }
            }
            return i;
        }

        public final void removeClaimant(String str) {
            for (int i = 0; i < this.ClaimantsTag.size(); i++) {
                if (this.ClaimantsTag.get(i).equals(str)) {
                    this.ClaimantsTag.remove(i);
                    return;
                }
            }
        }

        public final void removeProvince(int i) {
            if (i < 0) {
                return;
            }
            for (int i2 = 0; i2 < this.Provinces.size(); i2++) {
                if (this.Provinces.get(i2).intValue() == i) {
                    this.Provinces.remove(i2);
                    return;
                }
            }
        }
    }

    public static final void buildFormableCivilizations() {
        for (int i = 0; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).clearTagsCanForm();
        }
        if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/AoH.txt").exists()) {
            for (String str : FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/AoH.txt").readString().split(";")) {
                try {
                    loadActiveFormableCivilization(str);
                    String realTag = Game.ideologiesManager.getRealTag(activeFormableCiv.FormableCivTag);
                    int size = activeFormableCiv.ClaimantsTag.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        String str2 = activeFormableCiv.ClaimantsTag.get(i2);
                        for (int i3 = 1; i3 < Game.getCivsSize(); i3++) {
                            if (Game.getCiv(i3).getCivTag().equals(str2) || (Game.getCiv(i3).realTag.equals(str2) && !Game.getCiv(i3).realTag.equals(realTag))) {
                                Game.getCiv(i3).addTagsCanForm(activeFormableCiv.FormableCivTag);
                            }
                        }
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            for (int i4 = 0; i4 < SteamManager.modsFoldersSize; i4++) {
                for (FileHandle fileHandle : FileManager.IS_MAC ? Gdx.files.external(SteamManager.modsFolders.get(i4) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_FORMABLE_CIVS_DATA).list() : Gdx.files.internal(SteamManager.modsFolders.get(i4) + "map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_FORMABLE_CIVS_DATA).list()) {
                    try {
                        String string = fileHandle.readString();
                        Json json = new Json();
                        json.setElementType(ConfigJson.class, "Data", FormableCiv.class);
                        activeFormableCiv = (FormableCiv) json.fromJson(FormableCiv.class, string);
                        String realTag2 = Game.ideologiesManager.getRealTag(activeFormableCiv.FormableCivTag);
                        int size2 = activeFormableCiv.ClaimantsTag.size();
                        for (int i5 = 0; i5 < size2; i5++) {
                            String str3 = activeFormableCiv.ClaimantsTag.get(i5);
                            for (int i6 = 1; i6 < Game.getCivsSize(); i6++) {
                                if (Game.getCiv(i6).getCivTag().equals(str3) || (Game.ideologiesManager.getRealTag(Game.getCiv(i6).getCivTag()).equals(str3) && !Game.ideologiesManager.getRealTag(Game.getCiv(i6).getCivTag()).equals(realTag2))) {
                                    Game.getCiv(i6).addTagsCanForm(activeFormableCiv.FormableCivTag);
                                }
                            }
                        }
                    } catch (Exception e2) {
                        CFG.exceptionStack(e2);
                    }
                }
            }
            for (int i7 = 0; i7 < SteamManager.itemsInstalledSize; i7++) {
                for (FileHandle fileHandle2 : Gdx.files.absolute(SteamManager.itemsInstalled.get(i7).getFolder() + "/map/" + Game.map.getFile_ActiveMap_Path() + CFG.FILE_FORMABLE_CIVS_DATA).list()) {
                    try {
                        String string2 = fileHandle2.readString();
                        Json json2 = new Json();
                        json2.setElementType(ConfigJson.class, "Data", FormableCiv.class);
                        activeFormableCiv = (FormableCiv) json2.fromJson(FormableCiv.class, string2);
                        String realTag3 = Game.ideologiesManager.getRealTag(activeFormableCiv.FormableCivTag);
                        int size3 = activeFormableCiv.ClaimantsTag.size();
                        for (int i8 = 0; i8 < size3; i8++) {
                            String str4 = activeFormableCiv.ClaimantsTag.get(i8);
                            for (int i9 = 1; i9 < Game.getCivsSize(); i9++) {
                                if (Game.getCiv(i9).getCivTag().equals(str4) || (Game.getCiv(i9).realTag.equals(str4) && !Game.getCiv(i9).realTag.equals(realTag3))) {
                                    Game.getCiv(i9).addTagsCanForm(activeFormableCiv.FormableCivTag);
                                }
                            }
                        }
                    } catch (Exception e3) {
                        CFG.exceptionStack(e3);
                    }
                }
            }
        }
    }

    public static boolean canFormACiv(int i, String str) {
        FormableCiv formableCivilization;
        return doesNotExists_FormableCiv(str) && !Game.getCiv(i).diplomacy.isAtWar() && Game.getCiv(i).getPuppetOfCivID() == i && Game.getCiv(i).fGold >= ((float) GameValues.government.FORM_CIV_COST_GOLD) && (formableCivilization = getFormableCivilization(str)) != null && formableCivilization.controlsAllProvinces(i);
    }

    protected static final boolean doesNotExists_FormableCiv(String str) {
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (str.equals(Game.getCiv(i).getCivTag())) {
                return false;
            }
        }
        return true;
    }

    public static boolean formCiv(int i, String str) {
        if (!canFormACiv(i, str)) {
            return false;
        }
        try {
            if (i == Game.player.iCivID) {
                SteamAchievementsManager.unlockFormable(str);
            }
        } catch (Exception unused) {
        }
        Game.getCiv(i).fGold -= GameValues.government.FORM_CIV_COST_GOLD;
        Game.LoadCivilizationData loadCivilizationDataLoadCivilization = Game.loadCivilization(str);
        Game.getCiv(i).updateCivilizationTAG(str, loadCivilizationDataLoadCivilization.iR, loadCivilizationDataLoadCivilization.iG, loadCivilizationDataLoadCivilization.iB);
        Game.getCiv(i).clearTagsCanForm();
        Game.addSimpleTask_First(new AnonymousClass1("loadRuler" + i, i));
        Game.addSimpleTask_First(new AnonymousClass2("updateFormableCivilizations" + i, i));
        return true;
    }

    public static final FormableCiv getFormableCivilization(String str) {
        try {
            String string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/data/" + str + ".txt").readString();
            Json json = new Json();
            json.setElementType(ConfigJson.class, "Data", FormableCiv.class);
            return (FormableCiv) json.fromJson(FormableCiv.class, string);
        } catch (Exception e) {
            CFG.LOG(e);
            return null;
        }
    }

    public static MenuElement_Hover getHover(int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(CaiJWNfqszJNZ.qnxWJrYj) + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear("" + Game.lang.getCiv(Game.getCiv(Game.player.iCivID).sTagsCanForm.get(i)), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.government.FORM_CIV_COST_GOLD, 1), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game.getCiv(Game.player.iCivID).fGold >= ((float) GameValues.government.FORM_CIV_COST_GOLD) ? Images.v : Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AtPeace"), CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game.getCiv(Game.player.iCivID).diplomacy.isAtWar() ? Images.x : Images.v, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IsNotAVassal"), CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game.getCiv(Game.player.iCivID).getPuppetOfCivID() == Game.player.iCivID ? Images.v : Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("XDoesNotExist", Game.lang.getCiv(Game.getCiv(Game.player.iCivID).sTagsCanForm.get(i))), CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(doesNotExists_FormableCiv(Game.getCiv(Game.player.iCivID).sTagsCanForm.get(i)) ? Images.v : Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("OwnsAllProvinces"), CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game.player.formableCivs.get(i).controlsAllProvinces(Game.player.iCivID) ? Images.v : Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        return new MenuElement_Hover(arrayList);
    }

    public static final void loadActiveFormableCivilization(String str) {
        try {
            String string = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/data/" + str).readString();
            Json json = new Json();
            json.setElementType(ConfigJson.class, "Data", FormableCiv.class);
            activeFormableCiv = (FormableCiv) json.fromJson(FormableCiv.class, string);
        } catch (Exception e) {
            CFG.LOG(e);
        }
    }

    public static final void updateFormableCivilizations(int i) {
        try {
            Game.getCiv(i).clearTagsCanForm();
            if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/AoH.txt").exists()) {
                for (String str : FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/AoH.txt").readString().split(";")) {
                    try {
                        loadActiveFormableCivilization(str);
                        String realTag = Game.ideologiesManager.getRealTag(activeFormableCiv.FormableCivTag);
                        int size = activeFormableCiv.ClaimantsTag.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            if (Game.getCiv(i).getCivTag().equals(activeFormableCiv.ClaimantsTag.get(i2)) || (Game.getCiv(i).realTag.equals(activeFormableCiv.ClaimantsTag.get(i2)) && !Game.getCiv(i).realTag.equals(realTag))) {
                                Game.getCiv(i).addTagsCanForm(activeFormableCiv.FormableCivTag);
                            }
                        }
                    } catch (Exception e) {
                        CFG.exceptionStack(e);
                    }
                }
            }
        } catch (Exception e2) {
            CFG.exceptionStack(e2);
        }
    }
}
