.class public Lcom/vtap/VTapSetupPlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CB_ALL_PROVISIONED_TOKEN:Ljava/lang/String; = "cb_all_provisioned_token"

.field private static final CB_CERT_DOWNLOAD:Ljava/lang/String; = "cb_cert_download"

.field private static final CB_CHANGE_TOKEN_PIN:Ljava/lang/String; = "cb_change_token_pin"

.field private static final CB_CHECK_TOKEN_PIN:Ljava/lang/String; = "cb_check_token_pin"

.field private static final CB_CREATE_TOKEN_PIN:Ljava/lang/String; = "cb_set_token_pin"

.field private static final CB_DEVICE_COMPATIBILITY:Ljava/lang/String; = "cb_device_compatibility"

.field private static final CB_DFP_HASH:Ljava/lang/String; = "cb_dfp_hash"

.field private static final CB_DISABLE_ADDITIONAL_DATA:Ljava/lang/String; = "cb_disable_additional_data"

.field private static final CB_GENERATE_CR:Ljava/lang/String; = "cb_generate_cr"

.field private static final CB_GENERATE_CSR_AND_SEND:Ljava/lang/String; = "cb_generate_csr_and_send"

.field private static final CB_GENERATE_CSR_AND_SEND_SYNC:Ljava/lang/String; = "cb_generate_csr_and_send_sync"

.field private static final CB_GENERATE_TOTP:Ljava/lang/String; = "cb_generate_totp"

.field private static final CB_GENERATE_TXS:Ljava/lang/String; = "cb_generate_txs"

.field private static final CB_GET_ADDITIONAL_DATA:Ljava/lang/String; = "cb_get_additional_data"

.field private static final CB_GET_LOAD_ACK_TOKEN_FIRMWARE:Ljava/lang/String; = "cb_get_load_ack_token_firmware"

.field private static final CB_GET_PKI_TOKEN_SERIAL:Ljava/lang/String; = "get_pki_token_serial"

.field private static final CB_GET_TOKEN_SERIAL:Ljava/lang/String; = "cb_get_token_serial"

.field private static final CB_GET_TROUBLESHOOTING_ID:Ljava/lang/String; = "cb_get_troubleshooting_id"

.field private static final CB_GET_TRUSTED_TIME:Ljava/lang/String; = "cb_get_trusted_time"

.field private static final CB_LOAD_TOKEN:Ljava/lang/String; = "cb_load_token"

.field private static final CB_LOAD_TOKEN_FIRMWARE:Ljava/lang/String; = "cb_load_token_firmware"

.field private static final CB_PKI_CERT_DOWNLOAD:Ljava/lang/String; = "cb_pki_cert_download"

.field private static final CB_PKI_FUNCTION_AUTHENTICATE:Ljava/lang/String; = "cb_pki_function_authenticate"

.field private static final CB_PKI_FUNCTION_CHECK_PIN:Ljava/lang/String; = "cb_pki_function_check_pin"

.field private static final CB_PKI_FUNCTION_PIN_REMEMBERED:Ljava/lang/String; = "cb_pki_function_pin_remembered"

.field private static final CB_PKI_FUNCTION_REGISTERED:Ljava/lang/String; = "cb_pki_function_registered"

.field private static final CB_PROVISIONING_DONE:Ljava/lang/String; = "cb_provisioning_done"

.field private static final CB_PUSH_NOTIFICATION:Ljava/lang/String; = "cb_push_notification"

.field private static final CB_REGISTERED_DEVICE_ID:Ljava/lang/String; = "cb_registered_device_id"

.field private static final CB_REGISTERED_USER_ID:Ljava/lang/String; = "cb_registered_user_id"

.field private static final CB_REMOVE_PKI_FUNCTION:Ljava/lang/String; = "cb_remove_pki_function"

.field private static final CB_REMOVE_TOKEN_FIRMWARE:Ljava/lang/String; = "cb_remove_token"

.field private static final CB_SCAN_COMPLETE:Ljava/lang/String; = "cb_scan_complete"

.field private static final CB_SEND_DEVICE_INFO:Ljava/lang/String; = "cb_send_device_info"

.field private static final CB_SEND_TROUBLESHOOTING_LOGS:Ljava/lang/String; = "cb_send_troubleshooting_logs"

.field private static final CB_SET_ADDITIONAL_DATA:Ljava/lang/String; = "cb_set_additional_data"

.field private static final CB_SET_HOSTNAME:Ljava/lang/String; = "cb_set_hostname"

.field private static final CB_SET_MESSAGE_DATA_TYPE:Ljava/lang/String; = "cb_set_message_data_type"

.field private static final CB_SET_OTP_LENGTH:Ljava/lang/String; = "cb_set_otp_length"

.field private static final CB_TOKEN_FIRMWARE_VERSION:Ljava/lang/String; = "cb_token_firmware_version"

.field private static final CB_TOKEN_PIN_REMEMBERED:Ljava/lang/String; = "cb_token_pin_remembered"

.field private static final CB_TOKEN_REGISTERED:Ljava/lang/String; = "cb_token_registered"

.field private static final CB_TOKEN_TYPE:Ljava/lang/String; = "cb_token_type"

.field private static final CB_TRIGGER_CERT_PUSH_NOTIFICATION:Ljava/lang/String; = "cb_trigger_cert_push_notification"

.field private static final CB_UNLOAD_TOKEN:Ljava/lang/String; = "cb_unload_token"

.field private static final CB_VALIDATE_CHECKSUM:Ljava/lang/String; = "cb_validate_checksum_true"

.field private static final CB_VMESSAGE_ACK:Ljava/lang/String; = "cb_message_ack"

