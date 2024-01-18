'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "0a7c1abcb775e70116d02f9d2190b846",
"index.html": "62781df9eba69efe40c62deac85ee946",
"/": "62781df9eba69efe40c62deac85ee946",
"main.dart.js": "8548458ea1aba3c0679c8691de90bf71",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"cors.json": "718445b0bc62210b2f3494b7ad4459fb",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "78673e7f192e16dfa873e8cab0f2496f",
".git/ORIG_HEAD": "f229f071be3861eb5d7fa849b06e5be1",
".git/config": "ddd016566637ab16df43d82bd698f272",
".git/objects/61/82da537fd889fb9669d88a093293a651eda8f4": "73e63dd5d2565796b8bbca0cfcdd15ed",
".git/objects/0d/0f69ea0399fa45ad6e5791dc402fedf3a1a151": "4fa484b228fdcd91a44c00a131376556",
".git/objects/66/586bae7bffdd109cd024c6dc62cc8f3142a77a": "ee53b529d697d69f03b89c2938da2196",
".git/objects/3e/9aff48564f6b1b31e991990c669207ab7eb452": "44b9a9b6243f01664da636eddbd3dc65",
".git/objects/50/0caadba001d37bc8b8b4d1fe5a81abc1bd1f12": "b58807d2b1a4b89d8e7164066b6fb572",
".git/objects/68/404d902e9b224256b105be848addba62839a50": "92fbde91f32e63a583b196c0f3cbf4b5",
".git/objects/3b/317caf0a3568535279b7cfad3c4c51e1103b3a": "6642eeecb88be31d3800158e157798f2",
".git/objects/03/b388ad9ae5030f6204b93874d861b7cc23dfc6": "3e43e6ff5a5bd3ecdd6c994ccf02e5a5",
".git/objects/04/e5efc15dc0c60ea2ffcc37c5bf25e96689f44d": "978222f47488835b92838c74cb5c684c",
".git/objects/6a/b5bc69fa8ec68eecf1d1bd7603f0dd469aee2a": "05a12c14e64110ab952e5725b6cafef6",
".git/objects/32/91761d5d4531f40d829d8931d821a61193b687": "b391c10807be82dd4ffbfb290002dec9",
".git/objects/69/7bb6afee9a5092b27de00a5a8f7ba4c123d8a5": "f88ca436fe63030eed4f3cd235c79fbf",
".git/objects/69/f2f40311c37c54aa9209678dc5c92858729266": "7339418738825de5898cba3a5b8a902f",
".git/objects/3c/da5137103d49d2d79262cde5ad128300cacf99": "26ceaf01f35bdc9b48a4184e992fedbe",
".git/objects/56/d873ab97ee51139db616b734078c6a72b3e87f": "f179225e9964a5473c32a507878b22b4",
".git/objects/51/b4072f8577742a3054c0cec28890e27b5d1633": "7b21bd861b0c6b6b3eebe1f90c0303d4",
".git/objects/3d/069457d4ad6d5f363194ca5dbefcd096950389": "2f374d220c84733f03af761eb52d17e7",
".git/objects/0b/9a091958b071199bcdbe04eaae708a44c5655f": "8cc7f1ca603f536aeb9e75e3ab9a36fe",
".git/objects/94/b52e13bf7919ae4ea7235d78019b592dde8611": "b79fa5ca1cdbf72f253763797850f314",
".git/objects/0e/e3590f4d74c3a4e4621a8d048d01f13436ec7a": "25939fd9f3cb53628d90cf3f4f9a026a",
".git/objects/60/aa709b04d055dfacecf5e93eeba6c2b21d7241": "9bcaf68e3ff8e1fb5336d3d88d277400",
".git/objects/34/cfa5359b318c2e66222b58c518243ea9c090c8": "98764f111dcb7063a353633cccb035e9",
".git/objects/02/0fac4362cc9c993b96b482d4ea4349185b7026": "6a318b6fae3a571a264d7ea42deeaeca",
".git/objects/ac/c80950697829c0fc73da2e7b21bc724bd70d21": "efba0bd79dae106bddbe5dc57bde815b",
".git/objects/ad/405232a64cfefad426679cfc60da5f3548fe51": "708b6807a7dc12b2411bd4b75056163b",
".git/objects/bb/2e8875a993f9c7d9e45d0eeffa839550cc6287": "3ad141b01f3a79c62e799ae0a1b6dd7d",
".git/objects/bb/3085876799532613a08c7ebe43f24f0cc46864": "1b6aa21800d948d5513c15e54d131215",
".git/objects/d7/1fef0d13c2e6eaf3f27f30e0189387c9b69736": "932aaa49fbeb7ec1d7114eb7e1a432a7",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/df/4895c94cf14e8b28e6acecdb392b47ee44b4fd": "075b728da61397c1bdab5ea06d0ff768",
".git/objects/df/a72ce808fbb783042da88ce1bae5d9adb54fb6": "a8b2273e3e67083e15260d16437b2050",
".git/objects/df/7d2dcb89ab89da87467c0e1059b38c8d8f9296": "a44162ff357b024e4638ab18a9bb01c7",
".git/objects/b4/6a780017628bab2ea4a4f449008f00ad1f26f4": "23213cb597f982286efac8eec96406b3",
".git/objects/bd/2724c2fa85edb9884fa66d4a979f0b1d3c3308": "112577cd6cc75e88d820f6ffd496cfa1",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/f3/39a80268f358e16231b98a75af3a627f6994a3": "6800be2fa5cecf442d1b9512c9883535",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ee/b06eee841d882dd76ab660279ae738ea030450": "6b9ae1be7c1c28c00f33a6838355597e",
".git/objects/ca/c634cb4aeae9132d18ee789369f7efb4c983ea": "388b1d6554ca73bf5dc7a0253bed6a4b",
".git/objects/ed/e36fabe77258d002ddfff15d7ccf78433f01f4": "ef8cb26ff4576febba39af2c66a7d19f",
".git/objects/c6/9177e0f43c11c964a43f796efabe32027af41e": "067d6a36117c9792c40b5c9e81161a0c",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/4b/08c92a6448f807045994c6de22d8ee9093aaab": "73d0aae290bed3c22142aa1a7a3ba56f",
".git/objects/16/7685a249af36dccfebe308b7fc661dd8807cfe": "ef14eb6281cc7cd19a9aa0428bec7aa1",
".git/objects/89/15d96075d5acbf90b5dd7fe4e12b2968c863fa": "cf316b5d69b36ab0df915492699012f8",
".git/objects/87/a40ec391ad14c81c8036b68d2c2054996e13bb": "bf6383cb64cd2f3d696c6b9fcfd0ab09",
".git/objects/1a/072330a807ba9f247b6b51e234d8ac7c7c9ef8": "8936d95ee2ff16f68a5b241773feb651",
".git/objects/28/f432746c44f268a3cf27a255045cfacccca4d0": "aeca7b26154a948e0dacf04a744cca1b",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/7e/4818a53642d4e39557adcaadf360b8e0e7c375": "ca23af057f6d3bc157547159f9180210",
".git/objects/7e/1d2a5fc47ae706d9b43e9e3437abdbd0e10f07": "a0c88759acb859b26cc3f541c7a3f4f9",
".git/objects/10/01454125081f8f32cda0997b6e6e89152dbe15": "d06638a7bfc095491fba2aa096b180ef",
".git/objects/10/9c918485584bfab201cf882520e01e72940d58": "88ef02c75f23e4278e047c7c32ea2ddc",
".git/objects/21/fbc44b4bd22a05a34a3c37fe168ef952dc73f8": "3294a710bde6416e658dfb2be47c73ad",
".git/objects/81/e45e748f427551d6dc67f6edd149f2ae2da348": "ffb55d0a16f68cbc12ed0bb776db43fa",
".git/objects/86/502a966bfc2712293a3679201bb54219c43bfe": "65465ef52b107962501c920caed76a6d",
".git/objects/72/2ad824a2b2a3232688344b7f8aff2dde5f76ce": "43b4c3468a6b9ca1197b3f6763a2acb5",
".git/objects/2a/a9ec1355f0bbe17a01ef7b9e871523bfc8f0f5": "ed25a154076ca62a492a6b965d912f1b",
".git/objects/2f/1fff70ba615d64fc95c005c8af21ea2792b1de": "50e219b47ce1cb80cc3eba34a840c0ca",
".git/objects/43/40502d93c09da91560c862cabf3f6055704149": "4febd773f54af74582dda2576bb38c97",
".git/objects/43/e946e398d96aee466fa0aabb625f0889c3a4bd": "ac34520dee747f675e6e0a15c0bbd2be",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/36/9d71902024c84076ceaf09c955f39014b3ae44": "f7cf8e59108bba0c2fd6bd78b2aaeb31",
".git/objects/5c/c6b490a6d2abcb3104cd22d8091b93110b3719": "d4c8ffaa5603b7e1787b74cceb0cd761",
".git/objects/31/0a58c311b9ebd08a1507f8f94c726f98670d6e": "406f74a9c177f2bbec073a8edc6c268a",
".git/objects/3a/f6765371c9a061627b520a9c97bf02664c4f6b": "269fb78adfd69f094a2233721706079e",
".git/objects/98/c1c3d5b6f7b5452964b591fc4a0411ac2b5722": "28a456272ca9936adfc436942634b0ea",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/5e/da9ec96e91ba8e4a418e53af4483766e245d6d": "339f0cfcef1c87a0ca364f5c6a9052ca",
".git/objects/5b/fd533c0b1c473defe389ee09fcb31fbed3811d": "00a737c87de4cac0f141c3470f681eec",
".git/objects/01/6068b486e1bd1d73743185c2752b7b1b843701": "a0a9d817d83e2d0bd7150ec8e31ae55e",
".git/objects/97/3bffe6e24e44f9c9ac25808ee2fe11bed37d94": "322501b5916111b300fc42899f9ac40a",
".git/objects/0a/0452cc23c48671ff816608ea690d3d9fa1bbfc": "4c4a0c67e5e65d93a491636286ff2cec",
".git/objects/64/1325e4f2356ae804c6095279b4622d1c684aad": "dd96b86480ce317589cc83dee400e4d8",
".git/objects/90/a1a9972afa32ad4274723b250f04e19b38ee12": "6f3f82900b2bc8e38097327dd30565cb",
".git/objects/bf/0a6223becb052fcd8d5da515848f7354f5ccf9": "155328c8244a090c9483f3def5cfd452",
".git/objects/d3/dc5de4c0e04d9542236cc787f8069c5642333d": "4a825b9c4d42c1ccb55afd1b7c5f4836",
".git/objects/d4/589866b185f1b3fec0f82f9cff755ce42da9df": "b8202f41c55bdd55ab33076de1b9f628",
".git/objects/ba/8cb00dd5231f1a55de0205c16445926a696526": "be8592f9341c9b01b70890c8614c6cf7",
".git/objects/ba/58da1a13d2259ee2d585d4d3cbd7657c03dabd": "a970b3f55e31256cf06ad4ab9209a12e",
".git/objects/a7/314afc827b4304e13ee2ded906c274e08919b7": "681d3c43d32b372c0979e5950c20ad25",
".git/objects/b6/e9c209002016a67600b6772e386525c60417f5": "b08800b4b28dbd8e486e78cad82f158f",
".git/objects/d5/daccd151c22b72176c9f8c4d9838c26155702d": "183ca03f88ee7ed39ffb6c90c0a0622c",
".git/objects/d2/daa236866376f09001c68e9c16e5a62cf5ea61": "43bf14ffe9f7d08cbe10a7e0da2b11e5",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/39d2a163b47497028f7d4cfaf345255d5cbedb": "93102200a1286619965b07db390ed9aa",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/d0931e990a1c3b52a6c29e19ca0aece933165b": "434ce168591efe81ab4f8ba5e80b9015",
".git/objects/ea/69e18dcb0fef2794b2a0ece7d6820e340ff75a": "1d9af7d4a539abaa5fc86a05782d022b",
".git/objects/e1/c52a6f41e2191f10faee32f06febc2016ec99d": "e56305d6d52e3810ade6febb197a12f5",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/f7/542536af1299bd64f37fede634d6048ee0f2fc": "251c42816549b9498e64eebb7f7bff2b",
".git/objects/f7/6ac83eb61bdfecc0535951529d110482da976a": "12f13f99ea0305a1bca4b2e170383697",
".git/objects/fa/f02b7c00873394abc0989e94e8455c4fb5c07e": "0b1eb7b114724fcf4d64cb37acaf4df8",
".git/objects/ff/f6a2b0862e8c5547543bf7956e10f7c883eaa3": "8753ce654f779688a6a8961a114eada1",
".git/objects/e9/d016ec2ae8d1f83979060bcee5a6563f0b9315": "9472c98e94fcc6bec931166df103dda7",
".git/objects/e9/0341d9b053fa59b7e4bde0681452b66f7018e4": "686e263f99e072b447745a0325953004",
".git/objects/2c/43216a725f5386963267fecaf0b154b14a1703": "12bf7960ef04b0339c7848d84a624757",
".git/objects/2d/b85a81c44c58115dcb24d07ee469006f75176f": "9f0cecdcc11635f5a98bccec1f8158f8",
".git/objects/41/465b1ae2aa078ed047209009da4c6b06eb98ab": "0eac3068e93fbe519b82d710d43b2f72",
".git/objects/1b/0f16a8b4c6f238001f431f3b4478bf1e9e6629": "2da4fbb83d54190df60575c83593ed4c",
".git/objects/48/33fcf9ba677d3df448c90e63368e50f8bfc8d6": "a5b926fccf641f8e2a09e52478c0d37a",
".git/objects/70/e7bef265ddcb5084ab8480463eafaec9e936dc": "37ab4e33c2918fb4a6211ddb23e11835",
".git/objects/23/b62b524fd91b9735f39011187b81446f46376e": "fa2563e27f97e4ae610df7f389719c05",
".git/objects/4f/d0e51f345ee398d4c56c9a2a36514cfdc54f3e": "d8e976b7b97437231f01681fc40815a3",
".git/objects/12/0cb49e15aa6b4918b1800cf55056aaac0c4648": "c712b2404392e8298f355a34d91340ec",
".git/objects/49/4292489391cfc86082318f8517b12701450875": "2003590b25cc0b5d0aa62bc586de82dc",
".git/objects/2b/e39c7fd3da441ddac9bea54fd12621dd39960a": "24031b20667d22ca8dba4debe8b9eab5",
".git/objects/47/6aba9356a2a155440fe9b6c3d47c6adcf9dadf": "c4332286e2d771e46536ddd40561f854",
".git/objects/47/746fba51f1aaab23e24f9f98facbac54d89261": "ad40fd639261af04d7e0ccccb0888bfc",
".git/objects/8b/80f441ff706dc3e511e97555ccba32d8712bcd": "de4b6320b969eec11a13fa212540d699",
".git/objects/25/89c59c292090016dd40706bfe2e7881866b6dd": "ff0610cf6a40745a658046c62ccf1c62",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/info/exclude": "0aebccfd5866bfc3e7c8f625230c22f7",
".git/logs/HEAD": "4cb0bf49a12f336f38bd2f8750a48037",
".git/logs/refs/heads/master": "815054d09af3fc8a6089e1e068901537",
".git/logs/refs/remotes/webapp/master": "57f60e651c618fe2e2c6db05e4592394",
".git/logs/refs/remotes/webapp/main": "aac74a1c0eeb62f7e019e65e6a8d4bf0",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/master": "9e0bf70f89c4a9e9b618c75a34d0abec",
".git/refs/remotes/webapp/master": "9e0bf70f89c4a9e9b618c75a34d0abec",
".git/refs/remotes/webapp/main": "21069cf8051c76b9f671afdf7be4e5c3",
".git/index": "d5159bf4345c189323374876601080ca",
".git/COMMIT_EDITMSG": "d880cecc7a9673cfd884894d572d2122",
".git/FETCH_HEAD": "0f4ea42ef5dce67c7eba756c2558dfc9",
"assets/AssetManifest.json": "147436217e1df89e6400132de5daeedf",
"assets/NOTICES": "ba8ff1ccaab2f9542c58f6ac47953cc3",
"assets/FontManifest.json": "5789e421f873f99ac880ad1187139900",
"assets/AssetManifest.bin.json": "54933b488a012f283dd01aafe9ab66d0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "5e2a324aab91c59198e421bcda5a6d5d",
"assets/fonts/MaterialIcons-Regular.otf": "1f33787bde4fbcd8908e00ac21df673f",
"assets/assets/icons/payment.svg": "2b9c0cac9c302df3063d74607f9b171f",
"assets/assets/icons/logout.svg": "4d628f58678749e56bdd6ad34d6af864",
"assets/assets/icons/drawer.svg": "0e26408bbfba33c7d221340a7ffcc2a0",
"assets/assets/icons/app_icon.svg": "2eec546fb55eeac172e113495387a9c2",
"assets/assets/icons/product.svg": "8b70dc7960ff8863d8404d7df590eeb1",
"assets/assets/icons/settings.svg": "265096a978835658d2624454c1bdc563",
"assets/assets/icons/Arrow_up.svg": "0c31b43d8001f6e4e97327de9f1d8f48",
"assets/assets/icons/dashboard.svg": "7482ddcd3c5d2c2ee766eb2bd36b7d4f",
"assets/assets/icons/transactions.svg": "160990fdd2a1ae6a114a70763ee94238",
"assets/assets/icons/messages.svg": "550a4caba25697d370f58f901d79c3e2",
"assets/assets/icons/customers.svg": "1a16aa96a70b0f4453f134f36b26da54",
"assets/assets/icons/statistics.svg": "904e4ee44c00e669000e09350f4c1ba0",
"assets/assets/fonts/lato/Lato-Italic.ttf": "5d22f337a040ae2857e36e7c5800369b",
"assets/assets/fonts/lato/Lato-Thin.ttf": "7ab0bc06eecc1b75f8708aba3d3b044a",
"assets/assets/fonts/lato/Lato-Bold.ttf": "24b516c266d7341c954cb2918f1c8f38",
"assets/assets/fonts/lato/Lato-Black.ttf": "d83ab24f5cf2be8b7a9873dd64f6060a",
"assets/assets/fonts/lato/Lato-Regular.ttf": "122dd68d69fe9587e062d20d9ff5de2a",
"assets/assets/fonts/lato/Lato-Light.ttf": "2bcc211c05fc425a57b2767a4cdcf174",
"assets/assets/fonts/manrope/Manrope-Medium.ttf": "aa9897f9fa37c84d7b9d3d05a8a6bc07",
"assets/assets/fonts/manrope/Manrope-SemiBold.ttf": "4410f0d144bea752f9bfb5f33909e0c5",
"assets/assets/fonts/manrope/Manrope-ExtraBold.ttf": "8541582abce817ab8857c51ae0a35ca9",
"assets/assets/fonts/manrope/Manrope-Regular.ttf": "f8105661cf5923464f0db8290746d2f9",
"assets/assets/fonts/manrope/Manrope-ExtraLight.ttf": "100308b8ce2da4b67f4850e9b9252b26",
"assets/assets/fonts/manrope/Manrope-Light.ttf": "9e353f65739cc41a37bed272850cf92e",
"assets/assets/fonts/manrope/Manrope-Bold.ttf": "69258532ce99ef9abf8220e0276fff04",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
