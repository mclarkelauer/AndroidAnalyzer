.class public Lcom/bugsense/trace/CryptoHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# static fields
.field public static final ANALYTICS:I = 0x0

.field public static final ERRORS:I = 0x1


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bugsense/trace/CryptoHttpClient;->a:I

    iput p1, p0, Lcom/bugsense/trace/CryptoHttpClient;->a:I

    return-void
.end method

.method private a()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .registers 5

    iget v0, p0, Lcom/bugsense/trace/CryptoHttpClient;->a:I

    if-nez v0, :cond_2c

    const-string v0, "AAAAAQAAABROxuBB/aUFmT3yact6TK5IOds4eQAABIABAAVteWtleQAAATltDpSyAAAAAAAFWC41MDkAAAMgMIIDHDCCAoWgAwIBAgIJAJMoXqN3LTQpMA0GCSqGSIb3DQEBBQUAMIGmMQswCQYDVQQGEwJVUzELMAkGA1UECAwCREUxETAPBgNVBAcMCERlbGF3YXJlMRYwFAYDVQQKDA1CdWdTZW5zZSBJbmMuMR4wHAYDVQQLDBVDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxHjAcBgNVBAMMFUNlcnRpZmljYXRlIEF1dGhvcml0eTEfMB0GCSqGSIb3DQEJARYQb3BzQGJ1Z3NlbnNlLmNvbTAeFw0xMjA4MjcxNTU4MzVaFw0yMjA4MjUxNTU4MzVaMIGmMQswCQYDVQQGEwJVUzELMAkGA1UECAwCREUxETAPBgNVBAcMCERlbGF3YXJlMRYwFAYDVQQKDA1CdWdTZW5zZSBJbmMuMR4wHAYDVQQLDBVDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxHjAcBgNVBAMMFUNlcnRpZmljYXRlIEF1dGhvcml0eTEfMB0GCSqGSIb3DQEJARYQb3BzQGJ1Z3NlbnNlLmNvbTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAtKnp4mKe+5iOpV7BfiPWz/4KWjwLrQG2V89fmS8iJ2o63yjMgBYyRKgoHEp9h4TIwzmmTrZw63Q5wE0DnUQwMB+oNCAWCxzZxfGd9dz/omxFvbL1SiqTg7jNjjkzR6JVN3EmjY+CU742DTTKsa6eFTyaRfcexCj1gW+HHSef5q0CAwEAAaNQME4wHQYDVR0OBBYEFL6lHUJktOncX8C7umbgoombEmkGMB8GA1UdIwQYMBaAFL6lHUJktOncX8C7umbgoombEmkGMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEABKsEXB7Rn8nz5qgNhOHZtt/bTiA31PyT73sEVQftEOIwOY1CEVC8I6iGn/tBhyeIDpQOVUpTftlaX3UtBeSPzzfnv7a+eZFIdcsgCtSZJ3DpZiY0Fkk4MgbueQEMed1wxl7mfgWGC/fgyZNpw33VuTpSYIFx1FGw9JnBxWJCW9oAKo+JAbCJoSyLOAs15lw1qAknCtI="

    :goto_6
    invoke-static {v0}, Lbiz/source_code/base64Coder/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_a
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_34

    :try_start_15
    const-string v0, "secret24"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2f

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_34

    return-object v0

    :cond_2c
    const-string v0, "AAAAAQAAABTqE8O13A7h+0EkKxWZwl/MrC5GHgAABYgBAAVteWtleQAAATmbH+bhAAAAAAAFWC41MDkAAAReMIIEWjCCA0KgAwIBAgILBAAAAAABL07hQUMwDQYJKoZIhvcNAQEFBQAwVzELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExEDAOBgNVBAsTB1Jvb3QgQ0ExGzAZBgNVBAMTEkdsb2JhbFNpZ24gUm9vdCBDQTAeFw0xMTA0MTMxMDAwMDBaFw0yMjA0MTMxMDAwMDBaMFcxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMS0wKwYDVQQDEyRHbG9iYWxTaWduIERvbWFpbiBWYWxpZGF0aW9uIENBIC0gRzIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCxo83A3zNAJuveWteUZtQBY8wzRIng4rjCRw2PrWmGHKhzQgvxcvstrLURcoMi9lbnLsVncZ0AHDK84+0uCEWp5vrdyIyDBcFvS9AmSgv2G0XATX6TvA0nhO0wo+nGJibdLR/Yi8POGdBb/Aif5NjiNeSgaKb2DaN0YEKyl4IkjkGk8i5eto6nbtlsfw07JDVq0KtbaveXAgA/UaanbnPKdw12fJu2MBoanPcfKHsOi0cf538FjMbJyLvP6dx6QS6hhtrUObLiE0CmqDr6D1MeT+xumAkbypp3s1WFhekuFrWdXlTxSnpsObpuFwY0s7JC4ffznJoLEUTeaniOsRNPAgMBAAGjggElMIIBITAOBgNVHQ8BAf8EBAMCAQYwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUlq36sFu5g2QqdsIcimnaQtz+/SgwRwYDVR0gBEAwPjA8BgRVHSAAMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5uZXQvcm9vdC5jcmwwPQYIKwYBBQUHAQEEMTAvMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9yb290cjEwHwYDVR0jBBgwFoAUYHtmGkUNl8qJUC99BM00qP/8/UswDQYJKoZIhvcNAQEFBQADggEBADrn/K6vBUOAJ3VBX6jwKI8fj4N+sri6rnUxJ4il5blOBEPSregTAKPbGQEwnmw8Un9c3qtnw4QEVFGZnmMvvdW3wNXaAw5J0+Gzkk/fkk59riJqzti8/Hyua7aK6kVikBHTC3GnXgYi/0046rk6bs1nGgJ/S/O/DnlvvtUpMllZHZYIm3CP9x5cRntO0J20U8gSAhsNuzLrWVO5PhtWjRXI8UI/d/4f5W2eZh+r2rKDV7QMItKGvNoy18DtcIV8k6rwl9w5EdLYieuNkKO2UCXLbNmmw2/7iFS45JJwh855O/DeNr8DBAA9+e+eqWek9IY+I5e4KnHi7f5piGe/JlwA1dUF+2pp1as1qpadDzN/FNFE+2Q="

    goto :goto_6

    :catchall_2f
    move-exception v0

    :try_start_30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_34

    :catch_34
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem in SSL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_58
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method protected createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 6

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-direct {p0}, Lcom/bugsense/trace/CryptoHttpClient;->a()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {p0}, Lcom/bugsense/trace/CryptoHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v1
.end method