.field private static final CB_VMESSAGE_DECRYPT:Ljava/lang/String; = "cb_vmessage_decrypt"

.field private static final CB_VMESSAGE_DOWNLOAD:Ljava/lang/String; = "cb_vmessage_download"

.field private static final CB_VTAP_DESTROY:Ljava/lang/String; = "cb_vtap_destroy"

.field private static final CB_VTAP_ERROR:Ljava/lang/String; = "cb_vtap_error"

.field private static final CB_VTAP_FAILED:Ljava/lang/String; = "cb_vtap_failed"

.field private static final CB_VTAP_PAUSE:Ljava/lang/String; = "cb_vtap_pause"

.field private static final CB_VTAP_RESUME:Ljava/lang/String; = "cb_vtap_resume"

.field private static final CB_VTAP_SUCCESS:Ljava/lang/String; = "cb_vtap_success"

.field public static final CERT_DOWNLOAD_RESULT:Ljava/lang/String; = "certDownloadResult"

.field private static final COULD_NOT_DECRYPTED_DATA:Ljava/lang/String; = "70202"

.field public static final DATA_TO_BE_SIGNED:Ljava/lang/String; = "dataToBeSigned"

.field static final DEVICE_CHECK:I = 0x64

.field private static final DYNAMIC_KEY_DECRYPTED_IS_NULL:Ljava/lang/String; = "70201"

.field private static final DYNAMIC_KEY_DECRYPTED_NULL_DATA:Ljava/lang/String; = "70203"

.field private static final FILE_UPLOAD_INTEGRITY_ERROR:Ljava/lang/String; = "FILE_UPLOAD_INTEGRITY_ERROR"

.field private static final FILE_UPLOAD_NULL_HASH:Ljava/lang/String; = "FILE_UPLOAD_NULL_HASH"

.field private static IS_START_VTAP_FAILED:Ljava/lang/String; = "false"

.field public static final MESSAGE_TYPE_ASP_CERT:Ljava/lang/String; = "ASP_CERT"

.field public static final MESSAGE_TYPE_ASP_CERT_RENEW:Ljava/lang/String; = "ASP_CERT_RENEW"

.field public static final MESSAGE_TYPE_ASP_DOC_CERT:Ljava/lang/String; = "ASP_DOC_CERT"

.field public static final MESSAGE_TYPE_ASP_DOC_CERT_RENEW:Ljava/lang/String; = "ASPDOC_CERT_RENEW"

.field public static final MESSAGE_TYPE_AUTH:Ljava/lang/String; = "AUTH"

.field public static final MESSAGE_TYPE_DOC_SIGN:Ljava/lang/String; = "DOCSIGN"

.field public static final MESSAGE_TYPE_SMP_CERT:Ljava/lang/String; = "SMP_CERT"

.field public static final MESSAGE_TYPE_SMP_CERT_RENEW:Ljava/lang/String; = "SMP_CERT_RENEW"

.field public static final MESSAGE_TYPE_SMP_MSG:Ljava/lang/String; = "SMP_MSG"

.field public static final MESSAGE_TYPE_TOKEN_REPROV:Ljava/lang/String; = "TOKEN_REPROV"

.field public static final NOTIFY_MSG_BYTES:Ljava/lang/String; = "notifyMsgBytes"

.field public static final NOTIFY_MSG_FLAG_CLEAR:Ljava/lang/String; = "0"

.field public static final NOTIFY_MSG_FLAG_ENCRYPTED:Ljava/lang/String; = "1"

.field public static final PASS_TYPE_1:Ljava/lang/String; = "1"

.field public static final PASS_TYPE_2:Ljava/lang/String; = "2"

.field private static final PROFILE_LOADED_ACTION:Ljava/lang/String; = "vkey.android.vguard.PROFILE_LOADED"

.field public static final PROFILE_THREAT_RESPONSE:Ljava/lang/String; = "vkey.android.vguard.PROFILE_THREAT_RESPONSE"

.field static final PROVISIONING:I = 0x65

.field static final PROVISIONING_DATA:I = 0x66

.field public static final PUSH_NOTIFICATION_BROADCAST:Ljava/lang/String; = "push_notification"

.field public static final PUSH_NOTIFICATION_MESSAGE_ID_KEY:Ljava/lang/String; = "messageId"

.field public static final PUSH_NOTIFICATION_MESSAGE_TYPE_KEY:Ljava/lang/String; = "messageType"

.field public static final PUSH_NOTIFICATION_MSG_FLAG_KEY:Ljava/lang/String; = "msgFlag"

.field public static final PUSH_NOTIFICATION_NOTIFY_MSG_FLAG_KEY:Ljava/lang/String; = "notifyMsgFlag"

.field public static final PUSH_NOTIFICATION_NOTIFY_MSG_KEY:Ljava/lang/String; = "notifyMsg"

.field public static final PUSH_NOTIFICATION_PASS_TYPE_KEY:Ljava/lang/String; = "passType"

.field public static final REGISTRATION_TOKEN:Ljava/lang/String; = "registrationToken"

.field private static final RET_MESSAGE_FAILURE:Ljava/lang/String; = "failed"

.field private static final RET_MESSAGE_SUCCESS:Ljava/lang/String; = "successful"

.field private static final SECURE_DYNAMIC_DATA_ERROR:Ljava/lang/String; = "SECURE_DYNAMIC_DATA_ERROR"

.field private static final SECURE_HTTP_CONN_ERROR:Ljava/lang/String; = "SECURE_HTTP_CONN_ERROR"

.field private static SET_UP_ACTIVATION_ERROR:Ljava/lang/String; = "SET_UP_ACTIVATION"

