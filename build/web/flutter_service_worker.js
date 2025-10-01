'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "48b78064c15ba4a650a03b835ca78613",
"assets/AssetManifest.bin.json": "a8852c718e3dce25694b1ced1109a013",
"assets/AssetManifest.json": "5e3325b0df06a7401b16a6b5c5c28948",
"assets/assets/profile.png": "69b711654eefc6ed1373e96c6e331d2c",
"assets/assets/screenshot/baba/login.png": "6994ea237ac6404ef670dd455ccb3af7",
"assets/assets/screenshot/credit-tracker/login.png": "f982f9aa00aa9896ff46e19b266ddc94",
"assets/assets/screenshot/customer-portal/credit-card.png": "f7b0972fe7eff14316c9cacffbacad99",
"assets/assets/screenshot/customer-portal/dashboard.png": "cb442a9e3d4f9e54236107824aa393c8",
"assets/assets/screenshot/customer-portal/invoices.png": "ecd8f0d8ea57e1e31d2a7db478f5d3a2",
"assets/assets/screenshot/customer-portal/login.png": "f62c6a9097f18f7f3e799ca5dd251173",
"assets/assets/screenshot/customer-portal/payment.png": "d289c78e433dfcd5ab38c92b992e6e9a",
"assets/assets/screenshot/customer-portal/products.png": "7d2c4adcb5a29fc06f5d298a5a45b263",
"assets/assets/screenshot/customer-portal/Screenshot_1661267952.png": "6747204995a48a224dc746f586bf0f9b",
"assets/assets/screenshot/customer-portal/transaction.png": "e7f13815e9467debc803d6eaf4a70205",
"assets/assets/screenshot/field-tech-portal/dashboard.png": "8c0dbe88c2ec724d724f2487745248e3",
"assets/assets/screenshot/field-tech-portal/inventory-serach.png": "b2ad29312c39ea79c4fae559496bddb0",
"assets/assets/screenshot/field-tech-portal/login.png": "f62c6a9097f18f7f3e799ca5dd251173",
"assets/assets/screenshot/field-tech-portal/schedule.png": "a4008d1099df022e4c86443d0f70a4c2",
"assets/assets/screenshot/field-tech-portal/Screenshot_1661176763.png": "aa938ed0414b108c48d86b30ce714e10",
"assets/assets/screenshot/field-tech-portal/service-call.png": "d9edea97a743bc49114d89eebb98b3ca",
"assets/assets/screenshot/field-tech-portal/settings.png": "63b2c3b273dba57bf6a4c933d732442d",
"assets/assets/screenshot/field-tech-portal/warehouse.png": "c2a5e20af5c184fa3a284466d09c2db4",
"assets/assets/screenshot/iptv/dvr1.png": "eeab82592c860c13dba23a991d01d388",
"assets/assets/screenshot/iptv/dvr2.png": "9d5c7f6529856a7ae574145feefafe95",
"assets/assets/screenshot/iptv/dvr3.png": "07fb39502cfe9804230a798ffaf4a29a",
"assets/assets/screenshot/iptv/livetv1.png": "f34900eb46c12a70903399198acdc64e",
"assets/assets/screenshot/iptv/livetv2.png": "95acd3384a2c0159218d538aeb39d2f7",
"assets/assets/screenshot/iptv/mobile-dashboard-h.png": "a78b60a23dc1798fd814e73314066ffc",
"assets/assets/screenshot/iptv/mobile-dashboard-v.png": "dd5857b07c4a1fb7fa99b39c572accee",
"assets/assets/screenshot/iptv/program1.png": "6ae684f45f86b15db875e81966f83cb4",
"assets/assets/screenshot/iptv/program2.png": "35704d5ca21552e37fdcde599ee4df3a",
"assets/assets/screenshot/iptv/program3.png": "8eb709d5d6973a75ad4aed1d15924d56",
"assets/assets/screenshot/pos/login.png": "55f06be8f27fc2c2413d052e51c9bc0e",
"assets/assets/skills_icon/angular.png": "2de556d0a3950dd52cae4ecccec6bd91",
"assets/assets/skills_icon/aspcore.png": "c826dc020957da0bfccb99c11d4b13f2",
"assets/assets/skills_icon/aspmvc.jpeg": "b968ae670f70fbfa600fee3aef2afcde",
"assets/assets/skills_icon/aspmvc.png": "679b3783830b76e4b5fe21e2e2005654",
"assets/assets/skills_icon/aspnet.png": "1b9b898b4047396d2980f9ce87d64d02",
"assets/assets/skills_icon/aspzero.png": "f7bb53ca67fe0801266868476e746adc",
"assets/assets/skills_icon/bootstrap.png": "e9815572e25adf645c7866527f02b7a5",
"assets/assets/skills_icon/csharp.png": "30f38a77007864957dd87f3da045129e",
"assets/assets/skills_icon/css.png": "09a9f0212278ccb935ddb08a84bfe271",
"assets/assets/skills_icon/firebase.png": "ec161661bdb734208d7cf9bf454b5821",
"assets/assets/skills_icon/flutter.png": "4fb9b83cd6cbeac22779a328c91fc6e8",
"assets/assets/skills_icon/git.png": "dc1fbd3079fe56688788208e0913512c",
"assets/assets/skills_icon/hive.png": "30151613bb47b9cecc8b3d6b78d49d0e",
"assets/assets/skills_icon/html.png": "7c43003f90aabe2f00c7a8b698d816de",
"assets/assets/skills_icon/javascript.png": "b2cfc8e57ad3163545da9f67aa70cd66",
"assets/assets/skills_icon/json.png": "693fa6e26e3ebe6a9a5597618bddfdbc",
"assets/assets/skills_icon/laravel.png": "4362151b0ac0b2715f29c6892b3d5656",
"assets/assets/skills_icon/mysql.png": "d26b2baad850cc3749fe814dda02b38d",
"assets/assets/skills_icon/node.png": "3d2e7036febc7d59b65f3a253683d9ec",
"assets/assets/skills_icon/php.png": "92b198d8ce73b00eb1625da554ac67d2",
"assets/assets/skills_icon/react.png": "dec13a18266691aaaa011633d7f1f68c",
"assets/assets/skills_icon/sqlserver.png": "712d391369723024febb0c6819318302",
"assets/assets/skills_icon/supabase.png": "094d7fa1ea52341f9a6336e6972af235",
"assets/assets/skills_icon/vue.png": "17a6510bd8f6fb6133926b30a99acdce",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "4cb965443005350b246e65a300419222",
"assets/NOTICES": "c530374e280c356de47aa89ae732ef30",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "5f72d664707e4d711a1c0c240912cd50",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "a96eb2260ca81f6ab63444ce9bb78432",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "20217a59a0431c1a6ca971e91a647938",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "8a891650d1a8cf63ddbbe98ad2c8abcf",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"bryanjay3210.github.io/.git/config": "bef00ff8d5f13d3ab6c464343232ab77",
"bryanjay3210.github.io/.git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
"bryanjay3210.github.io/.git/FETCH_HEAD": "172a2f803b3d080881cc37e120938b1a",
"bryanjay3210.github.io/.git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
"bryanjay3210.github.io/.git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
"bryanjay3210.github.io/.git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
"bryanjay3210.github.io/.git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
"bryanjay3210.github.io/.git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
"bryanjay3210.github.io/.git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
"bryanjay3210.github.io/.git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
"bryanjay3210.github.io/.git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
"bryanjay3210.github.io/.git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
"bryanjay3210.github.io/.git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
"bryanjay3210.github.io/.git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
"bryanjay3210.github.io/.git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
"bryanjay3210.github.io/.git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
"bryanjay3210.github.io/.git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
"bryanjay3210.github.io/.git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
"bryanjay3210.github.io/.git/index": "23c4f4757dd30c8e2fd4f0d20fc4f31b",
"bryanjay3210.github.io/.git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
"bryanjay3210.github.io/.git/logs/HEAD": "419e7e33c5748d386ffbc1ec5332c814",
"bryanjay3210.github.io/.git/logs/refs/heads/main": "419e7e33c5748d386ffbc1ec5332c814",
"bryanjay3210.github.io/.git/logs/refs/remotes/origin/HEAD": "9ee5ab9f07b733583f12b48bae53da2b",
"bryanjay3210.github.io/.git/logs/refs/remotes/origin/main": "96f826d0bd08139c93422091349db33b",
"bryanjay3210.github.io/.git/objects/39/b7332901a4216c42e0ab8ad3c79c572f2c427f": "d1dfc9238837a656d509616df2337f96",
"bryanjay3210.github.io/.git/objects/3b/7f2ed7a8e94cd5cd08d30413a33ea362279b8d": "f741560907106638e2ac631347e2abab",
"bryanjay3210.github.io/.git/objects/69/fa7247e916222cec390cacd92f43ae3891c4e8": "1901882195bf9a321de017d146773cc6",
"bryanjay3210.github.io/.git/objects/73/f4aad3b71e70da8d48e7fcba61b2d33d1dee42": "926f1d158ff876d838ba0cdffc9ae9b5",
"bryanjay3210.github.io/.git/objects/87/06d196fa4b53c2cdd433dbb830e69c2c8daedb": "1a346c6d5c1d0acf4542209697f80ac4",
"bryanjay3210.github.io/.git/objects/9a/f9633430a8fa94fa1e5f86bdca2b9c7e1db861": "327b147c872ed89335630dcbabde0c99",
"bryanjay3210.github.io/.git/objects/d9/1f8439465f71321d042cbac6180b8a5f9df1ed": "07d349c2a1703235f13f113bfed942b2",
"bryanjay3210.github.io/.git/objects/df/aed0965da5cb596415162803cecb245fffa615": "a823510d7367b990c769f07ce1963bcf",
"bryanjay3210.github.io/.git/objects/fb/8096840a8d36c3b02dd043446ef8f7bf3d05a1": "f8ccde609450a85a5b5546a3142d9015",
"bryanjay3210.github.io/.git/objects/fb/b7390a3ba2f55315d6662d414212506de902e3": "2208a5dadd39b72e1d0eb7186273fdbd",
"bryanjay3210.github.io/.git/objects/pack/pack-7795deda2b5db229690a9ed9e5f56005522c4be5.idx": "27425f1cbb6c6059e777ff7979f0d6f0",
"bryanjay3210.github.io/.git/objects/pack/pack-7795deda2b5db229690a9ed9e5f56005522c4be5.pack": "a4114f1cc7da702c975bf1f3568b27d3",
"bryanjay3210.github.io/.git/objects/pack/pack-7795deda2b5db229690a9ed9e5f56005522c4be5.rev": "89c813793173109c3b964d74429b386a",
"bryanjay3210.github.io/.git/ORIG_HEAD": "89455eb0024d1c5760cb0814e538a5fd",
"bryanjay3210.github.io/.git/packed-refs": "b8da3f7f8720d4b7a993002cfefd0896",
"bryanjay3210.github.io/.git/refs/heads/main": "afed4a4313130099f4b2db3004e15ffc",
"bryanjay3210.github.io/.git/refs/remotes/origin/HEAD": "98b16e0b650190870f1b40bc8f4aec4e",
"bryanjay3210.github.io/.git/refs/remotes/origin/main": "afed4a4313130099f4b2db3004e15ffc",
"bryanjay3210.github.io/assets/AssetManifest.bin": "b8929241599c05eaebf813de6a0837b8",
"bryanjay3210.github.io/assets/AssetManifest.bin.json": "3537fdf0949ac5a3a373dd9f0d98df20",
"bryanjay3210.github.io/assets/AssetManifest.json": "3d50aa2cf3ddae8fc4639f403e329840",
"bryanjay3210.github.io/assets/assets/profile.png": "69b711654eefc6ed1373e96c6e331d2c",
"bryanjay3210.github.io/assets/assets/screenshot/baba/chapter-story-line.PNG": "782feb3d206cb5446c9b0073d4a20897",
"bryanjay3210.github.io/assets/assets/screenshot/baba/chapter-title.PNG": "8fb368f964fe803ead7834825f3a4605",
"bryanjay3210.github.io/assets/assets/screenshot/baba/login.PNG": "6994ea237ac6404ef670dd455ccb3af7",
"bryanjay3210.github.io/assets/assets/screenshot/baba/profile.PNG": "f521747c089c2e59d4e756d41a3313e5",
"bryanjay3210.github.io/assets/assets/screenshot/baba/quiz.PNG": "cec9413c4b3158b6c1315595e8b41d65",
"bryanjay3210.github.io/assets/assets/screenshot/baba/register.PNG": "f34ef2b603599c1089e56057580e95d4",
"bryanjay3210.github.io/assets/assets/screenshot/baba/score.PNG": "78a0ba32d81bde58130229efbe48255c",
"bryanjay3210.github.io/assets/assets/screenshot/baba/self-assessment.PNG": "4e3664b45017003041550df841023a46",
"bryanjay3210.github.io/assets/assets/screenshot/baba/story-progress.PNG": "0aadea054dfb2d4cebc38865327c03fb",
"bryanjay3210.github.io/assets/assets/screenshot/baba/story-screen.PNG": "65a0c71c2fa9c697414df7c04c008673",
"bryanjay3210.github.io/assets/assets/screenshot/baba/vocabulary.PNG": "6aea9b073ca57c28a082389608932bac",
"bryanjay3210.github.io/assets/assets/screenshot/credit-tracker/credit-list-empty.PNG": "24bba473fe6a1b587d443089be973b3d",
"bryanjay3210.github.io/assets/assets/screenshot/credit-tracker/credit-list.PNG": "f8ac18a57c27f3c7c391442cac2ae344",
"bryanjay3210.github.io/assets/assets/screenshot/credit-tracker/creditor-info.PNG": "c6a03ad3d131d9b100e747d426fef7fe",
"bryanjay3210.github.io/assets/assets/screenshot/credit-tracker/creditor-information.PNG": "4e2932493179405a3e84893d576fa6df",
"bryanjay3210.github.io/assets/assets/screenshot/credit-tracker/creditor-list.PNG": "c71c056228d7f94dab962269e9e4818e",
"bryanjay3210.github.io/assets/assets/screenshot/credit-tracker/dashboard.PNG": "6165d89d6a0ccb9702861cfd252a3e21",
"bryanjay3210.github.io/assets/assets/screenshot/credit-tracker/debit-list.PNG": "a9389db57c8ff1bf1b85957de15c088e",
"bryanjay3210.github.io/assets/assets/screenshot/credit-tracker/login.PNG": "f982f9aa00aa9896ff46e19b266ddc94",
"bryanjay3210.github.io/assets/assets/screenshot/credit-tracker/register.PNG": "3044e05e43674b906d113ea4498b9154",
"bryanjay3210.github.io/assets/assets/screenshot/credit-tracker/transaction-history.PNG": "a0e718570483e0f115f0cf1f1c118906",
"bryanjay3210.github.io/assets/assets/screenshot/customer-portal/credit-card.png": "f7b0972fe7eff14316c9cacffbacad99",
"bryanjay3210.github.io/assets/assets/screenshot/customer-portal/dashboard.png": "cb442a9e3d4f9e54236107824aa393c8",
"bryanjay3210.github.io/assets/assets/screenshot/customer-portal/invoices.png": "ecd8f0d8ea57e1e31d2a7db478f5d3a2",
"bryanjay3210.github.io/assets/assets/screenshot/customer-portal/login.png": "f62c6a9097f18f7f3e799ca5dd251173",
"bryanjay3210.github.io/assets/assets/screenshot/customer-portal/payment.png": "d289c78e433dfcd5ab38c92b992e6e9a",
"bryanjay3210.github.io/assets/assets/screenshot/customer-portal/products.png": "7d2c4adcb5a29fc06f5d298a5a45b263",
"bryanjay3210.github.io/assets/assets/screenshot/customer-portal/Screenshot_1661267952.png": "6747204995a48a224dc746f586bf0f9b",
"bryanjay3210.github.io/assets/assets/screenshot/customer-portal/transaction.png": "e7f13815e9467debc803d6eaf4a70205",
"bryanjay3210.github.io/assets/assets/screenshot/field-tech-portal/dashboard.png": "8c0dbe88c2ec724d724f2487745248e3",
"bryanjay3210.github.io/assets/assets/screenshot/field-tech-portal/inventory-serach.png": "b2ad29312c39ea79c4fae559496bddb0",
"bryanjay3210.github.io/assets/assets/screenshot/field-tech-portal/login.png": "f62c6a9097f18f7f3e799ca5dd251173",
"bryanjay3210.github.io/assets/assets/screenshot/field-tech-portal/schedule.png": "a4008d1099df022e4c86443d0f70a4c2",
"bryanjay3210.github.io/assets/assets/screenshot/field-tech-portal/Screenshot_1661176763.png": "aa938ed0414b108c48d86b30ce714e10",
"bryanjay3210.github.io/assets/assets/screenshot/field-tech-portal/service-call.png": "d9edea97a743bc49114d89eebb98b3ca",
"bryanjay3210.github.io/assets/assets/screenshot/field-tech-portal/settings.png": "63b2c3b273dba57bf6a4c933d732442d",
"bryanjay3210.github.io/assets/assets/screenshot/field-tech-portal/warehouse.png": "c2a5e20af5c184fa3a284466d09c2db4",
"bryanjay3210.github.io/assets/assets/screenshot/iptv/dvr1.png": "eeab82592c860c13dba23a991d01d388",
"bryanjay3210.github.io/assets/assets/screenshot/iptv/dvr2.png": "9d5c7f6529856a7ae574145feefafe95",
"bryanjay3210.github.io/assets/assets/screenshot/iptv/dvr3.png": "07fb39502cfe9804230a798ffaf4a29a",
"bryanjay3210.github.io/assets/assets/screenshot/iptv/livetv1.png": "f34900eb46c12a70903399198acdc64e",
"bryanjay3210.github.io/assets/assets/screenshot/iptv/livetv2.png": "95acd3384a2c0159218d538aeb39d2f7",
"bryanjay3210.github.io/assets/assets/screenshot/iptv/mobile-dashboard-h.png": "a78b60a23dc1798fd814e73314066ffc",
"bryanjay3210.github.io/assets/assets/screenshot/iptv/mobile-dashboard-v.png": "dd5857b07c4a1fb7fa99b39c572accee",
"bryanjay3210.github.io/assets/assets/screenshot/iptv/program1.png": "6ae684f45f86b15db875e81966f83cb4",
"bryanjay3210.github.io/assets/assets/screenshot/iptv/program2.png": "35704d5ca21552e37fdcde599ee4df3a",
"bryanjay3210.github.io/assets/assets/screenshot/iptv/program3.png": "8eb709d5d6973a75ad4aed1d15924d56",
"bryanjay3210.github.io/assets/assets/screenshot/pos/dashboard.PNG": "1e0121131b086cf12c50fe511988e949",
"bryanjay3210.github.io/assets/assets/screenshot/pos/inventory-modal.PNG": "a994f90ac77155667f08f3230789e1fb",
"bryanjay3210.github.io/assets/assets/screenshot/pos/inventory.PNG": "563209d85a46c57373b1533f1a219142",
"bryanjay3210.github.io/assets/assets/screenshot/pos/login.PNG": "55f06be8f27fc2c2413d052e51c9bc0e",
"bryanjay3210.github.io/assets/assets/screenshot/pos/order-listing.PNG": "8e58d55ed8fad72f50b670266073004f",
"bryanjay3210.github.io/assets/assets/screenshot/pos/order-modal.PNG": "3954778d00173a465c5e5feb88378cdd",
"bryanjay3210.github.io/assets/assets/screenshot/pos/order.PNG": "b658197a8737f48c4ec31e595876778b",
"bryanjay3210.github.io/assets/assets/screenshot/pos/sales-report.PNG": "9e88d5503620ca2354fc21f2f13bb43f",
"bryanjay3210.github.io/assets/assets/screenshot/pos/sold-dashboard.PNG": "64914a67981bf52f43056f9b31642def",
"bryanjay3210.github.io/assets/assets/skills_icon/angular.png": "2de556d0a3950dd52cae4ecccec6bd91",
"bryanjay3210.github.io/assets/assets/skills_icon/aspcore.png": "c826dc020957da0bfccb99c11d4b13f2",
"bryanjay3210.github.io/assets/assets/skills_icon/aspmvc.jpeg": "b968ae670f70fbfa600fee3aef2afcde",
"bryanjay3210.github.io/assets/assets/skills_icon/aspmvc.png": "679b3783830b76e4b5fe21e2e2005654",
"bryanjay3210.github.io/assets/assets/skills_icon/aspnet.png": "1b9b898b4047396d2980f9ce87d64d02",
"bryanjay3210.github.io/assets/assets/skills_icon/aspzero.png": "f7bb53ca67fe0801266868476e746adc",
"bryanjay3210.github.io/assets/assets/skills_icon/bootstrap.png": "e9815572e25adf645c7866527f02b7a5",
"bryanjay3210.github.io/assets/assets/skills_icon/csharp.png": "30f38a77007864957dd87f3da045129e",
"bryanjay3210.github.io/assets/assets/skills_icon/css.png": "09a9f0212278ccb935ddb08a84bfe271",
"bryanjay3210.github.io/assets/assets/skills_icon/firebase.png": "ec161661bdb734208d7cf9bf454b5821",
"bryanjay3210.github.io/assets/assets/skills_icon/flutter.png": "4fb9b83cd6cbeac22779a328c91fc6e8",
"bryanjay3210.github.io/assets/assets/skills_icon/git.png": "dc1fbd3079fe56688788208e0913512c",
"bryanjay3210.github.io/assets/assets/skills_icon/hive.png": "30151613bb47b9cecc8b3d6b78d49d0e",
"bryanjay3210.github.io/assets/assets/skills_icon/html.png": "7c43003f90aabe2f00c7a8b698d816de",
"bryanjay3210.github.io/assets/assets/skills_icon/javascript.png": "b2cfc8e57ad3163545da9f67aa70cd66",
"bryanjay3210.github.io/assets/assets/skills_icon/json.png": "693fa6e26e3ebe6a9a5597618bddfdbc",
"bryanjay3210.github.io/assets/assets/skills_icon/laravel.png": "4362151b0ac0b2715f29c6892b3d5656",
"bryanjay3210.github.io/assets/assets/skills_icon/mysql.png": "d26b2baad850cc3749fe814dda02b38d",
"bryanjay3210.github.io/assets/assets/skills_icon/node.png": "3d2e7036febc7d59b65f3a253683d9ec",
"bryanjay3210.github.io/assets/assets/skills_icon/php.png": "92b198d8ce73b00eb1625da554ac67d2",
"bryanjay3210.github.io/assets/assets/skills_icon/react.png": "dec13a18266691aaaa011633d7f1f68c",
"bryanjay3210.github.io/assets/assets/skills_icon/sqlserver.png": "712d391369723024febb0c6819318302",
"bryanjay3210.github.io/assets/assets/skills_icon/supabase.png": "094d7fa1ea52341f9a6336e6972af235",
"bryanjay3210.github.io/assets/assets/skills_icon/vue.png": "17a6510bd8f6fb6133926b30a99acdce",
"bryanjay3210.github.io/assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"bryanjay3210.github.io/assets/fonts/MaterialIcons-Regular.otf": "4cb965443005350b246e65a300419222",
"bryanjay3210.github.io/assets/NOTICES": "9506095c109b92aa59726ab8a6b39fb6",
"bryanjay3210.github.io/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "5f72d664707e4d711a1c0c240912cd50",
"bryanjay3210.github.io/assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "a96eb2260ca81f6ab63444ce9bb78432",
"bryanjay3210.github.io/assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "20217a59a0431c1a6ca971e91a647938",
"bryanjay3210.github.io/assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "8a891650d1a8cf63ddbbe98ad2c8abcf",
"bryanjay3210.github.io/assets/shaders/ink_sparkle.frag": "9bb2aaa0f9a9213b623947fa682efa76",
"bryanjay3210.github.io/canvaskit/canvaskit.js": "677902074133e9e70e65c3e357859f79",
"bryanjay3210.github.io/canvaskit/canvaskit.js.symbols": "310951580eb657840fae86f76f653452",
"bryanjay3210.github.io/canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"bryanjay3210.github.io/canvaskit/chromium/canvaskit.js": "c7f8d21c08aba6f1bcf2a867a3a6218d",
"bryanjay3210.github.io/canvaskit/chromium/canvaskit.js.symbols": "2bf18b9213f9fc9fb554c3890691f57c",
"bryanjay3210.github.io/canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"bryanjay3210.github.io/canvaskit/skwasm.js": "8cc11b1079ca8735f29263baafbf330a",
"bryanjay3210.github.io/canvaskit/skwasm.js.symbols": "2a35929fae90775f43ce38f8bab1697a",
"bryanjay3210.github.io/canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"bryanjay3210.github.io/canvaskit/skwasm_st.js": "9eeb36850f248a8e946442a13aaaa009",
"bryanjay3210.github.io/canvaskit/skwasm_st.js.symbols": "ca49a44a388ecfe66ba43dd851d2b76d",
"bryanjay3210.github.io/canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"bryanjay3210.github.io/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"bryanjay3210.github.io/flutter.js": "18587c590e5c7a76f5c8fc8822445e17",
"bryanjay3210.github.io/flutter_bootstrap.js": "27c651a1979831e5fe66df7d1572a867",
"bryanjay3210.github.io/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"bryanjay3210.github.io/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"bryanjay3210.github.io/icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"bryanjay3210.github.io/icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"bryanjay3210.github.io/index.html": "81d9413619874f2c13f0789b19ed4f72",
"bryanjay3210.github.io/main.dart.js": "4f980573284218251a5b8c432533b150",
"bryanjay3210.github.io/manifest.json": "e74af8957b5899dc6da961caee768ec9",
"bryanjay3210.github.io/version.json": "009c9e65172e010890f7f65fde438006",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "14fe51f599a1ca73e3409cd93ba96a2f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "40875453100c35324880201727374c58",
"/": "40875453100c35324880201727374c58",
"main.dart.js": "192fd1adf145fe4b97a0c97841638f18",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
