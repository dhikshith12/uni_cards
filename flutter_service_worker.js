'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "662c0ecfeebb8fde762e22cc1eb02c30",
"index.html": "3fb5c90faf277dfb0da01cc150d4c415",
"/": "3fb5c90faf277dfb0da01cc150d4c415",
"main.dart.js": "eac4e69682d0a23cdbaf388a09fe2bd3",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "893405bfabaead81f803f6d26d53dea5",
"assets/AssetManifest.json": "6e1f6738148fdde446af99933d0b035b",
"assets/NOTICES": "9e0fdbb280b967b6260b374cbe40cff5",
"assets/FontManifest.json": "43a2e67e60dfa01f3155f23d9d6cee1b",
"assets/AssetManifest.bin.json": "17d5883ea63cb3e25cf53c2246d31d0b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "4c9b0aa56f96a6d5592ef3aa5e50844a",
"assets/fonts/matter/MatterMonoTRIAL-Regular.otf": "90f24ea5c25866682686d124e1a02cd2",
"assets/fonts/matter/MatterMonoTRIAL-SemiBold.otf": "0c69efd25707115a988d8ba631ffe4ca",
"assets/fonts/matter/MatterMonoTRIAL-Medium.otf": "0afdcb991843195a62e4c54d5325bfaf",
"assets/fonts/matter/MatterMonoTRIAL-Bold.otf": "e9790ff37d2393ab8864f10ddf0d1d74",
"assets/fonts/matter/MatterMonoTRIAL-Heavy.otf": "b284a5ae3cf2c20d830c4fb2d7018df7",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"assets/assets/whatsapp_bubble.webp": "1ee91d3173968514ee4b6938ff7714b4",
"assets/assets/antivirus_bubble.webp": "8f40027453cbdd6ccf43473210e47522",
"assets/assets/cancel.svg": "58fb3a8445775f2639a77ac430c1ab0d",
"assets/assets/right_arrow.svg": "dda89d6aeea3bf830015de73f545e512",
"assets/assets/logo_accent.svg": "65fee9f7741e25ecc1371f3475c1783b",
"assets/assets/rupee_bubble.webp": "4b24aa1aa4f5648f2d6c1e1823c49feb",
"assets/assets/nxt_wave_bg.mp4": "f4c74e7a70432b7903e26469e74d420f",
"assets/assets/menu_icon.svg": "e48d95b4e5b5f55a59900ae3b9e80209",
"assets/assets/app_screen_2.webp": "c4d6de1f66292c63b58905417f7083f4",
"assets/assets/uni.svg": "995ce627a98139ab5f509edab0d8cba7",
"assets/assets/down_arrow.svg": "660f8b9c511b9d414536a0b34f1153bf",
"assets/assets/SBM.svg": "cd490c02f3e617ee0bf440e8b27d9474",
"assets/assets/forex_globe.png": "542e28368962097a2025f9fd3c78b1b3",
"assets/assets/circles.png": "f48a6ceb33538ec93fe9cea257858f33",
"assets/assets/pcidss_cert.svg": "85cbded6dc85b3f8997870c48a1d8472",
"assets/assets/app_screen_1.webp": "1e43a6b2f8a1072392296bcb3ac7daad",
"assets/assets/footer-arrow.png": "ebdeac6cb5c5e658f02a51d475177ee4",
"assets/assets/nx_wave_hero.png": "5b07d8f421c887eb7232f102e5945732",
"assets/assets/five_x_rewards.png": "a191ebd631520fb0ce1d327c10b324c1",
"assets/assets/logo_bottom.svg": "39bbcdbb71156a5c78cf42a1d14dbf72",
"assets/assets/play_btn.svg": "c97338bde7a7efc19bf98f801626ef4c",
"assets/assets/menu_cancel.svg": "c1680ffd145362131848968a76ee0f78",
"assets/assets/star_text_seperator.svg": "f5a6e36de7687d4f7329a04a0969a845",
"assets/assets/apple.svg": "3eba27dcf2bb73a4e7be2faf1cd573c2",
"assets/assets/one_percent_cashback.png": "45fa4c6a499d62e5b9afa5d4e19aa004",
"assets/assets/bg.png": "07ceaef862e0e9429b3191618efd490f",
"assets/assets/nxt_btn.svg": "1c596f9a015b050a38ff0ee40b853c68",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
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