.field private static final SET_UP_DEFAULT_TOKEN_ERROR:Ljava/lang/String; = "SET_UP_DEFAULT_TOKEN_ERROR"

.field private static final SET_UP_DNAME_ERROR:Ljava/lang/String; = "SET_UP_DNAME_ERROR"

.field private static final SET_UP_TOKENNAME_ERROR:Ljava/lang/String; = "SET_UP_TOKENNAME_ERROR"

.field private static final START_TAO_ERROR:Ljava/lang/String; = "START_TAO_ERROR"

.field private static final START_TAO_ERROR_DUE_TO_INIT_FUNCTION_FAIL:Ljava/lang/String; = "START_TAO_ERROR_DUE_TO_INIT_FUNCTION_FAIL"

.field private static TAG:Ljava/lang/String; = "VTapSetupPlugin"

.field public static final TEXT_TO_DISPLAY:Ljava/lang/String; = "textToDisplay"

.field private static final VOS_FIRMWARE_RETURN_CODE_KEY:Ljava/lang/String; = "vkey.android.vguard.FIRMWARE_RETURN_CODE"

.field private static final VOS_READY_ACTION:Ljava/lang/String; = "vkey.android.vguard.VOS_READY"

.field private static final VTAP_FUNC_ERROR:Ljava/lang/String; = "vtap_setup_plugin_error"

.field private static final VTAP_SETUP_ACTION:Ljava/lang/String; = "vkey.android.vtap.VTAP_SETUP"

.field private static final VTAP_SETUP_STATUS:Ljava/lang/String; = "vkey.android.vtap.VTAP_SETUP_STATUS"

.field static isCallStartTAO:Z = false

.field private static volatile sInstance:Lcom/vtap/VTapSetupPlugin; = null

.field static startTAOStatus:I = 0xeb2a


# instance fields
.field private delegateUI:Lcom/singalarity/dynamickey/AsynHandleMainApp;

.field protected getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

.field private iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

.field private isRegistered:Z

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDataToBeSigned:Ljava/lang/String;

.field private mMessageId:Ljava/lang/String;

.field private mMessageType:Ljava/lang/String;

.field private mMsgFlag:Ljava/lang/String;

.field private mNotifyMsg:Ljava/lang/String;

.field private mNotifyMsgBytes:[B

.field private mNotifyMsgFlag:Ljava/lang/String;

.field private mPassType:Ljava/lang/String;

.field private mResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private mVtapRcvr:Landroid/content/BroadcastReceiver;

.field private provisioningInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field taoSecureInstanse:Lcom/singalarity/dynamickey/TAOSecure;

.field final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vtap/VTapSetupPlugin;->delegateUI:Lcom/singalarity/dynamickey/AsynHandleMainApp;

    const-string v1, "DynkeyDefaultUser"

    iput-object v1, p0, Lcom/vtap/VTapSetupPlugin;->userId:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vtap/VTapSetupPlugin;->provisioningInfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/vtap/VTapSetupPlugin$3;

    invoke-direct {v1, p0}, Lcom/vtap/VTapSetupPlugin$3;-><init>(Lcom/vtap/VTapSetupPlugin;)V

    iput-object v1, p0, Lcom/vtap/VTapSetupPlugin;->mVtapRcvr:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/vtap/VTapSetupPlugin;->taoSecureInstanse:Lcom/singalarity/dynamickey/TAOSecure;

    iput-object v0, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    iput-object p1, p0, Lcom/vtap/VTapSetupPlugin;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/databases"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->init(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->setDebbuger(Z)V

    new-instance p1, Lcom/vtap/VTapSetupPlugin$1;

    invoke-direct {p1, p0}, Lcom/vtap/VTapSetupPlugin$1;-><init>(Lcom/vtap/VTapSetupPlugin;)V

    iput-object p1, p0, Lcom/vtap/VTapSetupPlugin;->delegateUI:Lcom/singalarity/dynamickey/AsynHandleMainApp;

    new-instance p1, Lcom/vtap/VTapSetupPlugin$2;

    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->delegateUI:Lcom/singalarity/dynamickey/AsynHandleMainApp;

    invoke-direct {p1, p0, v0}, Lcom/vtap/VTapSetupPlugin$2;-><init>(Lcom/vtap/VTapSetupPlugin;Lcom/singalarity/dynamickey/AsynHandleMainApp;)V

    iput-object p1, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vtap/VTapSetupPlugin;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/vtap/VTapSetupPlugin;->IS_START_VTAP_FAILED:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vtap/VTapSetupPlugin;)Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 0

    iget-object p0, p0, Lcom/vtap/VTapSetupPlugin;->mResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vtap/VTapSetupPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vtap/VTapSetupPlugin;->moveToMaintainScreen(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vtap/VTapSetupPlugin;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/vtap/VTapSetupPlugin;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vtap/VTapSetupPlugin;)Lcom/singalarity/dynamickey/AsynHandleMainApp;
    .locals 0

    iget-object p0, p0, Lcom/vtap/VTapSetupPlugin;->delegateUI:Lcom/singalarity/dynamickey/AsynHandleMainApp;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vtap/VTapSetupPlugin;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/vtap/VTapSetupPlugin;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/vtap/VTapSetupPlugin;)Lcom/vkey/android/vtap/VTapInterface;
    .locals 0

    iget-object p0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    return-object p0
.end method

