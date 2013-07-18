.class public Lcom/tndev/billing/util/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DECODE:Z = false

.field public static final ENCODE:Z = true

.field static final synthetic a:Z

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v5, -0x5

    const/16 v4, -0x9

    .line 41
    const-class v0, Lcom/tndev/billing/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_4fc

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/tndev/billing/util/Base64;->a:Z

    .line 58
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_500

    .line 57
    sput-object v0, Lcom/tndev/billing/util/Base64;->b:[B

    .line 76
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_524

    .line 75
    sput-object v0, Lcom/tndev/billing/util/Base64;->c:[B

    .line 94
    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 95
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 96
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 97
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 98
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 99
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 100
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 101
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    .line 102
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2c

    .line 103
    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    aput-byte v4, v0, v2

    const/16 v2, 0x2e

    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 104
    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x30

    .line 105
    const/16 v3, 0x34

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x36

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x37

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x39

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x3c

    aput-byte v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    .line 106
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 107
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 108
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x42

    .line 109
    aput-byte v1, v0, v2

    const/16 v2, 0x43

    aput-byte v6, v0, v2

    const/16 v2, 0x44

    aput-byte v7, v0, v2

    const/16 v2, 0x45

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    const/16 v2, 0x46

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/16 v2, 0x47

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    const/16 v2, 0x48

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/16 v2, 0x4a

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    const/16 v2, 0x4c

    const/16 v3, 0xb

    aput-byte v3, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    const/16 v2, 0x4e

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    const/16 v2, 0x4f

    .line 110
    const/16 v3, 0xe

    aput-byte v3, v0, v2

    const/16 v2, 0x50

    const/16 v3, 0xf

    aput-byte v3, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/16 v2, 0x52

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/16 v2, 0x53

    const/16 v3, 0x12

    aput-byte v3, v0, v2

    const/16 v2, 0x54

    const/16 v3, 0x13

    aput-byte v3, v0, v2

    const/16 v2, 0x55

    const/16 v3, 0x14

    aput-byte v3, v0, v2

    const/16 v2, 0x56

    const/16 v3, 0x15

    aput-byte v3, v0, v2

    const/16 v2, 0x57

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/16 v2, 0x58

    const/16 v3, 0x17

    aput-byte v3, v0, v2

    const/16 v2, 0x59

    const/16 v3, 0x18

    aput-byte v3, v0, v2

    const/16 v2, 0x5a

    const/16 v3, 0x19

    aput-byte v3, v0, v2

    const/16 v2, 0x5b

    .line 111
    aput-byte v4, v0, v2

    const/16 v2, 0x5c

    aput-byte v4, v0, v2

    const/16 v2, 0x5d

    aput-byte v4, v0, v2

    const/16 v2, 0x5e

    aput-byte v4, v0, v2

    const/16 v2, 0x5f

    aput-byte v4, v0, v2

    const/16 v2, 0x60

    aput-byte v4, v0, v2

    const/16 v2, 0x61

    .line 112
    const/16 v3, 0x1a

    aput-byte v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x1b

    aput-byte v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x1c

    aput-byte v3, v0, v2

    const/16 v2, 0x64

    const/16 v3, 0x1d

    aput-byte v3, v0, v2

    const/16 v2, 0x65

    const/16 v3, 0x1e

    aput-byte v3, v0, v2

    const/16 v2, 0x66

    const/16 v3, 0x1f

    aput-byte v3, v0, v2

    const/16 v2, 0x67

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    const/16 v2, 0x68

    const/16 v3, 0x21

    aput-byte v3, v0, v2

    const/16 v2, 0x69

    const/16 v3, 0x22

    aput-byte v3, v0, v2

    const/16 v2, 0x6a

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    const/16 v2, 0x6b

    const/16 v3, 0x24

    aput-byte v3, v0, v2

    const/16 v2, 0x6c

    const/16 v3, 0x25

    aput-byte v3, v0, v2

    const/16 v2, 0x6d

    const/16 v3, 0x26

    aput-byte v3, v0, v2

    const/16 v2, 0x6e

    .line 113
    const/16 v3, 0x27

    aput-byte v3, v0, v2

    const/16 v2, 0x6f

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    const/16 v2, 0x70

    const/16 v3, 0x29

    aput-byte v3, v0, v2

    const/16 v2, 0x71

    const/16 v3, 0x2a

    aput-byte v3, v0, v2

    const/16 v2, 0x72

    const/16 v3, 0x2b

    aput-byte v3, v0, v2

    const/16 v2, 0x73

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    const/16 v2, 0x74

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    const/16 v2, 0x75

    const/16 v3, 0x2e

    aput-byte v3, v0, v2

    const/16 v2, 0x76

    const/16 v3, 0x2f

    aput-byte v3, v0, v2

    const/16 v2, 0x77

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    const/16 v2, 0x78

    const/16 v3, 0x31

    aput-byte v3, v0, v2

    const/16 v2, 0x79

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/16 v2, 0x7a

    const/16 v3, 0x33

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    .line 114
    aput-byte v4, v0, v2

    const/16 v2, 0x7c

    aput-byte v4, v0, v2

    const/16 v2, 0x7d

    aput-byte v4, v0, v2

    const/16 v2, 0x7e

    aput-byte v4, v0, v2

    const/16 v2, 0x7f

    aput-byte v4, v0, v2

    .line 94
    sput-object v0, Lcom/tndev/billing/util/Base64;->d:[B

    .line 129
    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 130
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 131
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 132
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 133
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 134
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 135
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 136
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    aput-byte v4, v0, v2

    const/16 v2, 0x2c

    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    .line 137
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2e

    .line 138
    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    aput-byte v4, v0, v2

    const/16 v2, 0x30

    .line 139
    const/16 v3, 0x34

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x36

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x37

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x39

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x3c

    aput-byte v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    .line 140
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 141
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 142
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x42

    .line 143
    aput-byte v1, v0, v2

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 144
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 145
    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    .line 146
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 147
    aput-byte v4, v0, v1

    const/16 v1, 0x61

    .line 148
    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 149
    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 150
    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    .line 128
    sput-object v0, Lcom/tndev/billing/util/Base64;->e:[B

    .line 166
    return-void

    .line 41
    :cond_4fc
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 58
    nop

    :array_500
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 76
    :array_524
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method private static a([BI[BI[B)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x3d

    .line 378
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_22

    .line 380
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    .line 381
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    .line 380
    or-int/2addr v0, v1

    .line 383
    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 384
    const/4 v0, 0x1

    .line 406
    :goto_21
    return v0

    .line 385
    :cond_22
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_54

    .line 388
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    .line 389
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    .line 388
    or-int/2addr v0, v1

    .line 390
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    .line 388
    or-int/2addr v0, v1

    .line 392
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 393
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 394
    const/4 v0, 0x2

    goto :goto_21

    .line 398
    :cond_54
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    .line 399
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    .line 398
    or-int/2addr v0, v1

    .line 400
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    .line 398
    or-int/2addr v0, v1

    .line 401
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    .line 398
    or-int/2addr v0, v1

    .line 403
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 404
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 405
    add-int/lit8 v1, p3, 0x2

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 406
    const/4 v0, 0x3

    goto :goto_21
.end method

.method private static a([BII[BI[B)[B
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x3d

    const/4 v0, 0x0

    .line 210
    if-lez p2, :cond_28

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    move v2, v1

    .line 211
    :goto_c
    const/4 v1, 0x1

    if-le p2, v1, :cond_2a

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    .line 210
    :goto_17
    or-int/2addr v1, v2

    .line 212
    const/4 v2, 0x2

    if-le p2, v2, :cond_23

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    .line 210
    :cond_23
    or-int/2addr v0, v1

    .line 214
    packed-switch p2, :pswitch_data_88

    .line 234
    :goto_27
    return-object p3

    :cond_28
    move v2, v0

    .line 210
    goto :goto_c

    :cond_2a
    move v1, v0

    .line 211
    goto :goto_17

    .line 216
    :pswitch_2c
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 217
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 218
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 219
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p5, v0

    aput-byte v0, p3, v1

    goto :goto_27

    .line 222
    :pswitch_4f
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 223
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 224
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p5, v0

    aput-byte v0, p3, v1

    .line 225
    add-int/lit8 v0, p4, 0x3

    aput-byte v3, p3, v0

    goto :goto_27

    .line 228
    :pswitch_6e
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 229
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p5, v0

    aput-byte v0, p3, v1

    .line 230
    add-int/lit8 v0, p4, 0x2

    aput-byte v3, p3, v0

    .line 231
    add-int/lit8 v0, p4, 0x3

    aput-byte v3, p3, v0

    goto :goto_27

    .line 214
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_4f
        :pswitch_2c
    .end packed-switch
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 4
    .parameter

    .prologue
    .line 419
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 420
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/tndev/billing/util/Base64;->decode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([B)[B
    .registers 3
    .parameter

    .prologue
    .line 445
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/tndev/billing/util/Base64;->decode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII)[B
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    sget-object v0, Lcom/tndev/billing/util/Base64;->d:[B

    invoke-static {p0, p1, p2, v0}, Lcom/tndev/billing/util/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII[B)[B
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x3d

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 504
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 505
    add-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 508
    new-array v6, v10, [B

    move v4, v1

    move v2, v1

    move v3, v1

    .line 513
    :goto_12
    if-lt v4, p2, :cond_2f

    .line 557
    :cond_14
    if-eqz v2, :cond_d6

    .line 558
    if-ne v2, v9, :cond_cd

    .line 559
    new-instance v0, Lcom/tndev/billing/util/Base64DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "single trailing character at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-direct {v0, v1}, Lcom/tndev/billing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_2f
    add-int v0, v4, p1

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v7, v0

    .line 515
    aget-byte v0, p3, v7

    .line 517
    const/4 v8, -0x5

    if-lt v0, v8, :cond_a4

    .line 518
    const/4 v8, -0x1

    if-lt v0, v8, :cond_de

    .line 521
    if-ne v7, v11, :cond_90

    .line 522
    sub-int v0, p2, v4

    .line 523
    add-int/lit8 v7, p2, -0x1

    add-int/2addr v7, p1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    .line 524
    if-eqz v2, :cond_4e

    if-ne v2, v9, :cond_63

    .line 525
    :cond_4e
    new-instance v0, Lcom/tndev/billing/util/Base64DecoderException;

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid padding byte \'=\' at byte offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-direct {v0, v1}, Lcom/tndev/billing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_63
    const/4 v8, 0x3

    if-ne v2, v8, :cond_69

    const/4 v8, 0x2

    if-gt v0, v8, :cond_6d

    .line 528
    :cond_69
    if-ne v2, v10, :cond_82

    if-le v0, v9, :cond_82

    .line 529
    :cond_6d
    new-instance v0, Lcom/tndev/billing/util/Base64DecoderException;

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-direct {v0, v1}, Lcom/tndev/billing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_82
    if-eq v7, v11, :cond_14

    const/16 v0, 0xa

    if-eq v7, v0, :cond_14

    .line 533
    new-instance v0, Lcom/tndev/billing/util/Base64DecoderException;

    .line 534
    const-string v1, "encoded value has invalid trailing byte"

    .line 533
    invoke-direct {v0, v1}, Lcom/tndev/billing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_90
    add-int/lit8 v0, v2, 0x1

    aput-byte v7, v6, v2

    .line 540
    if-ne v0, v10, :cond_dc

    .line 541
    invoke-static {v6, v1, v5, v3, p3}, Lcom/tndev/billing/util/Base64;->a([BI[BI[B)I

    move-result v0

    add-int/2addr v0, v3

    move v2, v0

    move v0, v1

    .line 513
    :goto_9d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto/16 :goto_12

    .line 546
    :cond_a4
    new-instance v0, Lcom/tndev/billing/util/Base64DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad Base64 input character at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 547
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, v4, p1

    aget-byte v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-direct {v0, v1}, Lcom/tndev/billing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_cd
    add-int/lit8 v0, v2, 0x1

    aput-byte v11, v6, v2

    .line 563
    invoke-static {v6, v1, v5, v3, p3}, Lcom/tndev/billing/util/Base64;->a([BI[BI[B)I

    move-result v0

    add-int/2addr v3, v0

    .line 566
    :cond_d6
    new-array v0, v3, [B

    .line 567
    invoke-static {v5, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    return-object v0

    :cond_dc
    move v2, v3

    goto :goto_9d

    :cond_de
    move v0, v2

    move v2, v3

    goto :goto_9d
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .registers 4
    .parameter

    .prologue
    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 432
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/tndev/billing/util/Base64;->decodeWebSafe([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeWebSafe([B)[B
    .registers 3
    .parameter

    .prologue
    .line 458
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/tndev/billing/util/Base64;->decodeWebSafe([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeWebSafe([BII)[B
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    sget-object v0, Lcom/tndev/billing/util/Base64;->e:[B

    invoke-static {p0, p1, p2, v0}, Lcom/tndev/billing/util/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x0

    array-length v1, p0

    sget-object v2, Lcom/tndev/billing/util/Base64;->b:[B

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tndev/billing/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII[BZ)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tndev/billing/util/Base64;->encode([BII[BI)[B

    move-result-object v1

    .line 275
    array-length v0, v1

    .line 279
    :goto_8
    if-nez p4, :cond_c

    if-gtz v0, :cond_13

    .line 286
    :cond_c
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    .line 280
    :cond_13
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_c

    .line 283
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public static encode([BII[BI)[B
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x0

    .line 301
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 302
    mul-int/lit8 v0, v0, 0x4

    .line 304
    div-int v2, v0, p4

    .line 303
    add-int/2addr v0, v2

    new-array v3, v0, [B

    .line 308
    add-int/lit8 v5, p2, -0x2

    move v6, v1

    move v4, v1

    move v2, v1

    .line 310
    :goto_13
    if-lt v2, v5, :cond_39

    .line 332
    if-ge v2, p2, :cond_2c

    .line 333
    add-int v1, v2, p1

    sub-int v2, p2, v2

    move-object v0, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/tndev/billing/util/Base64;->a([BII[BI[B)[B

    .line 335
    add-int/lit8 v0, v6, 0x4

    .line 336
    if-ne v0, p4, :cond_2a

    .line 338
    add-int/lit8 v0, v4, 0x4

    aput-byte v9, v3, v0

    .line 339
    add-int/lit8 v4, v4, 0x1

    .line 341
    :cond_2a
    add-int/lit8 v4, v4, 0x4

    .line 344
    :cond_2c
    sget-boolean v0, Lcom/tndev/billing/util/Base64;->a:Z

    if-nez v0, :cond_88

    array-length v0, v3

    if-eq v4, v0, :cond_88

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 316
    :cond_39
    add-int v0, v2, p1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    .line 317
    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, p1

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x18

    ushr-int/lit8 v7, v7, 0x10

    .line 316
    or-int/2addr v0, v7

    .line 318
    add-int/lit8 v7, v2, 0x2

    add-int/2addr v7, p1

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x18

    ushr-int/lit8 v7, v7, 0x18

    .line 316
    or-int/2addr v0, v7

    .line 319
    ushr-int/lit8 v7, v0, 0x12

    aget-byte v7, p3, v7

    aput-byte v7, v3, v4

    .line 320
    add-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v8, v0, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, p3, v8

    aput-byte v8, v3, v7

    .line 321
    add-int/lit8 v7, v4, 0x2

    ushr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, p3, v8

    aput-byte v8, v3, v7

    .line 322
    add-int/lit8 v7, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p3, v0

    aput-byte v0, v3, v7

    .line 324
    add-int/lit8 v0, v6, 0x4

    .line 325
    if-ne v0, p4, :cond_82

    .line 326
    add-int/lit8 v0, v4, 0x4

    aput-byte v9, v3, v0

    .line 327
    add-int/lit8 v4, v4, 0x1

    move v0, v1

    .line 310
    :cond_82
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v4, v4, 0x4

    move v6, v0

    goto :goto_13

    .line 345
    :cond_88
    return-object v3
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 258
    const/4 v0, 0x0

    array-length v1, p0

    sget-object v2, Lcom/tndev/billing/util/Base64;->c:[B

    invoke-static {p0, v0, v1, v2, p1}, Lcom/tndev/billing/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
