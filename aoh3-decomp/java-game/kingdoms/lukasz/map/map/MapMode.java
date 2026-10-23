package aoc.kingdoms.lukasz.map.map;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.province.ProvinceHover;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MapMode {
    public ProvinceDraw.DrawProvinces drawProvinces;
    public ProvinceHover.ProvinceHoverBuild provinceHoverBuild;

    public MapMode(ProvinceDraw.DrawProvinces drawProvinces, ProvinceHover.ProvinceHoverBuild provinceHoverBuild) {
        this.drawProvinces = drawProvinces;
        this.provinceHoverBuild = provinceHoverBuild;
    }

    public void disableViewAction() {
    }

    public void enableViewAction() {
    }

    public void playSFX_ProvinceClick() {
        Game.soundsManager.playSound(SoundsManager.SOUND_PROVINCE, SoundsManager.PERC_VOLUME_SELECT_PROVINCE);
    }
}
