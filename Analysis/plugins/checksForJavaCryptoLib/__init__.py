__author__ = 'Matt Clarke-Lauer'
__email__ = 'mclarkelauer@reversinglabs.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log
from Analysis import analysisUtils

name = "checksForJavaCryptoLib"
description = "Determines whether a Java crypto library is used"

result = {}

androidCryptoAlgorithms = [
    "SHA512WithRSAEncryption",
    "TLSv1.1",
    "SHA-384",
    "RSA",
    "DSA",
    "TLS",
    "TLSv1",
    "SSL",
    "Default",
    "SHA1WithRSAEncryption",
    "SHA-256",
    "SHA1withDSA",
    "SHA256WithRSAEncryption",
    "SHA-1",
    "MD5WithRSAEncryption",
    "SHA-512",
    "SHA384WithRSAEncryption",
    "TLSv1.2",
    "SSLv3",
    "MD5",
    "RSA",
    "X509",
    "PKCS12PBE",
    "DESEDE",
    "PBEWITHMD5AND128BITAES-CBC-OPENSSL",
    "HMACSHA512",
    "SHA-512",
    "PBEWITHSHAAND128BITAES-CBC-BC",
    "ARC4",
    "DESEDEWRAP",
    "PBEWITHSHAAND2-KEYTRIPLEDES-CBC",
    "DES",
    "PBEWITHSHAANDTWOFISH-CBC",
    "PBEWITHSHAAND256BITAES-CBC-BC",
    "RSA",
    "ECDH",
    "SHA256WithRSAEncryption",
    "AES",
    "ECDSA",
    "AES",
    "DESEDE",
    "SHA-384",
    "AESWRAP",
    "PBEWITHMD5AND256BITAES-CBC-OPENSSL",
    "PBEWITHSHA1ANDDES",
    "HMACSHA1",
    "PBEWITHHMACSHA1",
    "PBEWITHMD5ANDDES",
    "PBEWITHMD5ANDDES",
    "BLOWFISH",
    "MD5",
    "PBEWITHSHAANDTWOFISH-CBC",
    "ARC4",
    "BLOWFISH",
    "PBEWITHSHAAND40BITRC2-CBC",
    "HMACMD5",
    "PBEWITHSHAAND128BITRC4",
    "HMACSHA256",
    "PBEWITHSHA256AND256BITAES-CBC-BC",
    "PBEWITHSHA256AND192BITAES-CBC-BC",
    "HMACSHA384",
    "BLOWFISH",
    "PBEWITHSHAAND128BITRC2-CBC",
    "SHA384WITHECDSA",
    "PKIX",
    "HMACSHA1",
    "PBEWITHMD5ANDRC2",
    "SHA512WithRSAEncryption",
    "DSA",
    "PBEWITHSHA1ANDDES",
    "PBEWITHSHAAND128BITRC4",
    "PBEWITHSHA256AND128BITAES-CBC-BC",
    "SHA1withDSA",
    "PBEWITHSHAAND256BITAES-CBC-BC",
    "NONEWITHDSA",
    "DH",
    "PBEWITHSHAAND2-KEYTRIPLEDES-CBC",
    "PBEWITHSHAAND40BITRC4",
    "SHA512WITHECDSA",
    "NONEwithECDSA",
    "DES",
    "PKCS12",
    "RSA",
    "PBEWITHMD5AND192BITAES-CBC-OPENSSL",
    "DH",
    "HMACSHA384",
    "PKIX",
    "RSA",
    "PBEWITHSHA1ANDRC2",
    "HMACSHA256",
    "Collection",
    "PBEWITHMD5AND128BITAES-CBC-OPENSSL",
    "DH",
    "DSA",
    "EC",
    "PBEWITHSHAAND40BITRC4",
    "MD5WithRSAEncryption",
    "PBEWITHMD5AND256BITAES-CBC-OPENSSL",
    "DES",
    "DESEDE",
    "SHA1WithRSAEncryption",
    "DESEDE",
    "PBEWITHSHA256AND128BITAES-CBC-BC",
    "AES",
    "PBEWITHSHAAND3-KEYTRIPLEDES-CBC",
    "EC",
    "DH",
    "SHA384WithRSAEncryption",
    "PBEWITHMD5AND192BITAES-CBC-OPENSSL",
    "PBEWITHSHAAND3-KEYTRIPLEDES-CBC",
    "PBEWITHSHA1ANDRC2",
    "PBEWITHHMACSHA",
    "SHA-1",
    "HMACSHA512",
    "HMACMD5",
    "PBEWITHHMACSHA1",
    "DSA",
    "PBKDF2WithHmacSHA1",
    "PBEWITHSHAAND128BITAES-CBC-BC",
    "SHA256WITHECDSA",
    "PBEWITHSHA256AND192BITAES-CBC-BC",
    "X.509",
    "PBEWITHSHAAND40BITRC2-CBC",
    "PBEWITHMD5ANDRC2",
    "BouncyCastle",
    "BKS",
    "DSA",
    "SHA-256",
    "PBEWITHSHA256AND256BITAES-CBC-BC",
    "OAEP",
    "PBEWITHSHAAND128BITRC2-CBC",
    "PBEWITHSHAAND192BITAES-CBC-BC",
    "PBEWITHSHAAND192BITAES-CBC-BC",
    "DES",
    "DH",
    "SHA-1",
    "DSA",
    "SHA1PRNG",
    "SHA1withDSA",
    "TLS",
    "SSL",
    "SSLv3",
    "AndroidCAStore",
    "X509",
    "TLSv1",
    "X509",
    ]

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    results["Uses Java Crypto Library"] = result
    return results

def run(dependencies,classes):
    #TODO : look for bouncycastle and different encryption standards
    global result
    log.info("Analysis: Java Crypto Libs")
    result["Depends on Spongycastle"] = False
    result["Depends on JavaX Crypto"] = False
    for d in dependencies["internal"]:
        if d.startswith("javax/crypto"):
            result["Depends on JavaX Crypto"] = True
        if d.startswith("spongycastle"):
            result["Depends on Spongycastle"] = True
    for d in dependencies["external"]:
        if d.startswith("javax/crypto"):
            result["Depends on JavaX Crypto"] = True
        if d.startswith("spongycastle"):
            result["Depends on Spongycastle"] = True

    #result["Deep Analysis"]= analysisUtils.findObjects(classes,"javax/crypto")