.method static synthetic access$800(Lcom/vtap/VTapSetupPlugin;Lcom/vkey/android/secure/net/Response;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vtap/VTapSetupPlugin;->handleResponse(Lcom/vkey/android/secure/net/Response;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private byteToJSonObject([B)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method static declared-synchronized getIsStartTAO()Z
    .locals 2

    const-class v0, Lcom/vtap/VTapSetupPlugin;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/vtap/VTapSetupPlugin;->isCallStartTAO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getsInstance(Landroid/content/Context;)Lcom/vtap/VTapSetupPlugin;
    .locals 2

    sget-object v0, Lcom/vtap/VTapSetupPlugin;->sInstance:Lcom/vtap/VTapSetupPlugin;

    if-nez v0, :cond_1

    const-class v0, Lcom/vtap/VTapSetupPlugin;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vtap/VTapSetupPlugin;->sInstance:Lcom/vtap/VTapSetupPlugin;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vtap/VTapSetupPlugin;

    invoke-direct {v1, p0}, Lcom/vtap/VTapSetupPlugin;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vtap/VTapSetupPlugin;->sInstance:Lcom/vtap/VTapSetupPlugin;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/vtap/VTapSetupPlugin;->sInstance:Lcom/vtap/VTapSetupPlugin;

    return-object p0
.end method

.method private handleResponse(Lcom/vkey/android/secure/net/Response;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 9

    const-string v0, "VTapSetupPlugin.handleResponse"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "SECURE_HTTP_CONN_ERROR"

    if-eqz p1, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget v4, p1, Lcom/vkey/android/secure/net/Response;->responseCode:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/vkey/android/secure/net/Response;->headers:Ljava/util/Map;

    const/16 v6, 0xc8

    const-string v7, "VTapSetupPlugin.handleResponse: Exception "

    const-string v8, "responseCode"

    if-lt v4, v6, :cond_0

    const/16 v6, 0x12c

    if-ge v4, v6, :cond_0

    :try_start_0
    iget v4, p1, Lcom/vkey/android/secure/net/Response;->responseCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "response"

    iget-object v6, p1, Lcom/vkey/android/secure/net/Response;->response:[B

    invoke-direct {p0, v6}, Lcom/vtap/VTapSetupPlugin;->byteToJSonObject([B)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "header"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VTapSetupPlugin.handleResponse: Sucess "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/vkey/android/secure/net/Response;->responseCode:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const/16 v5, 0x190

    const-string v6, "VTapSetupPlugin.handleResponse: Result: "

    if-lt v4, v5, :cond_1

    :try_start_1
    iget p1, p1, Lcom/vkey/android/secure/net/Response;->responseCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_1
    :try_start_2
    iget p1, p1, Lcom/vkey/android/secure/net/Response;->responseCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "Response is null"

    invoke-interface {p2, v2, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string p1, "VTapSetupPlugin.handleResponse: response is null"

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    :goto_3
    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->endFunc(Ljava/lang/String;)V

    return-void
.end method

.method private moveToMaintainScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->mActivity:Landroid/app/Activity;

    const-class v2, Lio/flutter/plugins/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "THREAT_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "THREATS_INFO"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/vtap/VTapSetupPlugin;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/vtap/VTapSetupPlugin;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public LoadDynamicKeyTokenv2()V
    .locals 5

    const-string v0, "LoadDynamicKeyTokenv2"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v1}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->getDynamicKeyToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v2}, Lcom/vkey/android/vtap/VTapInterface;->getTokenSerial()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadDynamicKeyTokenv2: dynamicToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v2, v1}, Lcom/vkey/android/vtap/VTapInterface;->loadToken(Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->endFunc(Ljava/lang/String;)V

    return-void
.end method

.method public LoadDynamicKeyTokenv3()I
    .locals 5

    const-string v0, "LoadDynamicKeyTokenv3"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v1}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->getDynamicKeyToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v2}, Lcom/vkey/android/vtap/VTapInterface;->getTokenSerial()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadDynamicKeyTokenv3: dynamicToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v2, v1}, Lcom/vkey/android/vtap/VTapInterface;->loadToken(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadDynamicKeyTokenv3, load token - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadStatus: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v2, 0x9ea5

    goto :goto_0

    :cond_1
    const v2, 0x9ea4

    :goto_0
    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->endFunc(Ljava/lang/String;)V

    return v2
.end method

.method public addLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public changeTokenPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/vkey/android/vtap/VTapInterface;->changeTokenPIN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p4, :cond_1

    const p2, 0x9fc4

    if-ne p1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "changeTokenPin failed"

    invoke-interface {p4, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "vtap_setup_plugin_error"

    invoke-interface {p4, p2, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkDeviceCompatibility(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0}, Lcom/vkey/android/vtap/VTapInterface;->checkDeviceCompatibility()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public checkTokenPin(Ljava/lang/String;ZLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/vkey/android/vtap/VTapInterface;->checkTokenPIN(Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    if-eqz p4, :cond_1

    const p2, 0x9f60

    if-ne p1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkTokenPin failed"

    invoke-interface {p4, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "vtap_setup_plugin_error"

    invoke-interface {p4, p2, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearVOSTrustedStorage(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0}, Lcom/vkey/android/vtap/VTapInterface;->clearVOSTrustedStorage()Z

    move-result v0

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public createTokenPin(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v1, p1, p2}, Lcom/vkey/android/vtap/VTapInterface;->createTokenPIN(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3, p2, v3}, Lcom/vkey/android/vtap/VTapInterface;->checkTokenPIN(Ljava/lang/String;ZLjava/lang/String;I)I

    if-eqz p3, :cond_2

    const p1, 0x9efc

    if-eq v1, p1, :cond_1

    const p1, 0x9efe

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "createTokenPin failed"

    invoke-interface {p3, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "vtap_setup_plugin_error"

    invoke-interface {p3, p2, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public decryptedResponse(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    const-string v0, "VTapSetupPlugin.decryptedResponse"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    new-instance v1, Lcom/singalarity/dynamickey/PerfomanceTimer;

    invoke-direct {v1}, Lcom/singalarity/dynamickey/PerfomanceTimer;-><init>()V

    const-string v2, "70203"

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    const-string v4, "Done read, Enter native module Function decryptedResponse"

    invoke-static {v4}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vtap/VTapSetupPlugin;->LoadDynamicKeyTokenv2()V

    const-string v4, "Before: taoSecureInstanse.DecryptedStringWithList(requestToBeEncrypted);"

    invoke-static {v4}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vtap/VTapSetupPlugin;->taoSecureInstanse:Lcom/singalarity/dynamickey/TAOSecure;

    const-string v5, "DynkeyDefaultUser"

    invoke-virtual {v4, p1, v3, v5}, Lcom/singalarity/dynamickey/TAOSecure;->DecryptedStringWithList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/singalarity/dynamickey/Response/DecryptedResponse;

    move-result-object p1

    const-string v4, "After: taoSecureInstanse.DecryptedStringWithList(requestToBeEncrypted);"

    invoke-static {v4}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v4, "0000"

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/DecryptedResponse;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/DecryptedResponse;->getPlainText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/DecryptedResponse;->getPlainText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p1, "70202"

    const-string v4, "COULD_NOT_DECRYPTED_DATA"

    :goto_0
    invoke-interface {p2, p1, v4, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/DecryptedResponse;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/DecryptedResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v4, p1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string p1, "70201"

    const-string v4, "DYNAMIC_KEY_DECRYPTED_IS_NULL"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, "Data is null"

    :goto_1
    invoke-interface {p2, v2, p1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VTapSetupPlugin.decryptedResponse decrypted (ms): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/singalarity/dynamickey/PerfomanceTimer;->getDiffTimeInMS()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->endFunc(Ljava/lang/String;)V

    return-void
.end method

.method public encryptMobileRequest(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    const-string v0, "encryptMobileRequest"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    new-instance v1, Lcom/singalarity/dynamickey/PerfomanceTimer;

    invoke-direct {v1}, Lcom/singalarity/dynamickey/PerfomanceTimer;-><init>()V

    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v1}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->LoadDynamicKeyToken()V

    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v1}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->getDefaultToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->taoSecureInstanse:Lcom/singalarity/dynamickey/TAOSecure;

    invoke-virtual {v2, p1}, Lcom/singalarity/dynamickey/TAOSecure;->EncryptedAllData(Ljava/lang/String;)Lcom/singalarity/dynamickey/DynamicSecureData;

    move-result-object p1

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v2}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->LoadDigitalToken()V

    const-string v2, "SECURE_DYNAMIC_DATA_ERROR"

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/singalarity/dynamickey/DynamicSecureData;->getEncData()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mode"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/DynamicSecureData;->hasAdditionalData()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/DynamicSecureData;->getAdditionalData()Ljava/lang/String;

    move-result-object p1

    const-string v6, "additionalData"

    invoke-virtual {v4, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "userId"

    const-string v6, "DynkeyDefaultUser"

    invoke-virtual {v4, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "token"

    invoke-virtual {v4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "challengeCode"

    invoke-virtual {v4, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p2, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const-string p1, "encryptMobileRequest: Success"

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encryptMobileRequest: Exception"

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encryptMobileRequest: JSONException"

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "Exception while attempting to encrypt the mobile request"

    invoke-interface {p2, v2, p1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "encryptMobileRequest: encryptedData is null"

    :goto_1
    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    :goto_2
    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->endFunc(Ljava/lang/String;)V

    return-void
.end method

.method public encryptMobileRequest2(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    const-string v0, "SECURE_DYNAMIC_DATA_ERROR"

    const-string v1, "Done read, Enter native module Function encryptMobileRequest"

    invoke-static {v1}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    const-string v1, "encryptMobileRequest2"

    invoke-static {v1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    new-instance v2, Lcom/singalarity/dynamickey/PerfomanceTimer;

    invoke-direct {v2}, Lcom/singalarity/dynamickey/PerfomanceTimer;-><init>()V

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v2}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->LoadDynamicKeyToken()V

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v2}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->getDefaultToken()Ljava/lang/String;

    const-string v2, "Before: taoSecureInstanse.EncryptedAllData(requestToBeEncrypted);"

    invoke-static {v2}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->taoSecureInstanse:Lcom/singalarity/dynamickey/TAOSecure;

    invoke-virtual {v2, p1}, Lcom/singalarity/dynamickey/TAOSecure;->EncryptedAllData2(Ljava/lang/String;)Lcom/singalarity/dynamickey/DynamicSecureData;

    move-result-object p1

    const-string v2, "After: taoSecureInstanse.EncryptedAllData(requestToBeEncrypted);"

    invoke-static {v2}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v2}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->LoadDigitalToken()V

    if-eqz p1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/singalarity/dynamickey/DynamicSecureData;->getEncData2()[B

    move-result-object v3

    invoke-static {v3}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->getBase64String([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mode"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "After Base64.encodeToString(encDataInBytes, Base64.NO_WRAP);"

    invoke-static {v4}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/DynamicSecureData;->hasAdditionalData()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/DynamicSecureData;->getAdditionalData()Ljava/lang/String;

    move-result-object p1

    const-string v4, "additionalData"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-interface {p2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const-string p1, "encryptMobileRequest2: Success"

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encryptMobileRequest2: Exception"

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encryptMobileRequest2: JSONException"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "encryptedData is null"

    invoke-virtual {p0, v1, p1}, Lcom/vtap/VTapSetupPlugin;->addLogs(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public encryptMobileRequest3(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    const-string v0, "Done read, Enter native module Function encryptMobileRequest3"

    invoke-static {v0}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    const-string v0, "encryptMobileRequest3"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    new-instance v1, Lcom/singalarity/dynamickey/PerfomanceTimer;

    invoke-direct {v1}, Lcom/singalarity/dynamickey/PerfomanceTimer;-><init>()V

    invoke-virtual {p0}, Lcom/vtap/VTapSetupPlugin;->LoadDynamicKeyTokenv3()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x9ea4

    if-eq v1, v3, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DYNAMIC_KEY_LOAD_FAILED!"

    invoke-interface {p2, p1, v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "Before: taoSecureInstanse.EncryptedAllData2(requestToBeEncrypted);"

    invoke-static {v1}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->taoSecureInstanse:Lcom/singalarity/dynamickey/TAOSecure;

    invoke-virtual {v1, p1}, Lcom/singalarity/dynamickey/TAOSecure;->EncryptedAllData2(Ljava/lang/String;)Lcom/singalarity/dynamickey/DynamicSecureData;

    move-result-object p1

    const-string v1, "After: taoSecureInstanse.EncryptedAllData2(requestToBeEncrypted);"

    invoke-static {v1}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/singalarity/dynamickey/DynamicSecureData;->getEncData2()[B

    move-result-object v0

    invoke-static {v0}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->getBase64String([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "After Base64.encodeToString(encDataInBytes, Base64.NO_WRAP);"

    invoke-static {v1}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "code"

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/DynamicSecureData;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "encrypted"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const-string v0, "encryptMobileRequest3: Success"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/DynamicSecureData;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "encryptMobileRequest3: Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/singalarity/dynamickey/DynamicSecureData;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "encryptedData is null"

    invoke-interface {p2, p1, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/vtap/VTapSetupPlugin;->addLogs(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public encryptSensitiveRequest4(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    const-string v0, "Done read, Enter native module Function encryptSensitiveRequest4"

    invoke-static {v0}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    const-string v0, "encryptSensitiveRequest4"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    new-instance v1, Lcom/singalarity/dynamickey/PerfomanceTimer;

    invoke-direct {v1}, Lcom/singalarity/dynamickey/PerfomanceTimer;-><init>()V

    invoke-virtual {p0}, Lcom/vtap/VTapSetupPlugin;->LoadDynamicKeyTokenv2()V

    const-string v1, "Before: taoSecureInstanse.EncryptedAllData2(requestToBeEncrypted);"

    invoke-static {v1}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->taoSecureInstanse:Lcom/singalarity/dynamickey/TAOSecure;

    invoke-static {p2}, Lcom/vtap/DKeyUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/singalarity/dynamickey/TAOSecure;->EncryptedSensitiveRequest(Ljava/lang/String;[B)Lcom/singalarity/dynamickey/Response/EncryptedResponse;

    move-result-object p1

    const-string p2, "After: taoSecureInstanse.EncryptedAllData2(requestToBeEncrypted);"

    invoke-static {p2}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string v1, "SECURE_DYNAMIC_DATA_ERROR"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/EncryptedResponse;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/EncryptedResponse;->getEncryptedData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->getBase64String([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "After Base64.encodeToString(encDataInBytes, Base64.NO_WRAP);"

    invoke-static {v2}, Lcom/singalarity/dynamickey/DynamicKeyUtils;->printBOGET(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "encryptedData"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transportKey"

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/EncryptedResponse;->getTransportKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const-string p1, "encryptMobileRequest2: Success"

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "encryptMobileRequest2: Exception"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/EncryptedResponse;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/EncryptedResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed Encrypted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/singalarity/dynamickey/Response/EncryptedResponse;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p3, v1, v1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "encryptedData is null"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/vtap/VTapSetupPlugin;->addLogs(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public generateTOTP(ILio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0, p1}, Lcom/vkey/android/vtap/VTapInterface;->generateTOTP(I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "vtap_setup_plugin_error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public generateTxS(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0, p1, p2}, Lcom/vkey/android/vtap/VTapInterface;->generateTxS(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "vtap_setup_plugin_error"

    invoke-interface {p3, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAllProvisionedTokens(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0}, Lcom/vkey/android/vtap/VTapInterface;->getAllProvisionedTokens()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getDFPHash(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0}, Lcom/vkey/android/vtap/VTapInterface;->getDFPHash()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getInstance(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vkey/android/vtap/VTapFactory;->getInstance(Landroid/content/Context;)Lcom/vkey/android/vtap/a;

    move-result-object v0

    iput-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    const-string v0, "successful"

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    const-string v1, "failed"

    const-string v2, "getInstance failed"

    invoke-interface {p1, v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getLoadAckTokenFirmware(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {p1, v1}, Lcom/vkey/android/vtap/VTapInterface;->getLoadAckTokenFirmware(Ljava/util/ArrayList;)I

    move-result p1

    if-eqz p3, :cond_2

    const p2, 0x9ea0

    if-eq p1, p2, :cond_1

    const p2, 0x9e98

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getLoadAckTokenFirmware failed"

    invoke-interface {p3, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "vtap_setup_plugin_error"

    invoke-interface {p3, p2, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getStartVtapStatus(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    sget-object v0, Lcom/vtap/VTapSetupPlugin;->IS_START_VTAP_FAILED:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public getTokenFirmwareVersion(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0, p1}, Lcom/vkey/android/vtap/VTapInterface;->getTokenFirmwareVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "vtap_setup_plugin_error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getTokenSerial(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0}, Lcom/vkey/android/vtap/VTapInterface;->getTokenSerial()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getTokenType(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0, p1}, Lcom/vkey/android/vtap/VTapInterface;->getTokenType(Ljava/lang/String;)Lcom/vkey/android/vtap/VTapInterface$TokenType;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/vkey/android/vtap/VTapInterface$TokenType;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "vtap_setup_plugin_error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getTroubleshootingId(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0}, Lcom/vkey/android/vtap/VTapInterface;->getTroubleshootingId()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getTrustedTime(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v1}, Lcom/vkey/android/vtap/VTapInterface;->getTrustedTime()I

    move-result v1

    if-eqz p1, :cond_1

    if-lez v1, :cond_0

    const v2, 0xa42f

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getTrustedTime failed"

    invoke-interface {p1, v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isProvisioningDone(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0}, Lcom/vkey/android/vtap/VTapInterface;->isProvisioningDone()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isTokenPinRemembered(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0, p1}, Lcom/vkey/android/vtap/VTapInterface;->isTokenPINRemembered(Ljava/lang/String;)Z

    move-result p1

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "vtap_setup_plugin_error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isTokenRegistered(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0, p1}, Lcom/vkey/android/vtap/VTapInterface;->isTokenRegistered(Ljava/lang/String;)Z

    move-result p1

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "vtap_setup_plugin_error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public loadToken(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v1, p1}, Lcom/vkey/android/vtap/VTapInterface;->loadToken(Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_1

    const v1, 0x9ea4

    if-ne p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "loadToken failed"

    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "vtap_setup_plugin_error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0}, Lcom/vkey/android/vtap/VTapInterface;->onDestroy()V

    if-eqz p1, :cond_0

    const-string v0, "successful"

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPause(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0}, Lcom/vkey/android/vtap/VTapInterface;->onPause()V

    if-eqz p1, :cond_0

    const-string v0, "successful"

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPrintLogDone(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0}, Lcom/vkey/android/vtap/VTapInterface;->onResume()V

    if-eqz p1, :cond_0

    const-string v0, "successful"

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public postURLConnectionDynkey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    const-string v0, "data"

    const-string v13, "SECURE_HTTP_CONN_ERROR"

    const-string v1, ""

    const-string v14, "postURLConnectionDynkey"

    invoke-static {v14}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    const/4 v15, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "authHeader"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "timeout"

    const/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v3, "contentType"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v11, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v2}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->LoadDynamicKeyToken()V

    iget-object v2, v11, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v2}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->getDefaultToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "120163920534a6ed351ec3e5a69e9a59b870f188"

    new-instance v4, Lcom/singalarity/dynamickey/PerfomanceTimer;

    invoke-direct {v4}, Lcom/singalarity/dynamickey/PerfomanceTimer;-><init>()V

    iget-object v4, v11, Lcom/vtap/VTapSetupPlugin;->taoSecureInstanse:Lcom/singalarity/dynamickey/TAOSecure;

    invoke-virtual {v4, v1}, Lcom/singalarity/dynamickey/TAOSecure;->EncryptedAllData(Ljava/lang/String;)Lcom/singalarity/dynamickey/DynamicSecureData;

    move-result-object v1

    iget-object v4, v11, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v4}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->LoadDigitalToken()V

    if-eqz v1, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lcom/singalarity/dynamickey/DynamicSecureData;->getEncData()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mode"

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/singalarity/dynamickey/DynamicSecureData;->hasAdditionalData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/singalarity/dynamickey/DynamicSecureData;->getAdditionalData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "additionalData"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "userId"

    const-string v1, "DynkeyDefaultUser"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "token"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "challengeCode"

    invoke-virtual {v4, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Error"

    const-string v2, "Exception while attempting to create JSON payload for upload."

    invoke-virtual {v11, v1, v2}, Lcom/vtap/VTapSetupPlugin;->addLogs(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postURLConnectionDynkey: JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/vtap/VTapSetupPlugin;->onPrintLogDone(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lcom/vtap/VTapSetupPlugin$7;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move-object v15, v10

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/vtap/VTapSetupPlugin$7;-><init>(Lcom/vtap/VTapSetupPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-direct {v0, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_1
    const-string v0, "Could not encrypted Dynamic Data"

    const/4 v1, 0x0

    invoke-interface {v12, v13, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "postURLConnectionDynkey: encryptedData is null"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v12, v13, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postURLConnectionDynkey: Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    :goto_1
    invoke-static {v14}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->endFunc(Ljava/lang/String;)V

    return-void
.end method

.method public removeTokenFirmware(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v1, p1}, Lcom/vkey/android/vtap/VTapInterface;->removeTokenFirmware(Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_1

    const v1, 0x9eaa

    if-ne p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "removeTokenFirmware failed"

    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "vtap_setup_plugin_error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendDeviceInfo(Ljava/lang/String;ILio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v1, p1, p2}, Lcom/vkey/android/vtap/VTapInterface;->sendDeviceInfo(Ljava/lang/String;I)I

    move-result p1

    if-eqz p3, :cond_1

    const p2, 0x9dd0

    if-ne p1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sendDeviceInfo failed"

    invoke-interface {p3, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "vtap_setup_plugin_error"

    invoke-interface {p3, p2, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendTroubleshootingLogs(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v1}, Lcom/vkey/android/vtap/VTapInterface;->sendTroubleshootingLogs()I

    move-result v1

    const v2, 0x9e36

    if-ne v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendTroubleshootingLogs failed"

    invoke-interface {p1, v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vtap_setup_plugin_error"

    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/vtap/VTapSetupPlugin;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setHostName(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v0, p1, p2}, Lcom/vkey/android/vtap/VTapInterface;->setHostName(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {v0, p1, p2}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->digitalOTPServer(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p1, "successful"

    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "failed"

    invoke-interface {p3, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOtpLength(ILio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v1, p1}, Lcom/vkey/android/vtap/VTapInterface;->setOtpLength(I)I

    move-result p1

    if-eqz p2, :cond_1

    const v1, 0xa028

    if-ne p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setOtpLength failed"

    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "vtap_setup_plugin_error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUpVTap(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    iput-object p1, p0, Lcom/vtap/VTapSetupPlugin;->mResult:Lio/flutter/plugin/common/MethodChannel$Result;

    new-instance p1, Lcom/vtap/VTapSetupPlugin$4;

    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, v0}, Lcom/vtap/VTapSetupPlugin$4;-><init>(Lcom/vtap/VTapSetupPlugin;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vkey/android/vguard/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/vkey/android/vguard/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->mVtapRcvr:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "vkey.android.vtap.VTAP_SETUP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/vkey/android/vguard/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "vkey.android.vguard.SCAN_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/vkey/android/vguard/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "vkey.android.vguard.Finish"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/vkey/android/vguard/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vtap/VTapSetupPlugin;->isRegistered:Z

    iget-object p1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {p1}, Lcom/vkey/android/vtap/VTapInterface;->setupVTap()V

    iget-object p1, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->configManagerVtap(Lcom/vkey/android/vtap/VTapInterface;Landroid/app/Activity;)V

    return-void
.end method

.method public setupActivation(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const-string v0, "VTapSetupPlugin.setupActivation"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    :try_start_0
    sget-object p1, Lcom/vtap/VTapSetupPlugin;->SET_UP_ACTIVATION_ERROR:Ljava/lang/String;

    const-string p2, "Param is null"

    invoke-interface {p3, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {p2, p1, v1}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->setupActivation(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VTapSetupPlugin.setupDefaultToken isSetupSuccess: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "successful"

    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/vtap/VTapSetupPlugin;->SET_UP_ACTIVATION_ERROR:Ljava/lang/String;

    invoke-interface {p3, p1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VTapSetupPlugin.setupDefaultToken Exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    sget-object p2, Lcom/vtap/VTapSetupPlugin;->SET_UP_ACTIVATION_ERROR:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const-string p1, "VTapSetupPlugin.setupDefaultToken"

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->endFunc(Ljava/lang/String;)V

    return-void
.end method

.method public setupDefaultToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    const-string v0, "VTapSetupPlugin.setupDefaultToken"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "SET_UP_DEFAULT_TOKEN_ERROR"

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    :try_start_0
    const-string p1, "Param is null"

    invoke-interface {p5, v2, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/vtap/VTapSetupPlugin;->getDynamicToken:Lcom/singalarity/dynamickey/GetDynamicKeyHelper;

    invoke-virtual {p4, p1, p2, p3, v3}, Lcom/singalarity/dynamickey/GetDynamicKeyHelper;->setupDefaultToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VTapSetupPlugin.setupDefaultToken: isSetupSuccess: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    if-eqz p1, :cond_2

    const-string p1, "successful"

    invoke-interface {p5, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-interface {p5, v2, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p5, v2, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VTapSetupPlugin.setupDefaultToken: Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->addLogs(Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->endFunc(Ljava/lang/String;)V

    return-void
.end method

.method public startTAO(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    const-string v0, "startTAO"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    invoke-static {}, Lcom/vtap/VTapSetupPlugin;->getIsStartTAO()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    sget v0, Lcom/vtap/VTapSetupPlugin;->startTAOStatus:I

    const v1, 0xeb28

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Please waiting the result"

    invoke-interface {p1, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vtap/VTapSetupPlugin;->isCallStartTAO:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vtap/VTapSetupPlugin$5;

    invoke-direct {v1, p0, p1}, Lcom/vtap/VTapSetupPlugin$5;-><init>(Lcom/vtap/VTapSetupPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string p1, "startTAO.Runnable"

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->endFunc(Ljava/lang/String;)V

    return-void
.end method

.method public startTAOv2(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const-string v0, "startTAOv2"

    invoke-static {v0}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->startFunc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vtap/VTapSetupPlugin$6;

    invoke-direct {v1, p0, p1}, Lcom/vtap/VTapSetupPlugin$6;-><init>(Lcom/vtap/VTapSetupPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string p1, "startTAO.Runnable"

    invoke-static {p1}, Lcom/singalarity/dynamickey/TroubleshootingLogs;->endFunc(Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterBroadcastReceivers()V
    .locals 2

    iget-boolean v0, p0, Lcom/vtap/VTapSetupPlugin;->isRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vtap/VTapSetupPlugin;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vkey/android/vguard/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/vkey/android/vguard/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->mVtapRcvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/vkey/android/vguard/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vtap/VTapSetupPlugin;->isRegistered:Z

    :cond_0
    return-void
.end method

.method public unloadToken(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {v1, p1}, Lcom/vkey/android/vtap/VTapInterface;->unloadToken(Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_1

    const v1, 0x9ea6

    if-ne p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "unloadToken failed"

    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "vtap_setup_plugin_error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public validateCheckSum(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/vtap/VTapSetupPlugin;->iVTapManager:Lcom/vkey/android/vtap/VTapInterface;

    invoke-interface {p1, v0}, Lcom/vkey/android/vtap/VTapInterface;->validateCheckSum(Ljava/util/ArrayList;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "vtap_setup_plugin_error"

    invoke-interface {p3, v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
