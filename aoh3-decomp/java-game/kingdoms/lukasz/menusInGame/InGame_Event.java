package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.events.Event;
import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamAchievementsManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame_Value;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Event extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int eventID;
    public static int eventType;
    public static long lTime;
    public Event event;
    public int imgHeight;
    public int imgWidth;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Event$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame_Value {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.removeActiveEvent(InGame_Event.eventType, InGame_Event.eventID);
            if (InGame_Event.eventType == 999) {
                MissionTree.takeMissionDecision(Game.player.iCivID, InGame_Event.eventID, getCurrent());
            } else if (InGame_Event.eventType == 1000) {
                MissionTree.takeMissionDecision_Civ(Game.player.iCivID, InGame_Event.eventID, getCurrent());
                Game.player.currSituation.updateCurrentSituation();
            } else {
                EventsManager.takeEventDecision(Game.player.iCivID, InGame_Event.eventType, InGame_Event.eventID, getCurrent());
                Game.player.currSituation.updateCurrentSituation();
            }
            Game.menuManager.rebuildInGame_Right();
            Game.menuManager.setVisibleInGame_Event(false);
            SteamAchievementsManager.unlockAchievement(SteamAchievementsManager.EVENT_RES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            for (int i = 0; i < InGame_Event.this.event.options.get(getCurrent()).outcome.size(); i++) {
                try {
                    if (InGame_Event.this.event.options.get(getCurrent()).outcome.get(i).getStringLeft() != null) {
                        arrayList2.add(new MenuElement_HoverElement_Type_Text(InGame_Event.this.event.options.get(getCurrent()).outcome.get(i).getStringLeft(), CFG.FONT_REGULAR_SMALL));
                        if (InGame_Event.this.event.options.get(getCurrent()).outcome.get(i).getStringRight() != null) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(InGame_Event.this.event.options.get(getCurrent()).outcome.get(i).getStringRight(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                        }
                        if (InGame_Event.this.event.options.get(getCurrent()).outcome.get(i).getImage() >= 0) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Image(InGame_Event.this.event.options.get(getCurrent()).outcome.get(i).getImage(), CFG.PADDING, InGame_Event.this.event.options.get(getCurrent()).outcome.get(i).getStringRight2(InGame_Event.this.event.options.get(getCurrent()).bonus_duration) != null ? CFG.PADDING : 0));
                        }
                        if (InGame_Event.this.event.options.get(getCurrent()).outcome.get(i).getStringRight2(InGame_Event.this.event.options.get(getCurrent()).bonus_duration) != null) {
                            arrayList2.add(new MenuElement_HoverElement_Type_Text(InGame_Event.this.event.options.get(getCurrent()).outcome.get(i).getStringRight2(InGame_Event.this.event.options.get(getCurrent()).bonus_duration), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                        }
                        arrayList.add(new MenuElement_HoverElement(arrayList2));
                        arrayList2.clear();
                    }
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            this.menuElementHover = new MenuElement_Hover(arrayList, arrayList.size() == 1);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Event$2, reason: invalid class name */
    class AnonymousClass2 extends MenuTitleIMG_DoubleText {
        AnonymousClass2(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Event.lTime;
        }
    }

    public InGame_Event(Event event, int i, int i2) {
        String resourceName;
        String precision2 = "";
        this.imgWidth = 1;
        this.imgHeight = 1;
        ArrayList arrayList = new ArrayList();
        this.event = event;
        eventType = i;
        eventID = i2;
        int i3 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title600).getHeight();
        int width = ImageManager.getImage(Images.title600).getWidth();
        int i4 = CFG.BUTTON_WIDTH;
        int i5 = Renderer.boxBGExtraY;
        int i6 = CFG.PADDING;
        int height = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2) + ImageManager.getImage(Images.title600).getHeight();
        int i7 = CFG.PADDING * 2;
        int i8 = Images.boxTitleBORDERWIDTH;
        EventsManager.loadEventIMG(this.event.image);
        try {
            float width2 = (width - (Images.boxTitleBORDERWIDTH * 2)) / EventsManager.eventIMG.getWidth();
            this.imgWidth = width - (Images.boxTitleBORDERWIDTH * 2);
            int height2 = (int) (EventsManager.eventIMG.getHeight() * width2);
            this.imgHeight = height2;
            i7 += height2;
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        int i9 = eventType;
        char c = 5;
        if (i9 == 2 || i9 == 5) {
            try {
                resourceName = ResourcesManager.getResourceName(this.event.options.get(0).outcome.get(0).getValue1());
                try {
                    precision2 = CFG.getPrecision2(this.event.options.get(0).outcome.get(0).getValue2(), 10);
                } catch (Exception e2) {
                    e = e2;
                    CFG.exceptionStack(e);
                }
            } catch (Exception e3) {
                e = e3;
                resourceName = "";
            }
            arrayList.add(new Text_Desc(Game.lang.get(this.event.desc, resourceName, precision2), i3, i7, width - (i3 * 2)));
        } else {
            arrayList.add(new Text_Desc(Game.lang.get(this.event.desc), i3, i7, width - (i3 * 2)));
        }
        int height3 = i7 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int i10 = 0;
        while (i10 < this.event.options.size()) {
            int i11 = i10;
            arrayList.add(new AnonymousClass1(Game.lang.get(this.event.options.get(i10).name), CFG.FONT_REGULAR, -1, i3, height3, width - (i3 * 2), true, i11));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i10 = i11 + 1;
            c = c;
            width = width;
        }
        int i12 = width;
        int size = arrayList.size();
        int posY = 0;
        for (int i13 = 0; i13 < size; i13++) {
            if (posY < arrayList.get(i13).getPosY() + arrayList.get(i13).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i13).getPosY() + arrayList.get(i13).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 2));
        arrayList.add(new Empty(0, 0, i12, Math.max(posY, iMin)));
        int provinceID = Game.getCiv(Game.player.iCivID).eventProvinceID;
        if (provinceID < 0 && Game.getCiv(Game.player.iCivID).getCapitalProvinceID() >= 0) {
            provinceID = Game.getCiv(Game.player.iCivID).getCapitalProvinceID();
        } else if (Game.getCiv(Game.player.iCivID).getNumOfProvinces() > 0) {
            provinceID = Game.getCiv(Game.player.iCivID).getProvinceID(Game.oR.nextInt(Game.getCiv(Game.player.iCivID).getNumOfProvinces()));
        }
        initMenu(new AnonymousClass2(Game.lang.get(this.event.title), Game.lang.get("EventInX", Game.getProvince(Math.max(0, provinceID)).getProvinceName()), true, false, Images.title600), (CFG.GAME_WIDTH / 2) - (i12 / 2), CFG.GAME_HEIGHT / 5, i12, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop600, Images.insideBot600);
        spriteBatch.setColor(Color.WHITE);
        try {
            EventsManager.eventIMG.draw(spriteBatch, getPosX() + Images.boxTitleBORDERWIDTH + i, getPosY() + i3, this.imgWidth, this.imgHeight);
            Renderer.drawBox(spriteBatch, Images.eventCorner, getPosX() + Images.boxTitleBORDERWIDTH + i, getPosY() + i3, this.imgWidth, this.imgHeight, 1.0f);
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
            ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + Images.boxTitleBORDERWIDTH + i, getPosY() + this.imgHeight + i3, this.imgWidth, CFG.PADDING * 2);
            Images.gradientXY.draw(spriteBatch, getPosX() + Images.boxTitleBORDERWIDTH + i, getPosY() + this.imgHeight + i3, this.imgWidth, CFG.PADDING * 2, false, true);
            spriteBatch.setColor(Color.WHITE);
        } catch (Exception unused) {
        }
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
