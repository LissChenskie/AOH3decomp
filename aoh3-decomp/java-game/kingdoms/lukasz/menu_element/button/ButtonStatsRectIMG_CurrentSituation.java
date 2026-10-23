package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRectIMG_CurrentSituation extends Button {
    protected static int animationState;
    protected static long lTimeAnimation;
    public int iconHeight;
    public int iconWidth;
    public int maxIconWidth;

    public ButtonStatsRectIMG_CurrentSituation(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.maxIconWidth = i6;
        float imageScale = getImageScale(Images.currentSituation) * 1.3f;
        this.iconWidth = (int) (ImageManager.getImage(Images.currentSituation).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(Images.currentSituation).getHeight() * imageScale);
    }

    public static final float getBoxAlpha(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return 0.2f;
        }
        if (z3) {
            return 0.85f;
        }
        return z2 ? 0.7f : 0.5f;
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CurrentSituation"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.currentSituation, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Messages") + ": ", "" + Game.player.currSituation.currentSituationNum, Images.currentSituation, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.player.currSituation.currentSituationNum > 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.player.currSituation.noActiveResearch) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NoActiveResearch"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.maxAmountOfGold) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumAmountOfGold") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fGold, 1) + " / " + CFG.getPrecision2(Game.getMaxAmountOfGold(Game.player.iCivID), 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.missionCanBeUnlocked) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Missions") + ": " + Game.lang.get("Available"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.missions, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.chooseRivals) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ChooseYourRivals"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rivals, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.availableAdvantage) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdvantagePoints") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).getAdvantagePoints(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.advantages, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.newLawAvailable) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Law") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get("Unlocked"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.law, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.highInflation) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("HighInflation") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getInflation() * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.inflation, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.nonCoreProvinces) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NonCoreProvince"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.core, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.differentReligionProvinces) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DifferentReligion"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.religion, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.availableCivilizationLegacy) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AvailableCivilizationLegacy"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.noAdvisor > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NoAdvisor"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skill, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.promoteAdvisor > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PromoteAdvisor"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skill, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.lackOfGeneral) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LackOfGeneral"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.upgradeCapitalCity) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UpgradeCapitalCity"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.capital, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.upgradeSupremeCourt) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UpgradeSupremeCourt"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.stability, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.militaryAcademyCanBeUpgraded) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UpgradeMilitaryAcademy"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.militaryAcademyForGeneralsCanBeUpgraded) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UpgradeMilitaryAcademyForGenerals"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.upgradeNuclearReactor) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UpgradeNuclearReactor"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.nuke, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.wonderCanBeBuilt) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AWonderCanBeBuilt"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.mapModesWonders, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        if (CFG.isDesktop()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Shortcut") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("T", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.currentSituation, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        int posX = getPosX() + i;
        int posY = getPosY() + i2;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 0.5f : 0.2f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, posX, posY, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.65f));
        Images.gradientFull.draw(spriteBatch, posX, posY, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, posX, posY, getWidth(), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, posX, posY, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, posX, (getHeight() + posY) - (CFG.PADDING * 2), getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, posX, posY, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, posX, (getHeight() + posY) - 1, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, posX, posY, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.85f));
        Images.gradientFull.draw(spriteBatch, posX, (getHeight() + posY) - 2, getWidth(), 1);
        int i4 = posY + 1;
        Images.gradientFull.draw(spriteBatch, posX, i4, getWidth(), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, posX, (getHeight() + posY) - 1, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, posX, posY, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, posX, (getHeight() + posY) - 2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, posX, i4, getWidth(), 1);
        if (getClickable() && getIsHovered() && (i3 = animationState) >= 0) {
            if (i3 == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, posX + CFG.PADDING, i4, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                Images.line_32_off1.draw(spriteBatch, posX + CFG.PADDING, (posY + getHeight()) - 2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + CFG.PADDING + posX, i4, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                Images.line_32_off1.draw(spriteBatch, posX + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), (posY + getHeight()) - 2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = ImageManager.getImage(Images.currentSituation);
        int posX = (((getPosX() + CFG.PADDING) + (this.maxIconWidth / 2)) - (this.iconWidth / 2)) + i;
        int posY = getPosY();
        int height = getHeight();
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, posY + ((height - i3) / 2) + i2, this.iconWidth, i3);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((((getPosX() + (CFG.PADDING * 2)) + this.maxIconWidth) + ((getWidth() - ((CFG.PADDING * 2) + this.maxIconWidth)) / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (this.iCurrent != Game.player.currSituation.currentSituationNum) {
            setText("" + Game.player.currSituation.currentSituationNum);
            this.iCurrent = Game.player.currSituation.currentSituationNum;
        }
        return super.getTextToDraw();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }
}
