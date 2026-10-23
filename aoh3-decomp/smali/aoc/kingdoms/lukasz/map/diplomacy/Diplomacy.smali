.class public Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;
.super Ljava/lang/Object;
.source "Diplomacy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    }
.end annotation


# instance fields
.field public alliance:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field public atWar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public damagingRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;",
            ">;"
        }
    .end annotation
.end field

.field public defensivePact:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field public guarantee:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field public guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field public iAtWarSize:I

.field public iDamagingRelationsSize:I

.field public iImprovingRelationsSize:I

.field public iVassalsSize:I

.field public iWarsSize:I

.field public improvingRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;",
            ">;"
        }
    .end annotation
.end field

.field public lVassals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/diplomacy/Vassal;",
            ">;"
        }
    .end annotation
.end field

.field public lWars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field public nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field public relation:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public rivals:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field

.field public truce:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->atWar:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iAtWarSize:I

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    return-void
.end method


# virtual methods
.method public final addAlliance(II)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addAtWar(I)V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iAtWarSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->atWar:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->atWar:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->atWar:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iAtWarSize:I

    return-void
.end method

.method public final addDamageRelations(II)Z
    .locals 10

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DAMAGE_RELATIONS_MAX:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    if-ne v3, p2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DAMAGE_RELATIONS_TIME:I

    add-int/2addr v3, v4

    invoke-direct {v1, p2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeImproveRelations(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p2, v0, :cond_5

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget-boolean p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->RELATIONS_FROM_AS_NOTIFICATION:Z

    if-eqz p2, :cond_4

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_DAMAGING:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "DamagingRelations"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->relationsDown:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v3, v0

    move v9, p1

    invoke-direct/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {p2, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    goto :goto_1

    :cond_4
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageDamagingRelations;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_RELATIONS_DAYS:I

    add-int/2addr v1, v3

    invoke-direct {v0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageDamagingRelations;-><init>(II)V

    invoke-virtual {p2, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    :cond_5
    :goto_1
    return v2
.end method

.method public final addDamageRelations_Load(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addDefensivePact(II)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addGuarantee(II)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addGuaranteeByCivID(II)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addImproveRelations(II)Z
    .locals 10

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_IMPROVE_RELATIONS_MAX:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    if-ne v3, p2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_IMPROVE_RELATIONS_TIME:I

    add-int/2addr v3, v4

    invoke-direct {v1, p2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeDamageRelations(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p2, v0, :cond_6

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget-boolean p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->RELATIONS_FROM_AS_NOTIFICATION:Z

    if-eqz p2, :cond_5

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_IMPROVING:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ImprovingRelations"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->relationsUp:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v3, v0

    move v9, p1

    invoke-direct/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {p2, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    goto :goto_1

    :cond_5
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageImprovingRelations;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_RELATIONS_DAYS:I

    add-int/2addr v1, v3

    invoke-direct {v0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageImprovingRelations;-><init>(II)V

    invoke-virtual {p2, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    :cond_6
    :goto_1
    return v2

    :cond_7
    :goto_2
    return v1
.end method

.method public final addImproveRelations_Load(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addMilitaryAccess(II)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addNonAggressionPact(II)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addRival(II)Z
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->END_OF_RIVALRY_AFTER_YEARS:I

    mul-int/lit16 v1, v1, 0x16d

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->END_OF_RIVALRY_AFTER_EXTRA_DAYS_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addRival(III)Z

    move-result p1

    return p1
.end method

.method public final addRival(III)Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVALS_LIMIT:I

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-direct {v2, p0, p2, p3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVALS_OPINION_CHANGE:I

    int-to-float p3, p3

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRelation(IIF)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVALS_OPINION_CHANGE:I

    int-to-float v0, v0

    invoke-virtual {p3, p2, p1, v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRelation(IIF)V

    :cond_1
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p3, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeImproveRelations(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p3, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeImproveRelations(I)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p3, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p3, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p2, p3, :cond_2

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance p3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageRivals;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v0, v1

    invoke-direct {p3, p1, v0}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageRivals;-><init>(II)V

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final addRival_load(II)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addTruce(II)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-direct {v2, p0, p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addWar(Ljava/lang/String;I)V
    .locals 9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p2, v0, :cond_1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->AI_AT_WAR_MIN_MILITARY_LEVEL:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMilitaryLevel(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->NOTIFICATION_NEIGHBOR_OR_RIVAL_IS_AT_WAR:Z

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->isNeighbor(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NEIGHBOR_OR_RIVAL_AT_WAR:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v3, Lcom/pairip/licensecheck/CohD/CaiJWNfqszJNZ;->azefaQ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "IaAtWar"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->war:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v1, v8

    move v7, p2

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    return-void
.end method

.method public final clearDamageRelations()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    return-void
.end method

.method public final clearDamageRelations_AI(I)V
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->isPreparingForWarWithCivID(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    return-void
.end method

.method public final clearImproveRelations()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    return-void
.end method

.method public final clearImproveRelations_AI(I)V
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->isPreparingForAllianceWithCivID(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    return-void
.end method

.method public final getDamagingRelations_Perc(I)F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iTurnID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr p1, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DAMAGE_RELATIONS_TIME:I

    if-ne p1, v1, :cond_0

    const p1, 0x42c7cccd    # 99.9f

    return p1

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iTurnID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DAMAGE_RELATIONS_TIME:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public final getImprovingRelations_Perc(I)F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iTurnID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr p1, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_IMPROVE_RELATIONS_TIME:I

    if-ne p1, v1, :cond_0

    const p1, 0x42c7cccd    # 99.9f

    return p1

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iTurnID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_IMPROVE_RELATIONS_TIME:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public final getRelation(I)F
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getRivalsLegacy(I)F
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v3, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/RivalsManager;->getLegacy(II)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public final getRivalsManpower(I)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v3, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/RivalsManager;->getManpower(II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public getVassal_CanDeclareWar(I)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->cW:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public getVassal_LibertyDesire(I)F
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getVassal_ManpowerLevel(I)I
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getVassal_TributeLevel(I)I
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getWarKey(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v0, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public haveAlliance(I)Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public haveDefensivePact(I)Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public haveGuarantee(I)Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public haveGuaranteeByCivID(I)Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public haveMilitaryAccess(I)Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public haveNonAggressionPact(I)Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final haveTheSameRival(II)Z
    .locals 2

    :try_start_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public haveTruce(I)Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isAtWar()Z
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iAtWarSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDamagingRelations(I)Z
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isImprovingRelations(I)Z
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isRival(I)Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final removeAlliance(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeAtWar(I)V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iAtWarSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->atWar:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->atWar:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->atWar:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iAtWarSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeDamageRelations(I)V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeDefensivePact(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeGuarantee(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeGuaranteeByCivID(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeImproveRelations(I)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final removeMilitaryAccess(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeNonAggressionPact(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeRival(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final removeTruce(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeWar(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-nez p1, :cond_0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setWarPlayDefensiveUntilTurnID(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setLibertyDesire_Change(IF)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->setLibertyDesire_Change(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final setRelation(IIF)V
    .locals 2

    :try_start_0
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setRelation_Load(IF)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final setRelation_Peace(IFLjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeAtWar(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    invoke-virtual {p0, p3, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeWar(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p1, p2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMilitaryLevel(I)V

    :cond_0
    return-void
.end method

.method public final setRelation_War(IF)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addAtWar(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setVassal_CanDeclareWar(IZ)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iput-boolean p2, p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->cW:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public setVassal_LoadData(IIIZF)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iput p2, p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iput p3, p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iput-boolean p4, p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->cW:Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iput p5, p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public setVassal_ManpowerLevel(II)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->setManpower(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public setVassal_TributeLevel(II)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->setTribute(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateAlliance(I)V
    .locals 14

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-lt v2, v3, :cond_1

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_1
    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AI/Government/nSju/IlLkpaQxs;->LcHbmlxEui:Ljava/lang/String;

    const-string v5, ": "

    const-string v6, "AllianceExpired"

    if-ne v2, v3, :cond_2

    :try_start_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageAllianceExpired;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v7, v8

    invoke-direct {v3, p1, v7}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageAllianceExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ALLIANCE_EXPIRED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v7, v3

    move v13, p1

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->infoDiplomacy:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    move v2, p1

    goto/16 :goto_1

    :cond_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageAllianceExpired;

    iget v7, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v8, v9

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageAllianceExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ALLIANCE_EXPIRED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    iget v13, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->infoDiplomacy:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeAlliance(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    if-lez v2, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_Civ(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public final updateAllianceAfterRemoveCiv(I)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final updateAlliance_ConqueredProvinces(I)V
    .locals 14

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_1
    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, " - "

    const-string v5, ": "

    const-string v6, "AllianceExpired"

    if-ne v2, v3, :cond_2

    :try_start_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageAllianceExpired;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v7, v8

    invoke-direct {v3, p1, v7}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageAllianceExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ALLIANCE_EXPIRED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v7, v3

    move v13, p1

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->infoDiplomacy:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    move v2, p1

    goto/16 :goto_1

    :cond_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageAllianceExpired;

    iget v7, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v8, v9

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageAllianceExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ALLIANCE_EXPIRED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    iget v13, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->infoDiplomacy:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeAlliance(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    if-lez v2, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_Civ(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public final updateDamageRelations(I)V
    .locals 10

    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getRelationDamage(II)F

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-virtual {p0, p1, v2, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRelation(IIF)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-virtual {v2, v3, p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRelation(IIF)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DAMAGE_RELATIONS_TIME:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iTurnID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DAMAGE_RELATIONS_MAX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_COMPLETED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "DamagingRelationsCompleted"

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->relationsDown:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v8, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeDamageRelations(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final updateDefensivePact(I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v2, v3, :cond_0

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageDefensivePactExpired;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v4, v5

    invoke-direct {v3, p1, v4}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageDefensivePactExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    goto :goto_1

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageDefensivePactExpired;

    iget v4, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageDefensivePactExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    :cond_2
    :goto_1
    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeDefensivePact(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final updateDefensivePactAfterRemoveCiv(I)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final updateGuarantee(I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v2, v3, :cond_0

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGuaranteeExpired_OurInd;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v4, v5

    invoke-direct {v3, p1, v4}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGuaranteeExpired_OurInd;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    goto :goto_1

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGuaranteeExpired_We;

    iget v4, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageGuaranteeExpired_We;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    :cond_2
    :goto_1
    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeGuaranteeByCivID(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final updateGuaranteeAfterRemoveCiv(I)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final updateGuaranteeByCivID()V
    .locals 0

    return-void
.end method

.method public final updateGuaranteeByCivIDAfterRemoveCiv(I)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final updateImproveRelations(I)V
    .locals 10

    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getRelationImprove(II)F

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-virtual {p0, p1, v2, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRelation(IIF)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-virtual {v2, v3, p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRelation(IIF)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_IMPROVE_RELATIONS_TIME:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iTurnID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_IMPROVE_RELATIONS_MAX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_COMPLETED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ImprovingRelationsCompleted"

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->relationsUp:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v8, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeImproveRelations(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final updateMilitaryAccess(I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v2, v3, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageMilitaryAccessExpired;

    iget v4, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageMilitaryAccessExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    :cond_1
    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeMilitaryAccess(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final updateMilitaryAccessAfterRemoveCiv(I)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final updateNonAggressionPact(I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v2, v3, :cond_0

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageNonAggressionPactExpired;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v4, v5

    invoke-direct {v3, p1, v4}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageNonAggressionPactExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    goto :goto_1

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageNonAggressionPactExpired;

    iget v4, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageNonAggressionPactExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    :cond_2
    :goto_1
    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeNonAggressionPact(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final updateNonAggressionPactAfterRemoveCiv(I)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final updateRelation(IIF)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result p2

    add-float/2addr p2, p3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final updateRelationsAfterRemoveCiv(I)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final updateRelations_ToNeutral(I)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->RELATIONS_CHANGE_PER_UPDATE_TO_NEUTRAL:F

    sub-float/2addr v3, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->RELATIONS_CHANGE_PER_UPDATE_TO_NEUTRAL:F

    sub-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->RELATIONS_CHANGE_PER_UPDATE_TO_NEUTRAL:F

    add-float/2addr v3, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->RELATIONS_CHANGE_PER_UPDATE_TO_NEUTRAL:F

    add-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->relation:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final updateRivals(I)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v3, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    if-lt v2, v3, :cond_0

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageRivalryExpired;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v4, v5

    invoke-direct {v3, v1, v4}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageRivalryExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    goto :goto_1

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseRivals"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$1;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addAI_SimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final updateTruceAfterRemoveCiv(I)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    invoke-direct {v4, p0, v5, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;-><init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final updateTruces(I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iTurnID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v2, v3, :cond_0

    iget v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageTruceExpired;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v4, v5

    invoke-direct {v3, p1, v4}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageTruceExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    goto :goto_1

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageTruceExpired;

    iget v4, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageTruceExpired;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    :cond_2
    :goto_1
    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeTruce(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
