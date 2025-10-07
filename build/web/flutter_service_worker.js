'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "9ceed06704ed296c0adf4dd962d66a9e",
"assets/AssetManifest.bin.json": "f5169675dfa10ab9b17de8cb32529e17",
"assets/AssetManifest.json": "028df75f9cfb5b7fc7aedc95e0e4cd48",
"assets/assets/profile.png": "69b711654eefc6ed1373e96c6e331d2c",
"assets/assets/screenshot/baba/chapter-story-line.png": "782feb3d206cb5446c9b0073d4a20897",
"assets/assets/screenshot/baba/chapter-title.png": "8fb368f964fe803ead7834825f3a4605",
"assets/assets/screenshot/baba/login.png": "6994ea237ac6404ef670dd455ccb3af7",
"assets/assets/screenshot/baba/profile.png": "f521747c089c2e59d4e756d41a3313e5",
"assets/assets/screenshot/baba/quiz.png": "cec9413c4b3158b6c1315595e8b41d65",
"assets/assets/screenshot/baba/register.png": "f34ef2b603599c1089e56057580e95d4",
"assets/assets/screenshot/baba/score.png": "78a0ba32d81bde58130229efbe48255c",
"assets/assets/screenshot/baba/self-assessment.png": "4e3664b45017003041550df841023a46",
"assets/assets/screenshot/baba/story-progress.png": "0aadea054dfb2d4cebc38865327c03fb",
"assets/assets/screenshot/baba/story-screen.png": "65a0c71c2fa9c697414df7c04c008673",
"assets/assets/screenshot/baba/vocabulary.png": "6aea9b073ca57c28a082389608932bac",
"assets/assets/screenshot/credit-tracker/credit-list-empty.png": "24bba473fe6a1b587d443089be973b3d",
"assets/assets/screenshot/credit-tracker/credit-list.png": "f8ac18a57c27f3c7c391442cac2ae344",
"assets/assets/screenshot/credit-tracker/creditor-info.png": "c6a03ad3d131d9b100e747d426fef7fe",
"assets/assets/screenshot/credit-tracker/creditor-information.png": "4e2932493179405a3e84893d576fa6df",
"assets/assets/screenshot/credit-tracker/creditor-list.png": "c71c056228d7f94dab962269e9e4818e",
"assets/assets/screenshot/credit-tracker/dashboard.png": "6165d89d6a0ccb9702861cfd252a3e21",
"assets/assets/screenshot/credit-tracker/debit-list.png": "a9389db57c8ff1bf1b85957de15c088e",
"assets/assets/screenshot/credit-tracker/login.png": "f982f9aa00aa9896ff46e19b266ddc94",
"assets/assets/screenshot/credit-tracker/register.png": "3044e05e43674b906d113ea4498b9154",
"assets/assets/screenshot/credit-tracker/transaction-history.png": "a0e718570483e0f115f0cf1f1c118906",
"assets/assets/screenshot/customer-portal/credit-card.png": "f7b0972fe7eff14316c9cacffbacad99",
"assets/assets/screenshot/customer-portal/dashboard.png": "cb442a9e3d4f9e54236107824aa393c8",
"assets/assets/screenshot/customer-portal/invoices.png": "ecd8f0d8ea57e1e31d2a7db478f5d3a2",
"assets/assets/screenshot/customer-portal/login.png": "f62c6a9097f18f7f3e799ca5dd251173",
"assets/assets/screenshot/customer-portal/payment.png": "d289c78e433dfcd5ab38c92b992e6e9a",
"assets/assets/screenshot/customer-portal/products.png": "7d2c4adcb5a29fc06f5d298a5a45b263",
"assets/assets/screenshot/customer-portal/Screenshot_1661267952.png": "6747204995a48a224dc746f586bf0f9b",
"assets/assets/screenshot/customer-portal/transaction.png": "e7f13815e9467debc803d6eaf4a70205",
"assets/assets/screenshot/field-tech-portal/dashboard.png": "8c0dbe88c2ec724d724f2487745248e3",
"assets/assets/screenshot/field-tech-portal/inventory-search.png": "b2ad29312c39ea79c4fae559496bddb0",
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
"assets/assets/screenshot/pos/dashboard.png": "1e0121131b086cf12c50fe511988e949",
"assets/assets/screenshot/pos/inventory-modal.png": "a994f90ac77155667f08f3230789e1fb",
"assets/assets/screenshot/pos/inventory.png": "563209d85a46c57373b1533f1a219142",
"assets/assets/screenshot/pos/login.png": "55f06be8f27fc2c2413d052e51c9bc0e",
"assets/assets/screenshot/pos/order-listing.png": "8e58d55ed8fad72f50b670266073004f",
"assets/assets/screenshot/pos/order-modal.png": "3954778d00173a465c5e5feb88378cdd",
"assets/assets/screenshot/pos/order.png": "b658197a8737f48c4ec31e595876778b",
"assets/assets/screenshot/pos/sales-report.png": "9e88d5503620ca2354fc21f2f13bb43f",
"assets/assets/screenshot/pos/sold-dashboard.png": "64914a67981bf52f43056f9b31642def",
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
"assets/NOTICES": "e3f41d21df26dbadf0476bd9b3224af6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "5f72d664707e4d711a1c0c240912cd50",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "a96eb2260ca81f6ab63444ce9bb78432",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "20217a59a0431c1a6ca971e91a647938",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "8a891650d1a8cf63ddbbe98ad2c8abcf",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
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
"flutter_bootstrap.js": "07a44118ff388265005a4a1945928e55",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "94b78f08b012fff4605b91849b3f6d57",
"/": "94b78f08b012fff4605b91849b3f6d57",
"main.dart.js": "9c789bf9399c9d08224019b72046f0ef",
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
