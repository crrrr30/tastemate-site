'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "3a6ad776a3e1fc21e704fc9961deb32f",
"index.html": "6e8ecc608b3af72be15f2f61602ac906",
"/": "6e8ecc608b3af72be15f2f61602ac906",
"main.dart.js": "a06a8070121eea229c527e2f369f940b",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "b291661d468053527996bebcdec23996",
".git/ORIG_HEAD": "d4d37f9ee7f09fb97c7e3fd84a9a5670",
".git/config": "1d853984dd0d2c4be4d7067d0896a713",
".git/objects/50/c0eb2ba3a5b8cfea1b57530228404e1ce6e686": "a2e7691ae95d507cf3414c320d8a03e3",
".git/objects/04/e5efc15dc0c60ea2ffcc37c5bf25e96689f44d": "978222f47488835b92838c74cb5c684c",
".git/objects/35/86731e37d591f2104952aacdad3ba71ef6e579": "9fec4ce8da6035ea453147000e09db68",
".git/objects/3d/d01d0a36ddaa32b0b9f4097ac79d63446babdc": "4c7113b44efa8a2926a3835997beadca",
".git/objects/67/2301e23314fd9f96a572180bb2246937065872": "3c6f9af8dbc089c68c3b85b537c24d15",
".git/objects/67/3d1b469faceadec1401ada3e5ed68b8a0c00e9": "82bfaf91ed9b8ee7f2de6f97ee28f6d7",
".git/objects/94/b52e13bf7919ae4ea7235d78019b592dde8611": "b79fa5ca1cdbf72f253763797850f314",
".git/objects/0e/e3590f4d74c3a4e4621a8d048d01f13436ec7a": "25939fd9f3cb53628d90cf3f4f9a026a",
".git/objects/5a/8f821fcc79708f86c45b02078e2b5bcb8e0fd9": "5d8e1e56f58d10f04a7cb2c13c786d4f",
".git/objects/bb/070f16064b73890c935ca8f1c66e2a496cb4aa": "7cda943d160b9d321aaa0b2aa022f772",
".git/objects/bb/3085876799532613a08c7ebe43f24f0cc46864": "1b6aa21800d948d5513c15e54d131215",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/d0/83f4b0f2eebb0b9133984a6cf1123c3cad31df": "34a147302a06b3f2b6b9a52dfec89797",
".git/objects/b3/213802a36cd1b362d32533515bd4713e770f68": "72fa36ed16c02c23fe12b7535d4a3427",
".git/objects/df/7d2dcb89ab89da87467c0e1059b38c8d8f9296": "a44162ff357b024e4638ab18a9bb01c7",
".git/objects/bd/401a0965fa2510079b8cbbb018e7198885d6a1": "30218a7151c7c46afc05cb6380949942",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/69a991ac2526002d54fc9631355c277e7d9521": "fec0d84145fcc779a3f5cd6e7a447220",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c0/0ea24000c7a6b077ebee8601ed3fe9c62aa654": "f027f0222814717e78953e9763c01593",
".git/objects/fc/fda106515c8a1da994c48965da5c221aa1d8f1": "2d8c2b6561dc648f2317cfdce79de1ef",
".git/objects/f5/93a3661604aa69e02e59198fae955585f13493": "9dbe52f791aa06222f4249c3e5e4697b",
".git/objects/c8/e879d769e628010da7da46167c088fe8c1d28a": "92a48e56d128df318d8a0839179f6398",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/4b/ed17c1eca164ca6942cbc275c5b5e487c19c6f": "0a92121283234c745234bcddf7333f07",
".git/objects/4b/20d265f99c81363d481b9122527af82435ec2d": "d8a96043a961c6e949272c6cd12589bf",
".git/objects/4b/08c92a6448f807045994c6de22d8ee9093aaab": "73d0aae290bed3c22142aa1a7a3ba56f",
".git/objects/45/a47cb6624f14f84156ea5aa99b7e1cbcae4359": "21551c00471ecc6f401aaa1aa6e0fab6",
".git/objects/87/c0de689f43bc10a452646788170ab62ab36c89": "7ad5ecc0bbaf53e3340be8990be1e202",
".git/objects/8f/960f29c69957c27d300201c25ac07caa31442e": "d1e9ea6a2413dd96e3778c84f380b56c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8a/d41123112dcc05e645c65693277074ac106233": "3de645de309caa9346a728f03e403fdd",
".git/objects/44/e40a1838c2509a927073bbfbf0912a3473750d": "5135c2a10fe6481a5bfc726527c91f51",
".git/objects/2a/e6c444441b0e7371f0ab78e16f0fdfda480b39": "58e1a4b7b9b175b1b25fe8ae0eda646d",
".git/objects/43/e946e398d96aee466fa0aabb625f0889c3a4bd": "ac34520dee747f675e6e0a15c0bbd2be",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/88/9abae8ac66225d5632296bc8cbe96766ea2d39": "0cb979396e0db94cc3e6c1abaf31f237",
".git/objects/5c/c6b490a6d2abcb3104cd22d8091b93110b3719": "d4c8ffaa5603b7e1787b74cceb0cd761",
".git/objects/09/6fe12d44e1dcd48f4fb3277792dba0577e3372": "14d3c32f83eb0f4836ddf12576d411fb",
".git/objects/91/3d39e080a88168fc2741d6d319ec75bcab85e8": "27fc5d799dcd0902f44701c531df934d",
".git/objects/54/ddd96fb94ec507634cafb02774c78f6d10a431": "b1763b5c7ff1668eaafbc20df93f22c5",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/5b/73d777de7be69e0e578d356f5ea646b3b7a6e6": "47e8db75b4bb0d892cfe8b013972524d",
".git/objects/6c/ced946ea58623bb7ac2b6eafff12e2a1a927d0": "830c5fe24918807cc140df5d308ec175",
".git/objects/0a/85172ced5dc76f1a089ca1b14afa42ca24b024": "34ccfdce95029ef1f0bddd5024e5b567",
".git/objects/bf/5e7a0edf71e2901a395e0d27938b1999c373ff": "45a42fcb5bd9dd9585958458f099ee92",
".git/objects/ba/8cb00dd5231f1a55de0205c16445926a696526": "be8592f9341c9b01b70890c8614c6cf7",
".git/objects/a9/76e3eaab19699fc7e1aab2246c1880572c8896": "9c21ded8cb9552fc22c48d05f031d820",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/b6cb8574a89f3851487e7d323d5a02ddcbb0f3": "3eb63ebb0a240ddab4d3ee074303c86f",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/cc/75a02c7d7abcd48d772e09fb7234cdfc50b809": "70cc4c7b887feca1ad026781311dd4f1",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/e8/a33d7414b7bf9c3092475852b6884f28798420": "d22d09e0c2142ea6234b7965a849c641",
".git/objects/fa/81d0cc454e3cb76ad2b16e97d09d6e390c48ba": "9190dbcf22d3f0b88a877e19fbdd02ae",
".git/objects/e0/ba413c91604d248e87ed5f5a7d9f381e53ad8f": "65ce7edad335116b6fd9a0b97162ce35",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/2d/cd44934bf5adf1de00048d7954eca1a3d2e333": "abf22eaf828ad16e93c1b8f07ce40720",
".git/objects/48/33fcf9ba677d3df448c90e63368e50f8bfc8d6": "a5b926fccf641f8e2a09e52478c0d37a",
".git/objects/1e/f0090f1d40f31656e0304eb458592cb8d8573e": "9b08d3c659b3e39d20cbb76724b0f9dd",
".git/objects/1e/4f014984a79bc46bfc210e37c6f5cd228a09d8": "a0f24425215878208fe4287317eeb217",
".git/objects/24/2d1a8dbb6fef779b91a84faa30980ad5f31738": "38f4e54e91418471f24902f07278887a",
".git/objects/4f/d0e51f345ee398d4c56c9a2a36514cfdc54f3e": "d8e976b7b97437231f01681fc40815a3",
".git/objects/1d/696a140fdd65cfcc29e962c21b3aac65c6113a": "db8bca5e0bdc7ede42e18c5e11e87644",
".git/objects/2b/41eee8ca916e4c804cfb815a80f2493501ca95": "72f90977b0ff634da29023118107bcaf",
".git/objects/2b/e39c7fd3da441ddac9bea54fd12621dd39960a": "24031b20667d22ca8dba4debe8b9eab5",
".git/objects/47/6bfd51204cd83fc8286093cf98ba1567fd735c": "041cbb693d6a1c22804a8b83a2a1bb48",
".git/objects/78/b9a538640a4650b9353daa4652f2071b5b8679": "83fdc0598089bf9617d8ec200ceb65ba",
".git/objects/22/883b83679169b8a42b30ee08190e307be2b956": "b7ee0104930f687d22eda854f6960c02",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "054942d998e90d9d4ac1d2c2166bb095",
".git/logs/refs/heads/flutter": "ae3153f0821b2365a0c53f4884f4aab8",
".git/logs/refs/heads/main": "d83b98b19028782fa5290a0019bcd0ce",
".git/logs/refs/remotes/origin/flutter": "5a5352ad30ab95a5cee4014be15461d1",
".git/logs/refs/remotes/origin/main": "b8dc9b269734a2ef3176826c204dfaeb",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/flutter": "d4d37f9ee7f09fb97c7e3fd84a9a5670",
".git/refs/heads/main": "d4d37f9ee7f09fb97c7e3fd84a9a5670",
".git/refs/remotes/origin/flutter": "d4d37f9ee7f09fb97c7e3fd84a9a5670",
".git/refs/remotes/origin/main": "d4d37f9ee7f09fb97c7e3fd84a9a5670",
".git/index": "7ce8dcc907ddc2685373acbf865699f3",
".git/COMMIT_EDITMSG": "d30db53b183992f317d0aa7aff479a64",
".git/FETCH_HEAD": "20bfd714cc301417936b6d26eabe5d4d",
"assets/AssetManifest.json": "c74440413fa84a3b439cadad71a507b7",
"assets/NOTICES": "5b476a95c24cbe376cb7727bb9df0e1a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "30faba37620c32f90b415f399eef84b5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "f2163b9d4e6f1ea52063f498c8878bb9",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "db4d21c598d20abd7a1e73b48a0941ea",
"assets/fonts/MaterialIcons-Regular.otf": "36015650dad8cf1a021350b3be7d8233",
"assets/assets/gradient.png": "699a6b8480b90c21675f41ca38c710c7",
"assets/assets/mockup.png": "4291ac69c5c91dedc0522a7c0df89bab",
"assets/assets/logo.svg": "90f4f80ac7b5bf6944aa99aa772a9818",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
