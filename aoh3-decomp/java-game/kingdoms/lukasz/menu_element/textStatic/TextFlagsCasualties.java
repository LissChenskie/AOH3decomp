package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_BattleArmy;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menusInGame.Battle.InGame_Battle;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextFlagsCasualties extends Button {
    public boolean defenders;
    public int iCasualtiesHeight;
    public int iCasualtiesWidth;
    public int iconHeight;
    public int iconHeight2;
    public int iconHeight3;
    public int iconWidth;
    public int iconWidth2;
    public int iconWidth3;
    public String sCasualties;
    public String sLeft;
    private List<BattleStatsRegiments> tRegiments = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menu_element.textStatic.TextFlagsCasualties$1, reason: invalid class name */
    class AnonymousClass1 extends MenuElement_Hover {
        AnonymousClass1(List list) {
            super(list);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover, aoc.kingdoms.lukasz.menu.Hover
        public void draw(SpriteBatch spriteBatch, int i, int i2) {
            super.draw(spriteBatch, i, (InGame_Battle.HOVER_POSY + ((CFG.GAME_HEIGHT - InGame_Battle.HOVER_POSY) / 2)) - (this.iHeight / 2));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover
        public int getMinPosX() {
            return InGame_Battle.HOVER_POSX;
        }
    }

    public static class BattleStatsRegiments {
        public int armyID;
        public int numOfUnits;
        public int unitTypeID;

        public BattleStatsRegiments(int i, int i2, int i3) {
            this.unitTypeID = i;
            this.armyID = i2;
            this.numOfUnits = i3;
        }
    }

    public TextFlagsCasualties(String str, String str2, String str3, int i, int i2, int i3, int i4, boolean z) {
        init(str, CFG.FONT_REGULAR_SMALL, -1, i, i2, i3, i4, true, true, false, false);
        this.defenders = z;
        this.sLeft = str2;
        this.sCasualties = str3;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str3);
        this.iCasualtiesWidth = (int) Renderer.glyphLayout.width;
        this.iCasualtiesHeight = (int) Renderer.glyphLayout.height;
        float imageScale = getImageScale(Images.skull);
        this.iconWidth = (int) (ImageManager.getImage(Images.skull).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(Images.skull).getHeight() * imageScale);
        float imageScale2 = getImageScale(Images.retreat);
        this.iconWidth3 = (int) (ImageManager.getImage(Images.retreat).getWidth() * imageScale2);
        this.iconHeight3 = (int) (ImageManager.getImage(Images.retreat).getHeight() * imageScale2);
        float imageScale3 = getImageScale(Game_Calendar.IMG_MANPOWER);
        this.iconWidth2 = (int) (ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getWidth() * imageScale3);
        this.iconHeight2 = (int) (ImageManager.getImage(Game_Calendar.IMG_MANPOWER).getHeight() * imageScale3);
    }

    private final float getImageScale() {
        return CFG.TEXT_HEIGHT / CFG.CIV_FLAG_HEIGHT;
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    public void addRegiment(int i, int i2, int i3) {
        int size = this.tRegiments.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (this.tRegiments.get(i4).unitTypeID == i && this.tRegiments.get(i4).armyID == i2) {
                this.tRegiments.get(i4).numOfUnits += i3;
                return;
            }
        }
        this.tRegiments.add(new BattleStatsRegiments(i, i2, i3));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NumberOfUnitsOnTheBattlefield") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (InGame_Battle.battleID >= 0) {
            this.tRegiments.clear();
            if (this.defenders) {
                int size = Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.size();
                for (int i = 0; i < size; i++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i) != null) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i).aR.num);
                    }
                }
                int size2 = Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i2) != null) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i2).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i2).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i2).aR.num);
                    }
                }
            } else {
                int size3 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i3) != null) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i3).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i3).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i3).aR.num);
                    }
                }
                int size4 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.size();
                for (int i4 = 0; i4 < size4; i4++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i4) != null) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i4).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i4).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i4).aR.num);
                    }
                }
            }
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            int size5 = this.tRegiments.size();
            for (int i5 = 0; i5 < size5; i5++) {
                arrayList4.add(Integer.valueOf(i5));
            }
            while (arrayList4.size() > 0) {
                int size6 = arrayList4.size();
                int i6 = 0;
                for (int i7 = 1; i7 < size6; i7++) {
                    if (this.tRegiments.get(((Integer) arrayList4.get(i6)).intValue()).unitTypeID > this.tRegiments.get(((Integer) arrayList4.get(i7)).intValue()).unitTypeID || (this.tRegiments.get(((Integer) arrayList4.get(i6)).intValue()).unitTypeID == this.tRegiments.get(((Integer) arrayList4.get(i7)).intValue()).unitTypeID && this.tRegiments.get(((Integer) arrayList4.get(i6)).intValue()).armyID > this.tRegiments.get(((Integer) arrayList4.get(i7)).intValue()).armyID)) {
                        i6 = i7;
                    }
                }
                arrayList3.add((Integer) arrayList4.get(i6));
                arrayList4.remove(i6);
            }
            for (int i8 = 0; i8 < 3; i8++) {
                int size7 = this.tRegiments.size();
                int i9 = 0;
                while (i9 < size7) {
                    if (ArmyManager.lUnitsTypes.get(this.tRegiments.get(((Integer) arrayList3.get(i9)).intValue()).unitTypeID).Line == i8) {
                        arrayList2.add(new MenuElement_HoverElement_Type_BattleArmy("" + this.tRegiments.get(((Integer) arrayList3.get(i9)).intValue()).numOfUnits, this.tRegiments.get(((Integer) arrayList3.get(i9)).intValue()).unitTypeID, this.tRegiments.get(((Integer) arrayList3.get(i9)).intValue()).armyID, i9 > 0 ? CFG.PADDING : 0));
                    }
                    i9++;
                }
            }
            if (arrayList2.size() > 0) {
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        if (this.defenders) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Casualties") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.iCasualties), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skull, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Casualties") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.iCasualties), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skull, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (InGame_Battle.battleID >= 0) {
            this.tRegiments.clear();
            if (this.defenders) {
                int size8 = Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.size();
                for (int i10 = 0; i10 < size8; i10++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i10) != null && Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i10).ca > 0) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i10).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i10).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i10).ca);
                    }
                }
                int size9 = Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.size();
                for (int i11 = 0; i11 < size9; i11++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i11) != null && Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i11).ca > 0) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i11).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i11).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i11).ca);
                    }
                }
                int size10 = Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.defeated.size();
                for (int i12 = 0; i12 < size10; i12++) {
                    addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.defeated.get(i12).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.defeated.get(i12).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.defeated.get(i12).ca);
                }
            } else {
                int size11 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.size();
                for (int i13 = 0; i13 < size11; i13++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i13) != null && Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i13).ca > 0) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i13).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i13).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i13).ca);
                    }
                }
                int size12 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.size();
                for (int i14 = 0; i14 < size12; i14++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i14) != null && Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i14).ca > 0) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i14).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i14).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i14).ca);
                    }
                }
                int size13 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.size();
                for (int i15 = 0; i15 < size13; i15++) {
                    addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.get(i15).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.get(i15).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.get(i15).ca);
                }
            }
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            int size14 = this.tRegiments.size();
            for (int i16 = 0; i16 < size14; i16++) {
                arrayList6.add(Integer.valueOf(i16));
            }
            while (arrayList6.size() > 0) {
                int size15 = arrayList6.size();
                int i17 = 0;
                for (int i18 = 1; i18 < size15; i18++) {
                    if (this.tRegiments.get(((Integer) arrayList6.get(i17)).intValue()).unitTypeID > this.tRegiments.get(((Integer) arrayList6.get(i18)).intValue()).unitTypeID || (this.tRegiments.get(((Integer) arrayList6.get(i17)).intValue()).unitTypeID == this.tRegiments.get(((Integer) arrayList6.get(i18)).intValue()).unitTypeID && this.tRegiments.get(((Integer) arrayList6.get(i17)).intValue()).armyID > this.tRegiments.get(((Integer) arrayList6.get(i18)).intValue()).armyID)) {
                        i17 = i18;
                    }
                }
                arrayList5.add((Integer) arrayList6.get(i17));
                arrayList6.remove(i17);
            }
            for (int i19 = 0; i19 < 3; i19++) {
                int size16 = this.tRegiments.size();
                int i20 = 0;
                while (i20 < size16) {
                    if (ArmyManager.lUnitsTypes.get(this.tRegiments.get(((Integer) arrayList5.get(i20)).intValue()).unitTypeID).Line == i19) {
                        arrayList2.add(new MenuElement_HoverElement_Type_BattleArmy("" + this.tRegiments.get(((Integer) arrayList5.get(i20)).intValue()).numOfUnits, this.tRegiments.get(((Integer) arrayList5.get(i20)).intValue()).unitTypeID, this.tRegiments.get(((Integer) arrayList5.get(i20)).intValue()).armyID, i20 > 0 ? CFG.PADDING : 0));
                    }
                    i20++;
                }
            }
            if (arrayList2.size() > 0) {
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        if (this.defenders) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Retreated") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.iRetreated), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.retreat, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Retreated") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.iRetreated), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.retreat, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (InGame_Battle.battleID >= 0) {
            this.tRegiments.clear();
            if (this.defenders) {
                int size17 = Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.size();
                for (int i21 = 0; i21 < size17; i21++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i21) != null && Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i21).re > 0) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i21).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i21).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.firstLine.get(i21).re);
                    }
                }
                int size18 = Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.size();
                for (int i22 = 0; i22 < size18; i22++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i22) != null && Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i22).re > 0) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i22).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i22).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.secondLine.get(i22).re);
                    }
                }
                int size19 = Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.defeated.size();
                for (int i23 = 0; i23 < size19; i23++) {
                    addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.defeated.get(i23).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.defeated.get(i23).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.defeated.get(i23).re);
                }
            } else {
                int size20 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.size();
                for (int i24 = 0; i24 < size20; i24++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i24) != null && Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i24).re > 0) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i24).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i24).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.firstLine.get(i24).re);
                    }
                }
                int size21 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.size();
                for (int i25 = 0; i25 < size21; i25++) {
                    if (Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i25) != null && Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i25).re > 0) {
                        addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i25).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i25).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.secondLine.get(i25).re);
                    }
                }
                int size22 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.size();
                for (int i26 = 0; i26 < size22; i26++) {
                    addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.get(i26).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.get(i26).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.defeated.get(i26).re);
                }
            }
            ArrayList arrayList7 = new ArrayList();
            ArrayList arrayList8 = new ArrayList();
            int size23 = this.tRegiments.size();
            for (int i27 = 0; i27 < size23; i27++) {
                arrayList8.add(Integer.valueOf(i27));
            }
            while (arrayList8.size() > 0) {
                int size24 = arrayList8.size();
                int i28 = 0;
                for (int i29 = 1; i29 < size24; i29++) {
                    if (this.tRegiments.get(((Integer) arrayList8.get(i28)).intValue()).unitTypeID > this.tRegiments.get(((Integer) arrayList8.get(i29)).intValue()).unitTypeID || (this.tRegiments.get(((Integer) arrayList8.get(i28)).intValue()).unitTypeID == this.tRegiments.get(((Integer) arrayList8.get(i29)).intValue()).unitTypeID && this.tRegiments.get(((Integer) arrayList8.get(i28)).intValue()).armyID > this.tRegiments.get(((Integer) arrayList8.get(i29)).intValue()).armyID)) {
                        i28 = i29;
                    }
                }
                arrayList7.add((Integer) arrayList8.get(i28));
                arrayList8.remove(i28);
            }
            for (int i30 = 0; i30 < 3; i30++) {
                int size25 = this.tRegiments.size();
                int i31 = 0;
                while (i31 < size25) {
                    if (ArmyManager.lUnitsTypes.get(this.tRegiments.get(((Integer) arrayList7.get(i31)).intValue()).unitTypeID).Line == i30) {
                        arrayList2.add(new MenuElement_HoverElement_Type_BattleArmy("" + this.tRegiments.get(((Integer) arrayList7.get(i31)).intValue()).numOfUnits, this.tRegiments.get(((Integer) arrayList7.get(i31)).intValue()).unitTypeID, this.tRegiments.get(((Integer) arrayList7.get(i31)).intValue()).armyID, i31 > 0 ? CFG.PADDING : 0));
                    }
                    i31++;
                }
            }
            if (arrayList2.size() > 0) {
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UnitsInReserve") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + this.sLeft, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (InGame_Battle.battleID >= 0) {
            this.tRegiments.clear();
            if (this.defenders) {
                int size26 = Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.reserveFirstLine.size();
                for (int i32 = 0; i32 < size26; i32++) {
                    addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.reserveFirstLine.get(i32).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.reserveFirstLine.get(i32).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.reserveFirstLine.get(i32).aR.num);
                }
                int size27 = Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.reserveSecondLine.size();
                for (int i33 = 0; i33 < size27; i33++) {
                    addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.reserveSecondLine.get(i33).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.reserveSecondLine.get(i33).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).defendingArmy.reserveSecondLine.get(i33).aR.num);
                }
            } else {
                int size28 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveFirstLine.size();
                for (int i34 = 0; i34 < size28; i34++) {
                    addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveFirstLine.get(i34).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveFirstLine.get(i34).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveFirstLine.get(i34).aR.num);
                }
                int size29 = Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveSecondLine.size();
                for (int i35 = 0; i35 < size29; i35++) {
                    addRegiment(Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveSecondLine.get(i35).aR.uID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveSecondLine.get(i35).aR.aID, Game.battleManager.getBattle(InGame_Battle.battleID).attackingArmy.reserveSecondLine.get(i35).aR.num);
                }
            }
            ArrayList arrayList9 = new ArrayList();
            ArrayList arrayList10 = new ArrayList();
            int size30 = this.tRegiments.size();
            for (int i36 = 0; i36 < size30; i36++) {
                arrayList10.add(Integer.valueOf(i36));
            }
            while (arrayList10.size() > 0) {
                int size31 = arrayList10.size();
                int i37 = 0;
                for (int i38 = 1; i38 < size31; i38++) {
                    if (this.tRegiments.get(((Integer) arrayList10.get(i37)).intValue()).unitTypeID > this.tRegiments.get(((Integer) arrayList10.get(i38)).intValue()).unitTypeID || (this.tRegiments.get(((Integer) arrayList10.get(i37)).intValue()).unitTypeID == this.tRegiments.get(((Integer) arrayList10.get(i38)).intValue()).unitTypeID && this.tRegiments.get(((Integer) arrayList10.get(i37)).intValue()).armyID > this.tRegiments.get(((Integer) arrayList10.get(i38)).intValue()).armyID)) {
                        i37 = i38;
                    }
                }
                arrayList9.add((Integer) arrayList10.get(i37));
                arrayList10.remove(i37);
            }
            for (int i39 = 0; i39 < 3; i39++) {
                int size32 = this.tRegiments.size();
                int i40 = 0;
                while (i40 < size32) {
                    if (ArmyManager.lUnitsTypes.get(this.tRegiments.get(((Integer) arrayList9.get(i40)).intValue()).unitTypeID).Line == i39) {
                        arrayList2.add(new MenuElement_HoverElement_Type_BattleArmy("" + this.tRegiments.get(((Integer) arrayList9.get(i40)).intValue()).numOfUnits, this.tRegiments.get(((Integer) arrayList9.get(i40)).intValue()).unitTypeID, this.tRegiments.get(((Integer) arrayList9.get(i40)).intValue()).armyID, i40 > 0 ? CFG.PADDING : 0));
                    }
                    i40++;
                }
            }
            if (arrayList2.size() > 0) {
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("UnitsThatHaventBeenDeployedOnTheNattlefieldDueToTheCompleteOccupationOfAvailableSpace"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new AnonymousClass1(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        Image image = ImageManager.getImage(Images.skull);
        int posX = (((getPosX() + getWidth()) - CFG.PADDING) - this.iconWidth) + i;
        int posY = getPosY() + (getHeight() / 2);
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, (posY - (i3 / 2)) + i2, this.iconWidth, i3);
        Image image2 = ImageManager.getImage(Images.retreat);
        int posX2 = ((((getPosX() + getWidth()) - (CFG.PADDING * 2)) - this.iconWidth) - this.iconWidth3) + i;
        int posY2 = getPosY() + (getHeight() / 2);
        int i4 = this.iconHeight;
        image2.draw(spriteBatch, posX2, (posY2 - (i4 / 2)) + i2, this.iconWidth, i4);
        Image image3 = ImageManager.getImage(Game_Calendar.IMG_MANPOWER);
        int posX3 = getPosX() + CFG.PADDING + i;
        int posY3 = getPosY() + (getHeight() / 2);
        int i5 = this.iconHeight2;
        image3.draw(spriteBatch, posX3, (posY3 - (i5 / 2)) + i2, this.iconWidth2, i5);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + this.textPosition.getTextPosition() + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
        Renderer.drawText(spriteBatch, this.fontID, this.sCasualties, (((((getPosX() + getWidth()) - (CFG.PADDING * 3)) - this.iconWidth) - this.iconWidth3) - this.iCasualtiesWidth) + i, ((getPosY() + (getHeight() / 2)) - (this.iCasualtiesHeight / 2)) + i2, getColor(z));
        Renderer.drawText(spriteBatch, this.fontID, this.sLeft, getPosX() + (CFG.PADDING * 2) + this.iconWidth2 + i, ((getPosY() + (getHeight() / 2)) - (this.iCasualtiesHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorTopStatsHover(z, getIsHovered());
    }
}
