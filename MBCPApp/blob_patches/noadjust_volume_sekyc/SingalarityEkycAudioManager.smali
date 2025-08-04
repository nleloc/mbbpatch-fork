.class public Lcom/singalarity/ekyc/SingalarityEkycAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final TAG:Ljava/lang/String;

.field category:Ljava/lang/String;

.field completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field focusedPlayerKey:Ljava/lang/Double;

.field isDebug:Z

.field mContext:Landroid/app/Activity;

.field mixWithOthers:Ljava/lang/Boolean;

.field playerPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Double;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field wasPlayingBeforeFocusChange:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ekyc_audio_mgr"

    iput-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mixWithOthers:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->wasPlayingBeforeFocusChange:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->isDebug:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->category:Ljava/lang/String;

    iput-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public static testPlaySound1(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;

    invoke-direct {v0, p0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;-><init>(Landroid/app/Activity;)V

    new-instance p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$4;

    invoke-direct {p0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$4;-><init>()V

    invoke-virtual {v0, p0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->setCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->stop(Ljava/lang/Double;)V

    invoke-virtual {v0, p0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->release(Ljava/lang/Double;)V

    sget p0, Lcom/singalarity/ekyc/R$raw;->singalarity_ai_demo_face_1:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->prepareAndPlay(ID)V

    return-void
.end method

.method public static testPlaySound2(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;

    invoke-direct {v0, p0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;-><init>(Landroid/app/Activity;)V

    new-instance p0, Landroid/os/HandlerThread;

    const-string v1, "test-voice-thread"

    invoke-direct {p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$5;

    invoke-direct {p0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$5;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$6;

    invoke-direct {p0, v0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$6;-><init>(Lcom/singalarity/ekyc/SingalarityEkycAudioManager;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected createMediaPlayer(I)Landroid/media/MediaPlayer;
    .locals 8

    iget-boolean v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->isDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMediaPlayer line 296 packagename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->isDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMediaPlayer line 296 res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->isDebug:Z

    iget-object v1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getSystemVolume()F
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mContext:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v0, v0

    div-float/2addr v3, v0

    return v3

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mixWithOthers:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    iget-object v1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->focusedPlayerKey:Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    if-gtz p1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->wasPlayingBeforeFocusChange:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->focusedPlayerKey:Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->pause(Ljava/lang/Double;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->wasPlayingBeforeFocusChange:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->focusedPlayerKey:Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->play(Ljava/lang/Double;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->wasPlayingBeforeFocusChange:Ljava/lang/Boolean;

    :cond_1
    :goto_0
    return-void
.end method

.method public pause(Ljava/lang/Double;)V
    .locals 1

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play(Ljava/lang/Double;)V
    .locals 4

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mixWithOthers:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mContext:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iput-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->focusedPlayerKey:Ljava/lang/Double;

    :cond_2
    iget-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_3
    new-instance p1, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$1;

    invoke-direct {p1, p0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$1;-><init>(Lcom/singalarity/ekyc/SingalarityEkycAudioManager;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public prepare(ILjava/lang/Double;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->createMediaPlayer(I)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->category:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->isDebug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare line 236 key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "Playback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "Ambient"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_0

    :sswitch_2
    const-string v3, "Voice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v2, v6

    goto :goto_0

    :sswitch_3
    const-string v3, "Alarm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v2, v7

    goto :goto_0

    :sswitch_4
    const-string v3, "Ring"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v2, v8

    goto :goto_0

    :sswitch_5
    const-string v3, "System"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    move v2, v9

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v9

    const-string v0, "Unrecognised category %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_9

    iget-boolean v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->isDebug:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare line 263 key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_9
    new-instance v0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$2;

    invoke-direct {v0, p0, p2}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$2;-><init>(Lcom/singalarity/ekyc/SingalarityEkycAudioManager;Ljava/lang/Double;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance p2, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$3;

    invoke-direct {p2, p0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager$3;-><init>(Lcom/singalarity/ekyc/SingalarityEkycAudioManager;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b7ea1b1 -> :sswitch_5
        0x26de50 -> :sswitch_4
        0x3c68a31 -> :sswitch_3
        0x4eff112 -> :sswitch_2
        0x2e0b8a78 -> :sswitch_1
        0x73dc3a3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepareAndPlay(ID)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->isDebug:Z

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->prepare(ILjava/lang/Double;)V

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->play(Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->isDebug:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public release(Ljava/lang/Double;)V
    .locals 1

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mixWithOthers:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->focusedPlayerKey:Ljava/lang/Double;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mContext:Landroid/app/Activity;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public reset(Ljava/lang/Double;)V
    .locals 1

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public setCategory(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->category:Ljava/lang/String;

    iput-object p2, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mixWithOthers:Ljava/lang/Boolean;

    return-void
.end method

.method public setCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setSystemVolume(Ljava/lang/Float;)V
    .locals 3

    return-void
.end method

.method public setVolume(Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    return-void
.end method

.method public stop()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    iget-object v2, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public stop(Ljava/lang/Double;)V
    .locals 2

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->playerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mixWithOthers:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->focusedPlayerKey:Ljava/lang/Double;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/singalarity/ekyc/SingalarityEkycAudioManager;->mContext:Landroid/app/Activity;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method
