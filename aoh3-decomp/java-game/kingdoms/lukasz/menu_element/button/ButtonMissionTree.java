package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Title;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonMissionTree extends Button {
    public int iImageID;
    public int iMissionID;
    public boolean missionCanBeUnlocked;
    public boolean missionUnlocked;

    public ButtonMissionTree(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        init(i, i2, i3, i4);
        this.missionUnlocked = z;
        this.missionCanBeUnlocked = z2;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        if (MissionTree.canRunMission(Game.player.iCivID, this.iMissionID)) {
            InGame_Info.iCivID = Game.player.iCivID;
            InGame_Info.iCivID2 = 0;
            Game.menuManager.rebuildInGame_Info(MissionTree.lMissions.get(this.iMissionID).Name, Game.lang.get("Mission"));
            InGame_Info.imgID = Images.infoCrown;
            Game.menuManager.setVisibleInGame_MissionTree(false);
            EventsManager.updateRandomProvinceID(Game.player.iCivID);
            MissionTree.runMission(Game.player.iCivID, this.iMissionID);
            return;
        }
        if (!MissionTree.canRunMission_PreviousMissions(Game.player.iCivID, this.iMissionID)) {
            Game.menuManager.addToast_Error(Game.lang.get("CompleteThePreviousMissionFirst"), Images.missions);
        } else if (MissionTree.haveUnlockedMission(Game.player.iCivID, this.iMissionID)) {
            Game.menuManager.addToast_Error(Game.lang.get("AlreadyUnlocked"), Images.missions);
        } else {
            Game.menuManager.addToast_Error(Game.lang.get("RequirementsNotMet"), Images.missions);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Title(Images.missions, "", MissionTree.lMissions.get(this.iMissionID).Name, Colors.HOVER_GOLD, Game.lang.get("Mission") + (this.missionUnlocked ? ": " + Game.lang.get("Completed") : ""), "", Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (MissionTree.lMissions.get(this.iMissionID).event.desc.length() > 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get(MissionTree.lMissions.get(this.iMissionID).event.desc), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        int i = 0;
        boolean z = true;
        while (true) {
            try {
                str = "and";
                String str11 = "orNot";
                str2 = "or";
                str3 = "andNot";
                if (i >= MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.size()) {
                    break;
                }
                int i2 = 0;
                while (true) {
                    str8 = str11;
                    if (i2 >= MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAnd.size()) {
                        break;
                    }
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAnd.get(i2).getText().length() > 0) {
                        if (z) {
                            z = false;
                        }
                        boolean z2 = z;
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAnd.get(i2).getText(), CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAnd.get(i2).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAnd.get(i2).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        if (MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAnd.get(i2).getImage() > 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAnd.get(i2).getImage(), CFG.PADDING, 0));
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get("and") + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z = z2;
                    }
                    i2++;
                    str11 = str8;
                    str3 = str3;
                }
                String str12 = str3;
                for (int i3 = 0; i3 < MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOr.size(); i3++) {
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOr.get(i3).getText().length() > 0) {
                        if (z) {
                            z = false;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOr.get(i3).getText(), CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOr.get(i3).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOr.get(i3).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        if (MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOr.get(i3).getImage() > 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOr.get(i3).getImage(), CFG.PADDING, 0));
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get("or") + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                }
                int i4 = 0;
                while (i4 < MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAndNot.size()) {
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAndNot.get(i4).getText().length() > 0) {
                        if (z) {
                            z = false;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAndNot.get(i4).getText(), CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAndNot.get(i4).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAndNot.get(i4).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        if (MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAndNot.get(i4).getImage() > 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersAndNot.get(i4).getImage(), CFG.PADDING, 0));
                        }
                        str10 = str12;
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str10) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else {
                        str10 = str12;
                    }
                    i4++;
                    str12 = str10;
                }
                int i5 = 0;
                while (i5 < MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOrNot.size()) {
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOrNot.get(i5).getText().length() > 0) {
                        if (z) {
                            z = false;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOrNot.get(i5).getText(), CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOrNot.get(i5).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOrNot.get(i5).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        if (MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOrNot.get(i5).getImage() > 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersAnd.get(i).triggersOrNot.get(i5).getImage(), CFG.PADDING, 0));
                        }
                        str9 = str8;
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str9) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    } else {
                        str9 = str8;
                    }
                    i5++;
                    str8 = str9;
                }
                i++;
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        String str13 = "orNot";
        int i6 = 0;
        boolean z3 = true;
        while (i6 < MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.size()) {
            boolean z4 = z3;
            int i7 = 0;
            while (true) {
                str6 = str13;
                if (i7 >= MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAnd.size()) {
                    break;
                }
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAnd.get(i7).getText().length() > 0) {
                    if (z4) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get("andNot"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z4 = false;
                    }
                    boolean z5 = z4;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAnd.get(i7).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAnd.get(i7).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAnd.get(i7).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAnd.get(i7).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAnd.get(i7).getImage(), CFG.PADDING, 0));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z4 = z5;
                } else {
                    str2 = str2;
                }
                i7++;
                str13 = str6;
                str2 = str2;
            }
            String str14 = str2;
            int i8 = 0;
            while (i8 < MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOr.size()) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOr.get(i8).getText().length() > 0) {
                    if (z4) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get("andNot"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z4 = false;
                    }
                    boolean z6 = z4;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOr.get(i8).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOr.get(i8).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOr.get(i8).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOr.get(i8).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOr.get(i8).getImage(), CFG.PADDING, 0));
                    }
                    str7 = str14;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str7) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z4 = z6;
                } else {
                    str7 = str14;
                }
                i8++;
                str = str;
                str14 = str7;
            }
            str2 = str14;
            String str15 = str;
            for (int i9 = 0; i9 < MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAndNot.size(); i9++) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAndNot.get(i9).getText().length() > 0) {
                    if (z4) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get("andNot"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z4 = false;
                    }
                    boolean z7 = z4;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAndNot.get(i9).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAndNot.get(i9).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAndNot.get(i9).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAndNot.get(i9).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersAndNot.get(i9).getImage(), CFG.PADDING, 0));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get("andNot") + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z4 = z7;
                }
            }
            z3 = z4;
            for (int i10 = 0; i10 < MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOrNot.size(); i10++) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOrNot.get(i10).getText().length() > 0) {
                    if (z3) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get("andNot"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z3 = false;
                    }
                    boolean z8 = z3;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOrNot.get(i10).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOrNot.get(i10).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOrNot.get(i10).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOrNot.get(i10).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersAndNot.get(i6).triggersOrNot.get(i10).getImage(), CFG.PADDING, 0));
                    }
                    String str16 = str6;
                    str6 = str16;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str16) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z3 = z8;
                }
            }
            i6++;
            str13 = str6;
            str = str15;
        }
        String str17 = str13;
        String str18 = str;
        int i11 = 0;
        boolean z9 = true;
        while (i11 < MissionTree.lMissions.get(this.iMissionID).event.triggersOr.size()) {
            boolean z10 = z9;
            for (int i12 = 0; i12 < MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAnd.size(); i12++) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAnd.get(i12).getText().length() > 0) {
                    if (z10) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str2), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z10 = false;
                    }
                    boolean z11 = z10;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAnd.get(i12).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAnd.get(i12).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAnd.get(i12).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAnd.get(i12).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAnd.get(i12).getImage(), CFG.PADDING, 0));
                    }
                    String str19 = str18;
                    str18 = str19;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str19) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z10 = z11;
                }
            }
            for (int i13 = 0; i13 < MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOr.size(); i13++) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOr.get(i13).getText().length() > 0) {
                    if (z10) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str2), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z10 = false;
                    }
                    boolean z12 = z10;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOr.get(i13).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOr.get(i13).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOr.get(i13).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOr.get(i13).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOr.get(i13).getImage(), CFG.PADDING, 0));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str2) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z10 = z12;
                }
            }
            for (int i14 = 0; i14 < MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAndNot.size(); i14++) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAndNot.get(i14).getText().length() > 0) {
                    if (z10) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str2), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z10 = false;
                    }
                    boolean z13 = z10;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAndNot.get(i14).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAndNot.get(i14).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAndNot.get(i14).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAndNot.get(i14).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersAndNot.get(i14).getImage(), CFG.PADDING, 0));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str3) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z10 = z13;
                }
            }
            z9 = z10;
            int i15 = 0;
            while (i15 < MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOrNot.size()) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOrNot.get(i15).getText().length() > 0) {
                    if (z9) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str2), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z9 = false;
                    }
                    boolean z14 = z9;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOrNot.get(i15).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOrNot.get(i15).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOrNot.get(i15).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOrNot.get(i15).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersOr.get(i11).triggersOrNot.get(i15).getImage(), CFG.PADDING, 0));
                    }
                    str5 = str17;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str5) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z9 = z14;
                } else {
                    str5 = str17;
                }
                i15++;
                str3 = str3;
                str17 = str5;
            }
            i11++;
            str17 = str17;
        }
        String str20 = str17;
        String str21 = str3;
        int i16 = 0;
        boolean z15 = true;
        while (i16 < MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.size()) {
            for (int i17 = 0; i17 < MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAnd.size(); i17++) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAnd.get(i17).getText().length() > 0) {
                    if (z15) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str20), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z15 = false;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAnd.get(i17).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAnd.get(i17).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAnd.get(i17).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAnd.get(i17).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAnd.get(i17).getImage(), CFG.PADDING, 0));
                    }
                    String str22 = str18;
                    str18 = str22;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str22) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            for (int i18 = 0; i18 < MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOr.size(); i18++) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOr.get(i18).getText().length() > 0) {
                    if (z15) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str20), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z15 = false;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOr.get(i18).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOr.get(i18).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOr.get(i18).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOr.get(i18).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOr.get(i18).getImage(), CFG.PADDING, 0));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str2) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            int i19 = 0;
            while (i19 < MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAndNot.size()) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAndNot.get(i19).getText().length() > 0) {
                    if (z15) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str20), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z15 = false;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAndNot.get(i19).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAndNot.get(i19).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAndNot.get(i19).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAndNot.get(i19).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersAndNot.get(i19).getImage(), CFG.PADDING, 0));
                    }
                    String str23 = str21;
                    str4 = str23;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str23) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                } else {
                    str4 = str21;
                }
                i19++;
                str21 = str4;
            }
            String str24 = str21;
            for (int i20 = 0; i20 < MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOrNot.size(); i20++) {
                if (MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOrNot.get(i20).getText().length() > 0) {
                    if (z15) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str20), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z15 = false;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOrNot.get(i20).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOrNot.get(i20).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOrNot.get(i20).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOrNot.get(i20).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(MissionTree.lMissions.get(this.iMissionID).event.triggersOrNot.get(i16).triggersOrNot.get(i20).getImage(), CFG.PADDING, 0));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str20) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            i16++;
            str21 = str24;
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setShader(Renderer.shaderAlpha);
        MissionTree.missionImages.get(this.iImageID).getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.missionMask).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        int textHeight = (CFG.PADDING * 4) + getTextHeight();
        if (this.missionUnlocked) {
            spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG_GREEN.r, Colors.COLOR_NOTIFICATION_BG_GREEN.g, Colors.COLOR_NOTIFICATION_BG_GREEN.b, 0.7f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + i2, getWidth(), textHeight);
            spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER_GREEN.r, Colors.COLOR_NOTIFICATION_OVER_GREEN.g, Colors.COLOR_NOTIFICATION_OVER_GREEN.b, 0.5f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + i2, getWidth(), textHeight, false, false);
            spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_OVER_GREEN.r, Colors.COLOR_NOTIFICATION_OVER_GREEN.g, Colors.COLOR_NOTIFICATION_OVER_GREEN.b, 0.55f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + i2, getWidth(), textHeight, false, false);
            Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + i2, getWidth(), CFG.PADDING, false, false);
            Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - CFG.PADDING) + i2, getWidth(), CFG.PADDING, false, true);
            spriteBatch.setColor(new Color(Colors.COLOR_NOTIFICATION_BG_GREEN.r, Colors.COLOR_NOTIFICATION_BG_GREEN.g, Colors.COLOR_NOTIFICATION_BG_GREEN.b, 0.75f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + i2, getWidth(), 1);
        } else {
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.7f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + i2, getWidth(), textHeight);
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + i2, getWidth(), textHeight, false, false);
            spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.55f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + i2, getWidth(), textHeight, false, false);
            Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + i2, getWidth(), CFG.PADDING, false, false);
            Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - CFG.PADDING) + i2, getWidth(), CFG.PADDING, false, true);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.75f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + i2, getWidth(), 1);
        }
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.2f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - textHeight) + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.missionOver).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, (((getPosY() + getHeight()) - (CFG.PADDING * 2)) - getTextHeight()) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (this.missionUnlocked) {
            return Colors.getColorPositive(z, getIsHovered());
        }
        if (this.missionCanBeUnlocked) {
            return (getIsHovered() || z) ? Colors.getColorTopStats2(z, getIsHovered()) : Colors.HOVER_GOLD;
        }
        return Colors.getColorTopStats2(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iMissionID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getSFX() {
        return SoundsManager.SOUND_CLICK_TOP;
    }

    public void init(int i, int i2, int i3, int i4) {
        this.iMissionID = i;
        this.iImageID = i2;
        this.fontID = CFG.FONT_REGULAR;
        init(MissionTree.lMissions.get(i).Name, this.fontID, this.iTextPositionX, i3, i4, MissionTree.iMissionWidth, MissionTree.iMissionHeight, true, true, false, false);
        int i5 = 0;
        while (this.iTextWidth >= getWidth() - (CFG.PADDING * 2) && getText().length() > 5 && (i5 = i5 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
        }
    }

    public int titleH() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 3);
    }
}
