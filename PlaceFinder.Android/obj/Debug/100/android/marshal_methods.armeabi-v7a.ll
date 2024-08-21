; ModuleID = 'obj\Debug\100\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\100\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [242 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 68
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 97
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 19
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 92
	i32 88799905, ; 4: Acr.UserDialogs => 0x54afaa1 => 7
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 82
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 82
	i32 164065134, ; 7: Unity.Abstractions => 0x9c76f6e => 37
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 49
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 83
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 47
	i32 220171995, ; 11: System.Diagnostics.Debug => 0xd1f8edb => 110
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 63
	i32 231814094, ; 13: System.Globalization => 0xdd133ce => 118
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 104
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 52
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 67
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 61
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 39
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 29
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 65
	i32 385762202, ; 21: System.Memory.dll => 0x16fe439a => 28
	i32 441335492, ; 22: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 51
	i32 442521989, ; 23: Xamarin.Essentials => 0x1a605985 => 91
	i32 442565967, ; 24: System.Collections => 0x1a61054f => 106
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 60
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 18
	i32 469710990, ; 27: System.dll => 0x1bff388e => 27
	i32 476646585, ; 28: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 61
	i32 486930444, ; 29: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 72
	i32 498788369, ; 30: System.ObjectModel => 0x1dbae811 => 117
	i32 501000162, ; 31: Prism.dll => 0x1ddca7e2 => 21
	i32 520798577, ; 32: FFImageLoading.Platform => 0x1f0ac171 => 13
	i32 526420162, ; 33: System.Transactions.dll => 0x1f6088c2 => 99
	i32 545304856, ; 34: System.Runtime.Extensions => 0x2080b118 => 113
	i32 548916678, ; 35: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 16
	i32 605376203, ; 36: System.IO.Compression.FileSystem => 0x24154ecb => 102
	i32 627609679, ; 37: Xamarin.AndroidX.CustomView => 0x2568904f => 56
	i32 662205335, ; 38: System.Text.Encodings.Web.dll => 0x27787397 => 33
	i32 663517072, ; 39: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 88
	i32 666292255, ; 40: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 44
	i32 690569205, ; 41: System.Xml.Linq.dll => 0x29293ff5 => 36
	i32 691439157, ; 42: Acr.UserDialogs.dll => 0x29368635 => 7
	i32 775507847, ; 43: System.IO.Compression => 0x2e394f87 => 101
	i32 809851609, ; 44: System.Drawing.Common.dll => 0x30455ad9 => 2
	i32 843511501, ; 45: Xamarin.AndroidX.Print => 0x3246f6cd => 79
	i32 877678880, ; 46: System.Globalization.dll => 0x34505120 => 118
	i32 928116545, ; 47: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 97
	i32 955402788, ; 48: Newtonsoft.Json => 0x38f24a24 => 19
	i32 967690846, ; 49: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 65
	i32 974778368, ; 50: FormsViewGroup.dll => 0x3a19f000 => 14
	i32 992768348, ; 51: System.Collections.dll => 0x3b2c715c => 106
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 81
	i32 1035644815, ; 53: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 43
	i32 1042160112, ; 54: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 94
	i32 1052210849, ; 55: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 69
	i32 1098259244, ; 56: System => 0x41761b2c => 27
	i32 1175144683, ; 57: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 86
	i32 1178241025, ; 58: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 76
	i32 1204270330, ; 59: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 44
	i32 1218518409, ; 60: Prism.Unity.Forms.dll => 0x48a11d89 => 23
	i32 1267360935, ; 61: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 87
	i32 1293217323, ; 62: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 58
	i32 1324164729, ; 63: System.Linq => 0x4eed2679 => 116
	i32 1364015309, ; 64: System.IO => 0x514d38cd => 109
	i32 1365406463, ; 65: System.ServiceModel.Internals.dll => 0x516272ff => 105
	i32 1376866003, ; 66: Xamarin.AndroidX.SavedState => 0x52114ed3 => 81
	i32 1379779777, ; 67: System.Resources.ResourceManager => 0x523dc4c1 => 3
	i32 1395857551, ; 68: Xamarin.AndroidX.Media.dll => 0x5333188f => 73
	i32 1406073936, ; 69: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 53
	i32 1411638395, ; 70: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 31
	i32 1440999970, ; 71: Unity.Container => 0x55e3ea22 => 38
	i32 1457743152, ; 72: System.Runtime.Extensions.dll => 0x56e36530 => 113
	i32 1460219004, ; 73: Xamarin.Forms.Xaml => 0x57092c7c => 95
	i32 1462112819, ; 74: System.IO.Compression.dll => 0x57261233 => 101
	i32 1469204771, ; 75: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 42
	i32 1530772511, ; 76: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 12
	i32 1543031311, ; 77: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 115
	i32 1550322496, ; 78: System.Reflection.Extensions.dll => 0x5c680b40 => 5
	i32 1582372066, ; 79: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 57
	i32 1592978981, ; 80: System.Runtime.Serialization.dll => 0x5ef2ee25 => 6
	i32 1622152042, ; 81: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 71
	i32 1624863272, ; 82: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 90
	i32 1636350590, ; 83: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 55
	i32 1639515021, ; 84: System.Net.Http.dll => 0x61b9038d => 4
	i32 1639986890, ; 85: System.Text.RegularExpressions => 0x61c036ca => 115
	i32 1657153582, ; 86: System.Runtime => 0x62c6282e => 32
	i32 1658241508, ; 87: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 84
	i32 1658251792, ; 88: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 96
	i32 1670060433, ; 89: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 52
	i32 1677501392, ; 90: System.Net.Primitives.dll => 0x63fca3d0 => 111
	i32 1701541528, ; 91: System.Diagnostics.Debug.dll => 0x656b7698 => 110
	i32 1726116996, ; 92: System.Reflection.dll => 0x66e27484 => 107
	i32 1729485958, ; 93: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 48
	i32 1765942094, ; 94: System.Reflection.Extensions => 0x6942234e => 5
	i32 1766324549, ; 95: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 83
	i32 1776026572, ; 96: System.Core.dll => 0x69dc03cc => 26
	i32 1788241197, ; 97: Xamarin.AndroidX.Fragment => 0x6a96652d => 60
	i32 1793089559, ; 98: FFImageLoading.Forms.dll => 0x6ae06017 => 11
	i32 1796167890, ; 99: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 16
	i32 1808609942, ; 100: Xamarin.AndroidX.Loader => 0x6bcd3296 => 71
	i32 1813201214, ; 101: Xamarin.Google.Android.Material => 0x6c13413e => 96
	i32 1818569960, ; 102: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 77
	i32 1840964413, ; 103: FFImageLoading.Forms => 0x6dbae33d => 11
	i32 1849271627, ; 104: Prism.Forms.dll => 0x6e39a54b => 22
	i32 1867746548, ; 105: Xamarin.Essentials.dll => 0x6f538cf4 => 91
	i32 1878053835, ; 106: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 95
	i32 1885316902, ; 107: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 45
	i32 1900610850, ; 108: System.Resources.ResourceManager.dll => 0x71490522 => 3
	i32 1919157823, ; 109: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 74
	i32 2011961780, ; 110: System.Buffers.dll => 0x77ec19b4 => 25
	i32 2019465201, ; 111: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 69
	i32 2028864565, ; 112: Essential.Interfaces.dll => 0x78ee0435 => 9
	i32 2055257422, ; 113: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 66
	i32 2065833063, ; 114: Unity.Container.dll => 0x7b221c67 => 38
	i32 2066202781, ; 115: Prism => 0x7b27c09d => 21
	i32 2071567643, ; 116: PlaceFinder.Android.dll => 0x7b799d1b => 0
	i32 2079903147, ; 117: System.Runtime.dll => 0x7bf8cdab => 32
	i32 2090596640, ; 118: System.Numerics.Vectors => 0x7c9bf920 => 30
	i32 2097448633, ; 119: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 62
	i32 2126786730, ; 120: Xamarin.Forms.Platform.Android => 0x7ec430aa => 93
	i32 2193016926, ; 121: System.ObjectModel.dll => 0x82b6c85e => 117
	i32 2201231467, ; 122: System.Net.Http => 0x8334206b => 4
	i32 2217644978, ; 123: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 86
	i32 2244775296, ; 124: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 72
	i32 2248076451, ; 125: PlaceFinder => 0x85feeca3 => 20
	i32 2256548716, ; 126: Xamarin.AndroidX.MultiDex => 0x8680336c => 74
	i32 2261435625, ; 127: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 64
	i32 2279755925, ; 128: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 80
	i32 2286425669, ; 129: PlaceFinder.dll => 0x88481645 => 20
	i32 2315684594, ; 130: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 40
	i32 2340826669, ; 131: FFImageLoading.dll => 0x8b862e2d => 10
	i32 2353062107, ; 132: System.Net.Primitives => 0x8c40e0db => 111
	i32 2409053734, ; 133: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 78
	i32 2454642406, ; 134: System.Text.Encoding.dll => 0x924edee6 => 114
	i32 2465532216, ; 135: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 51
	i32 2471841756, ; 136: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 137: Java.Interop.dll => 0x93918882 => 15
	i32 2501346920, ; 138: System.Data.DataSetExtensions => 0x95178668 => 100
	i32 2505896520, ; 139: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 68
	i32 2563143864, ; 140: AndHUD.dll => 0x98c678b8 => 8
	i32 2570120770, ; 141: System.Text.Encodings.Web => 0x9930ee42 => 33
	i32 2581819634, ; 142: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 87
	i32 2620871830, ; 143: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 55
	i32 2624644809, ; 144: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 59
	i32 2633051222, ; 145: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 67
	i32 2693849962, ; 146: System.IO.dll => 0xa090e36a => 109
	i32 2701096212, ; 147: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 84
	i32 2715334215, ; 148: System.Threading.Tasks.dll => 0xa1d8b647 => 108
	i32 2732626843, ; 149: Xamarin.AndroidX.Activity => 0xa2e0939b => 39
	i32 2737747696, ; 150: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 42
	i32 2766581644, ; 151: Xamarin.Forms.Core => 0xa4e6af8c => 92
	i32 2778768386, ; 152: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 89
	i32 2810250172, ; 153: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 53
	i32 2819470561, ; 154: System.Xml.dll => 0xa80db4e1 => 35
	i32 2842369275, ; 155: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 12
	i32 2853208004, ; 156: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 89
	i32 2855708567, ; 157: Xamarin.AndroidX.Transition => 0xaa36a797 => 85
	i32 2873222696, ; 158: FFImageLoading => 0xab41e628 => 10
	i32 2901442782, ; 159: System.Reflection => 0xacf080de => 107
	i32 2903344695, ; 160: System.ComponentModel.Composition => 0xad0d8637 => 103
	i32 2905242038, ; 161: mscorlib.dll => 0xad2a79b6 => 18
	i32 2916838712, ; 162: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 90
	i32 2919462931, ; 163: System.Numerics.Vectors.dll => 0xae037813 => 30
	i32 2921128767, ; 164: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 41
	i32 2923486322, ; 165: Prism.Unity.Forms => 0xae40dc72 => 23
	i32 2978675010, ; 166: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 58
	i32 3024354802, ; 167: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 63
	i32 3044182254, ; 168: FormsViewGroup => 0xb57288ee => 14
	i32 3057625584, ; 169: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 75
	i32 3075834255, ; 170: System.Threading.Tasks => 0xb755818f => 108
	i32 3111772706, ; 171: System.Runtime.Serialization => 0xb979e222 => 6
	i32 3124832203, ; 172: System.Threading.Tasks.Extensions => 0xba4127cb => 119
	i32 3171145621, ; 173: PlaceFinder.Android => 0xbd03d795 => 0
	i32 3204380047, ; 174: System.Data.dll => 0xbefef58f => 98
	i32 3211777861, ; 175: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 57
	i32 3220365878, ; 176: System.Threading => 0xbff2e236 => 112
	i32 3247949154, ; 177: Mono.Security => 0xc197c562 => 120
	i32 3249260365, ; 178: RestSharp.dll => 0xc1abc74d => 24
	i32 3258312781, ; 179: Xamarin.AndroidX.CardView => 0xc235e84d => 48
	i32 3265893370, ; 180: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 119
	i32 3267021929, ; 181: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 46
	i32 3299363146, ; 182: System.Text.Encoding => 0xc4a8494a => 114
	i32 3317135071, ; 183: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 56
	i32 3317144872, ; 184: System.Data => 0xc5b79d28 => 98
	i32 3340431453, ; 185: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 45
	i32 3346324047, ; 186: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 76
	i32 3353484488, ; 187: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 62
	i32 3358260929, ; 188: System.Text.Json => 0xc82afec1 => 34
	i32 3362522851, ; 189: Xamarin.AndroidX.Core => 0xc86c06e3 => 54
	i32 3366347497, ; 190: Java.Interop => 0xc8a662e9 => 15
	i32 3374999561, ; 191: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 80
	i32 3395150330, ; 192: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 31
	i32 3404865022, ; 193: System.ServiceModel.Internals => 0xcaf21dfe => 105
	i32 3429136800, ; 194: System.Xml => 0xcc6479a0 => 35
	i32 3430777524, ; 195: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 196: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 59
	i32 3442543374, ; 197: AndHUD => 0xcd310b0e => 8
	i32 3476120550, ; 198: Mono.Android => 0xcf3163e6 => 17
	i32 3485117614, ; 199: System.Text.Json.dll => 0xcfbaacae => 34
	i32 3486566296, ; 200: System.Transactions => 0xcfd0c798 => 99
	i32 3493954962, ; 201: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 50
	i32 3501239056, ; 202: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 46
	i32 3509114376, ; 203: System.Xml.Linq => 0xd128d608 => 36
	i32 3536029504, ; 204: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 93
	i32 3567349600, ; 205: System.ComponentModel.Composition.dll => 0xd4a16f60 => 103
	i32 3608519521, ; 206: System.Linq.dll => 0xd715a361 => 116
	i32 3618140916, ; 207: Xamarin.AndroidX.Preference => 0xd7a872f4 => 78
	i32 3627220390, ; 208: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 79
	i32 3632359727, ; 209: Xamarin.Forms.Platform => 0xd881692f => 94
	i32 3633644679, ; 210: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 41
	i32 3641597786, ; 211: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 66
	i32 3672681054, ; 212: Mono.Android.dll => 0xdae8aa5e => 17
	i32 3676310014, ; 213: System.Web.Services.dll => 0xdb2009fe => 104
	i32 3682565725, ; 214: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 47
	i32 3684561358, ; 215: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 50
	i32 3689375977, ; 216: System.Drawing.Common => 0xdbe768e9 => 2
	i32 3718780102, ; 217: Xamarin.AndroidX.Annotation => 0xdda814c6 => 40
	i32 3724971120, ; 218: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 75
	i32 3733882439, ; 219: Unity.Abstractions.dll => 0xde8e8647 => 37
	i32 3758932259, ; 220: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 64
	i32 3786282454, ; 221: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 49
	i32 3816437471, ; 222: RestSharp => 0xe37a36df => 24
	i32 3822602673, ; 223: Xamarin.AndroidX.Media => 0xe3d849b1 => 73
	i32 3829621856, ; 224: System.Numerics.dll => 0xe4436460 => 29
	i32 3885922214, ; 225: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 85
	i32 3896760992, ; 226: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 54
	i32 3920810846, ; 227: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 102
	i32 3921031405, ; 228: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 88
	i32 3931092270, ; 229: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 77
	i32 3945713374, ; 230: System.Data.DataSetExtensions.dll => 0xeb2ecede => 100
	i32 3955647286, ; 231: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 43
	i32 4025784931, ; 232: System.Memory => 0xeff49a63 => 28
	i32 4073602200, ; 233: System.Threading.dll => 0xf2ce3c98 => 112
	i32 4085261167, ; 234: Prism.Forms => 0xf380236f => 22
	i32 4105002889, ; 235: Mono.Security.dll => 0xf4ad5f89 => 120
	i32 4151237749, ; 236: System.Core => 0xf76edc75 => 26
	i32 4182413190, ; 237: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 70
	i32 4184283386, ; 238: FFImageLoading.Platform.dll => 0xf96718fa => 13
	i32 4260525087, ; 239: System.Buffers => 0xfdf2741f => 25
	i32 4292120959, ; 240: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 70
	i32 4293553716 ; 241: Essential.Interfaces => 0xffea6e34 => 9
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [242 x i32] [
	i32 68, i32 97, i32 19, i32 92, i32 7, i32 82, i32 82, i32 37, ; 0..7
	i32 49, i32 83, i32 47, i32 110, i32 63, i32 118, i32 104, i32 52, ; 8..15
	i32 67, i32 61, i32 39, i32 29, i32 65, i32 28, i32 51, i32 91, ; 16..23
	i32 106, i32 60, i32 18, i32 27, i32 61, i32 72, i32 117, i32 21, ; 24..31
	i32 13, i32 99, i32 113, i32 16, i32 102, i32 56, i32 33, i32 88, ; 32..39
	i32 44, i32 36, i32 7, i32 101, i32 2, i32 79, i32 118, i32 97, ; 40..47
	i32 19, i32 65, i32 14, i32 106, i32 81, i32 43, i32 94, i32 69, ; 48..55
	i32 27, i32 86, i32 76, i32 44, i32 23, i32 87, i32 58, i32 116, ; 56..63
	i32 109, i32 105, i32 81, i32 3, i32 73, i32 53, i32 31, i32 38, ; 64..71
	i32 113, i32 95, i32 101, i32 42, i32 12, i32 115, i32 5, i32 57, ; 72..79
	i32 6, i32 71, i32 90, i32 55, i32 4, i32 115, i32 32, i32 84, ; 80..87
	i32 96, i32 52, i32 111, i32 110, i32 107, i32 48, i32 5, i32 83, ; 88..95
	i32 26, i32 60, i32 11, i32 16, i32 71, i32 96, i32 77, i32 11, ; 96..103
	i32 22, i32 91, i32 95, i32 45, i32 3, i32 74, i32 25, i32 69, ; 104..111
	i32 9, i32 66, i32 38, i32 21, i32 0, i32 32, i32 30, i32 62, ; 112..119
	i32 93, i32 117, i32 4, i32 86, i32 72, i32 20, i32 74, i32 64, ; 120..127
	i32 80, i32 20, i32 40, i32 10, i32 111, i32 78, i32 114, i32 51, ; 128..135
	i32 1, i32 15, i32 100, i32 68, i32 8, i32 33, i32 87, i32 55, ; 136..143
	i32 59, i32 67, i32 109, i32 84, i32 108, i32 39, i32 42, i32 92, ; 144..151
	i32 89, i32 53, i32 35, i32 12, i32 89, i32 85, i32 10, i32 107, ; 152..159
	i32 103, i32 18, i32 90, i32 30, i32 41, i32 23, i32 58, i32 63, ; 160..167
	i32 14, i32 75, i32 108, i32 6, i32 119, i32 0, i32 98, i32 57, ; 168..175
	i32 112, i32 120, i32 24, i32 48, i32 119, i32 46, i32 114, i32 56, ; 176..183
	i32 98, i32 45, i32 76, i32 62, i32 34, i32 54, i32 15, i32 80, ; 184..191
	i32 31, i32 105, i32 35, i32 1, i32 59, i32 8, i32 17, i32 34, ; 192..199
	i32 99, i32 50, i32 46, i32 36, i32 93, i32 103, i32 116, i32 78, ; 200..207
	i32 79, i32 94, i32 41, i32 66, i32 17, i32 104, i32 47, i32 50, ; 208..215
	i32 2, i32 40, i32 75, i32 37, i32 64, i32 49, i32 24, i32 73, ; 216..223
	i32 29, i32 85, i32 54, i32 102, i32 88, i32 77, i32 100, i32 43, ; 224..231
	i32 28, i32 112, i32 22, i32 120, i32 26, i32 70, i32 13, i32 25, ; 232..239
	i32 70, i32 9 ; 240..241
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
