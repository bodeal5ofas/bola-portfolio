'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "578a1887afcb34ad046ce0ce5242e1f1",
"assets/AssetManifest.bin.json": "6084d01bb669b657f4c9d342a349c7fc",
"assets/AssetManifest.json": "519750dfcf3075087a2efed10b325fae",
"assets/assets/about_me.png": "d53146507d87db83d742dfd186892429",
"assets/assets/api-svgrepo-com.svg": "0c6ae5066afe528eb0f853fb5847a693",
"assets/assets/bloc-opened-svgrepo-com.svg": "0bd7973d6331aeff24d8d25c7c847fed",
"assets/assets/book_logo.png": "0a44982ab2871ed60adc869ecf388620",
"assets/assets/c++.svg": "eec121bbe8594246a8b7424a45e8f1ff",
"assets/assets/clean-code-svgrepo-com.svg": "44e8e0d18b503336a6cc196ae1087bdb",
"assets/assets/commerce_logo.png": "c23a202eea0ff92846248e9fedcb62fc",
"assets/assets/dart_logo.svg": "20d7b82998ddc6f73a4310bf58e609df",
"assets/assets/data_strucure_logo.svg": "ce42bcf29358d61126da0c1681d7e166",
"assets/assets/eccomerce_logo.svg": "46e10f75663dfbdd8bf350fb1a8b190d",
"assets/assets/eccomerece_logo.png": "e5a9a426717a1287913043282a46bf15",
"assets/assets/facebook_logo.png": "170f6b7980eba57915ed9451b65967e6",
"assets/assets/firebase_logo.svg": "1da8d950e3f30a69d7c957c26238e1de",
"assets/assets/flutter_logo.svg": "c2303c06b353e6514a690051a1d2fa3e",
"assets/assets/github_logo.svg": "d0acd6cffffffb7d361625d7dbd450cb",
"assets/assets/git_hub_logo.png": "a018c2bdde73c7a54eef34bc59c41303",
"assets/assets/git_logo.svg": "5eed2c8cb62e1adfae09b0129a25a1a7",
"assets/assets/gmail_logo.png": "9d4ee28741c79e845a867ab960a76806",
"assets/assets/gmail_logo.svg": "992ac34a80cdd509871cff78c6d98e72",
"assets/assets/icons8-facebook-logo.svg": "a6a36fca4b5a389d0eefbbd3a9c53a7e",
"assets/assets/icons8-git-logo.svg": "5eed2c8cb62e1adfae09b0129a25a1a7",
"assets/assets/icons8-gmail.svg": "992ac34a80cdd509871cff78c6d98e72",
"assets/assets/icons8-linkedin-logo.svg": "5100826d208b6c173e599d9463b36dcf",
"assets/assets/islamy_logo.png": "b4c0fc6d65d6528cf266c98b2165f2d1",
"assets/assets/LinkedIn_icon.svg.png": "7221881943a64cabdc5291799bed7bf9",
"assets/assets/linkedin_logo.svg": "5100826d208b6c173e599d9463b36dcf",
"assets/assets/movies_logo.png": "e5c8a8dcf88e4589d7c2d78397401311",
"assets/assets/news_logo.png": "8434fc0944f4d80a45eb103cd90f4788",
"assets/assets/online_shop.png": "e226b35b54685ac47ad7b42b638d7e90",
"assets/assets/oop_logo.svg": "5ec9c9ddca5ec0ecc7f893f882c99b45",
"assets/assets/pola.png": "385fd77457c160077583ac4be28a0b03",
"assets/assets/Questions-bro.svg": "d2a4a22f48b7639b1bd353e62c3e55b0",
"assets/assets/responsive-tablet-svgrepo-com.svg": "f68c3b15cb174fdd9918df9198bb60ea",
"assets/assets/responsive_logo.png": "f83a8d47f32f9c029fc3dfebc52af434",
"assets/assets/storage-card-two-svgrepo-com.svg": "e677d02a75217337478a8dc3c605bd97",
"assets/assets/todo_logo.png": "ac0454efbb21c92a2206fe6f0f477953",
"assets/assets/usability-testing-svgrepo-com.svg": "062c2c2c94662b6a0d7dd1f338f9954d",
"assets/assets/xo_logo.png": "9c76a831b60f4a83936856769898cca9",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "bd57aaf150ba55fb32471ff5bc6ce6de",
"assets/NOTICES": "4969dc6adfa5cc91856a116a243ad919",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "f8aa336c24880360d3e0338525e0cf23",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "ce434ef9e61ceeb134d5faa7e077bd2c",
"/": "ce434ef9e61ceeb134d5faa7e077bd2c",
"main.dart.js": "ade453a1a02db45c843c0cb93177f7f7",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
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
