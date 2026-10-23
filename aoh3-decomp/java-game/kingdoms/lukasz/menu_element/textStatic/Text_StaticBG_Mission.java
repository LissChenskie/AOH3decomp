package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Title;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_Mission extends Text_StaticBG_ID {
    public int eventType;
    public int missionImage;

    public Text_StaticBG_Mission(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        super(str, i, i2, i3, i4, i5, EventsManager.missionImages.get(i8).getHeight(), i7);
        this.eventType = i6;
        this.missionImage = i8;
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
        arrayList2.add(new MenuElement_HoverElement_Type_Title(Images.missions, "", getText(), Colors.HOVER_GOLD, Game.lang.get(kfGnwGN.blrtZfK), "", Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (EventsManager.getActiveEvent(this.id, this.eventType).mission_desc.length() > 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get(EventsManager.getActiveEvent(this.id, this.eventType).mission_desc), CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT2));
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
                int size = EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.size();
                str = "and";
                String str11 = "orNot";
                str2 = "or";
                str3 = nEtnPpUF.NYtVW;
                if (i >= size) {
                    break;
                }
                int i2 = 0;
                while (true) {
                    str8 = str11;
                    if (i2 >= EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAnd.size()) {
                        break;
                    }
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAnd.get(i2).getText().length() > 0) {
                        if (z) {
                            z = false;
                        }
                        boolean z2 = z;
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAnd.get(i2).getText(), CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAnd.get(i2).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAnd.get(i2).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAnd.get(i2).getImage() > 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAnd.get(i2).getImage(), CFG.PADDING, 0));
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
                for (int i3 = 0; i3 < EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOr.size(); i3++) {
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOr.get(i3).getText().length() > 0) {
                        if (z) {
                            z = false;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOr.get(i3).getText(), CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOr.get(i3).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOr.get(i3).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOr.get(i3).getImage() > 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOr.get(i3).getImage(), CFG.PADDING, 0));
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get("or") + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                }
                int i4 = 0;
                while (i4 < EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAndNot.size()) {
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAndNot.get(i4).getText().length() > 0) {
                        if (z) {
                            z = false;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAndNot.get(i4).getText(), CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAndNot.get(i4).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAndNot.get(i4).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAndNot.get(i4).getImage() > 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersAndNot.get(i4).getImage(), CFG.PADDING, 0));
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
                while (i5 < EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOrNot.size()) {
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOrNot.get(i5).getText().length() > 0) {
                        if (z) {
                            z = false;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOrNot.get(i5).getText(), CFG.FONT_REGULAR_SMALL));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOrNot.get(i5).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOrNot.get(i5).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOrNot.get(i5).getImage() > 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersAnd.get(i).triggersOrNot.get(i5).getImage(), CFG.PADDING, 0));
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
        while (i6 < EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.size()) {
            boolean z4 = z3;
            int i7 = 0;
            while (true) {
                str6 = str13;
                if (i7 >= EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAnd.size()) {
                    break;
                }
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAnd.get(i7).getText().length() > 0) {
                    if (z4) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str3), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z4 = false;
                    }
                    boolean z5 = z4;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAnd.get(i7).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAnd.get(i7).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAnd.get(i7).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAnd.get(i7).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAnd.get(i7).getImage(), CFG.PADDING, 0));
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
            while (i8 < EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOr.size()) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOr.get(i8).getText().length() > 0) {
                    if (z4) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str3), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z4 = false;
                    }
                    boolean z6 = z4;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOr.get(i8).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOr.get(i8).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOr.get(i8).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOr.get(i8).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOr.get(i8).getImage(), CFG.PADDING, 0));
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
            for (int i9 = 0; i9 < EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAndNot.size(); i9++) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAndNot.get(i9).getText().length() > 0) {
                    if (z4) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str3), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z4 = false;
                    }
                    boolean z7 = z4;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAndNot.get(i9).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAndNot.get(i9).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAndNot.get(i9).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAndNot.get(i9).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersAndNot.get(i9).getImage(), CFG.PADDING, 0));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str3) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z4 = z7;
                }
            }
            z3 = z4;
            for (int i10 = 0; i10 < EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOrNot.size(); i10++) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOrNot.get(i10).getText().length() > 0) {
                    if (z3) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str3), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z3 = false;
                    }
                    boolean z8 = z3;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOrNot.get(i10).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOrNot.get(i10).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOrNot.get(i10).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOrNot.get(i10).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersAndNot.get(i6).triggersOrNot.get(i10).getImage(), CFG.PADDING, 0));
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
        while (i11 < EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.size()) {
            boolean z10 = z9;
            for (int i12 = 0; i12 < EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAnd.size(); i12++) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAnd.get(i12).getText().length() > 0) {
                    if (z10) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str2), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z10 = false;
                    }
                    boolean z11 = z10;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAnd.get(i12).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAnd.get(i12).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAnd.get(i12).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAnd.get(i12).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAnd.get(i12).getImage(), CFG.PADDING, 0));
                    }
                    String str19 = str18;
                    str18 = str19;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str19) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z10 = z11;
                }
            }
            for (int i13 = 0; i13 < EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOr.size(); i13++) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOr.get(i13).getText().length() > 0) {
                    if (z10) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str2), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z10 = false;
                    }
                    boolean z12 = z10;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOr.get(i13).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOr.get(i13).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOr.get(i13).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOr.get(i13).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOr.get(i13).getImage(), CFG.PADDING, 0));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str2) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z10 = z12;
                }
            }
            for (int i14 = 0; i14 < EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAndNot.size(); i14++) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAndNot.get(i14).getText().length() > 0) {
                    if (z10) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str2), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z10 = false;
                    }
                    boolean z13 = z10;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAndNot.get(i14).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAndNot.get(i14).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAndNot.get(i14).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAndNot.get(i14).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersAndNot.get(i14).getImage(), CFG.PADDING, 0));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str3) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    z10 = z13;
                }
            }
            z9 = z10;
            int i15 = 0;
            while (i15 < EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOrNot.size()) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOrNot.get(i15).getText().length() > 0) {
                    if (z9) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str2), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z9 = false;
                    }
                    boolean z14 = z9;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOrNot.get(i15).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOrNot.get(i15).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOrNot.get(i15).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOrNot.get(i15).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersOr.get(i11).triggersOrNot.get(i15).getImage(), CFG.PADDING, 0));
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
        while (i16 < EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.size()) {
            for (int i17 = 0; i17 < EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAnd.size(); i17++) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAnd.get(i17).getText().length() > 0) {
                    if (z15) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str20), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z15 = false;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAnd.get(i17).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAnd.get(i17).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAnd.get(i17).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAnd.get(i17).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAnd.get(i17).getImage(), CFG.PADDING, 0));
                    }
                    String str22 = str18;
                    str18 = str22;
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str22) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            for (int i18 = 0; i18 < EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOr.size(); i18++) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOr.get(i18).getText().length() > 0) {
                    if (z15) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str20), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z15 = false;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOr.get(i18).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOr.get(i18).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOr.get(i18).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOr.get(i18).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOr.get(i18).getImage(), CFG.PADDING, 0));
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(" (" + Game.lang.get(str2) + ")", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            int i19 = 0;
            while (i19 < EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAndNot.size()) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAndNot.get(i19).getText().length() > 0) {
                    if (z15) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str20), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z15 = false;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAndNot.get(i19).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAndNot.get(i19).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAndNot.get(i19).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAndNot.get(i19).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersAndNot.get(i19).getImage(), CFG.PADDING, 0));
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
            for (int i20 = 0; i20 < EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOrNot.size(); i20++) {
                if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOrNot.get(i20).getText().length() > 0) {
                    if (z15) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get(str20), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                        z15 = false;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("- " + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOrNot.get(i20).getText(), CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOrNot.get(i20).getText2(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOrNot.get(i20).getText3(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    if (EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOrNot.get(i20).getImage() > 0) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Image(EventsManager.getActiveEvent(this.id, this.eventType).triggersOrNot.get(i16).triggersOrNot.get(i20).getImage(), CFG.PADDING, 0));
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

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        drawBG(spriteBatch, i, i2, z, z2);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 0.65f : 0.35f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
        try {
            spriteBatch.setColor(Color.WHITE);
            EventsManager.missionImages.get(this.missionImage).draw(spriteBatch, ((getPosX() + getWidth()) - EventsManager.missionImages.get(this.missionImage).getWidth()) + i, getPosY() + i2);
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.85f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, getPosY() + ((getHeight() - CFG.TEXT_HEIGHT) / 2) + i2, getColor(z));
    }

    public void drawBG(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        return Colors.getColorTopStats4(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getValue1() {
        return this.eventType;
    }
}
