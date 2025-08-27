'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "b1d1cc8caaee9ac979aaaa009b58ca97",
"assets/AssetManifest.bin.json": "3ff7b28c91bc8e3efe69a85dcef3f8bb",
"assets/AssetManifest.json": "d155e325c8c7ada7f0884e3b7ee4abdd",
"assets/assets/fonts/Poppins-Black.ttf": "14d00dab1f6802e787183ecab5cce85e",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-ExtraBold.ttf": "d45bdbc2d4a98c1ecb17821a1dbbd3a4",
"assets/assets/fonts/Poppins-ExtraLight.ttf": "6f8391bbdaeaa540388796c858dfd8ca",
"assets/assets/fonts/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/fonts/Poppins-Thin.ttf": "9ec263601ee3fcd71763941207c9ad0d",
"assets/assets/fonts/Righteous-Regular.ttf": "ff35ec5aa1a0f38f880024b89ca1e6bd",
"assets/assets/icons/github.svg": "2884e975117c72d04f403708db6921b8",
"assets/assets/icons/logo.png": "d8a18fbae875e9197aa80dd34b80fbb0",
"assets/assets/icons/newgrounds.svg": "88d8447b7633f00aa59093088533a8e4",
"assets/assets/icons/soundcloud.svg": "6b36df1f8241e24dcf3fca686ab3cd4a",
"assets/assets/icons/spotify.svg": "6d88457d9834fd6e6d95773c8fbaa6b0",
"assets/assets/icons/telegram.svg": "9464bed00db35013bd86eeea9449f37b",
"assets/assets/icons/twitch.svg": "cae64a64b84dfe4f65f9d4178946b0e8",
"assets/assets/icons/twitter.svg": "0b2cb2f6413a46816036a993ab758c1e",
"assets/assets/icons/vk.svg": "5b99cc4afc4c67be57e8b5103abc5a58",
"assets/assets/icons/yandex.svg": "4a43bfbbfd4773ad6797be6c6670c1a3",
"assets/assets/icons/youtube.svg": "054cf8a22270a38f50a404c38c29597b",
"assets/assets/images/cutie.png": "c5203aec50138e6ab78fd40c2d5cd78e",
"assets/assets/images/DTR_cover.jpg": "7e61bf360425dddd1f232e65ed23473c",
"assets/assets/images/foe.jpg": "8820767e955bfd1694f0a3c94f19cf87",
"assets/assets/images/GASTDASH_BG.png": "e9af1c2c56118df066b838486a072c36",
"assets/assets/images/jem.jpg": "8480528e085dad6e69705d8b7d4c9ca0",
"assets/assets/images/noise.png": "86f22ae1a498bb8f0c39264f9c7c796c",
"assets/assets/images/ponyland.jpg": "9349f046b944a9b0fe9b413c7b412db4",
"assets/FontManifest.json": "5bdb3f2e6316b0fbfd0ddc645d46961b",
"assets/fonts/MaterialIcons-Regular.otf": "c7cea5ce2706bf5ab664ff060475e454",
"assets/NOTICES": "95d74105ac753861e4a8132b36321978",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "d7d83bd9ee909f8a9b348f56ca7b68c6",
"assets/packages/wakelock_plus/assets/no_sleep.js": "9c3aa3cd0b217305aa860decab3d9f42",
"assets/packages/youtube_player_iframe/assets/player.html": "663ba81294a9f52b1afe96815bb6ecf9",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/translations/1.png": "135c7ef644b1f79234c0b4b495ec3534",
"assets/translations/10.png": "9a52aa6e0b010be0a9b423b60ed5c71c",
"assets/translations/11.png": "5854334cd16b79700e3a8a6a807b98ec",
"assets/translations/12.png": "c2702717160e10d4ff6b4358a4528e32",
"assets/translations/13.png": "53e5f4d727fec562515c78153e5ef6b8",
"assets/translations/14.png": "1419b68e57622b7dbff03a16a882ed40",
"assets/translations/15.png": "0ef3ab2aed23e223c13df994dc5e6511",
"assets/translations/16.png": "a9e9e2c2807b83dac463beea8ed7c246",
"assets/translations/17.png": "b3c952f1464d005ba226b0bcd88a507e",
"assets/translations/18.png": "fff21169479f5ae503ed076f128bab75",
"assets/translations/2.png": "8bb7ca876188ae7fecdc5b9b857b4c5c",
"assets/translations/20.png": "2d9926073450f1e74f9449b2c82b8110",
"assets/translations/21.png": "39b05b91cf99bd849d7b482229714ce9",
"assets/translations/22.png": "d44078cfb9bbe2fb1aeb66eb434fe996",
"assets/translations/23.png": "a685dad5a7e70d52dadc7e0c50ca668e",
"assets/translations/24.png": "837cfb570a4a508a3a80a3b532c8d070",
"assets/translations/25.png": "d3715db753a7a9ed77597bd39a70f816",
"assets/translations/26.png": "f5dc8776990d8bf56875c01de7676964",
"assets/translations/28.png": "3246f71f0265a2fad71e87c4d0f9cb83",
"assets/translations/3.png": "64940a739d63a8fe07a904fc6238a4fd",
"assets/translations/33.png": "c6981b9781b2bd00f4a952ff44168288",
"assets/translations/34.png": "01790bd383f6895f48a879246bfb95f4",
"assets/translations/36.png": "bdc70e4dc0cf835776d3c395d8b44b7f",
"assets/translations/37.png": "ecd8590ed8d43cb5b6078c80b4761f93",
"assets/translations/4.png": "a01db8754ddf3fa0fb647d3079618199",
"assets/translations/40.png": "4e5be4bbaf60acbf91108f0cb842a4fa",
"assets/translations/44.png": "43745c7a08e96b366070d5fabc839102",
"assets/translations/45.png": "5240e54f85e7adaed7e62425a1a1abc8",
"assets/translations/46.png": "c31cbce35734a769d8017a7c14d84153",
"assets/translations/49.png": "7fc07dec9203d8ef72aa0696b58f3a5a",
"assets/translations/5.png": "3376699aef71f3b40804affd2ef99888",
"assets/translations/51.png": "f3932a441af355b890876d2a177502c0",
"assets/translations/54.png": "195d43aa75092cc0dd9f1ce2b2344fc2",
"assets/translations/55.png": "b33c01b23d7f339611748269197a220d",
"assets/translations/56.png": "466c453de98e02b1d3bf380386f42edc",
"assets/translations/57.png": "09e564091a263ace716597a4d18b3efd",
"assets/translations/58.png": "7293b35e7aa55d99b5ae8ad155ca1b5f",
"assets/translations/59.png": "2ce3cec2777c0c7d1c536f0cfc167fc6",
"assets/translations/61.png": "016cb55557b059b98392caa447643025",
"assets/translations/62.png": "8db6ccc129faa65a03503eb2e464cb16",
"assets/translations/64.png": "c2e4dbdc6559637ab707161dbeb547b6",
"assets/translations/65.png": "ff6133bc35e01a9ae60a122690f5bd93",
"assets/translations/66.png": "6404c63ac3f0acb0681c80e8122b68ee",
"assets/translations/67.png": "3fb534d502bf189c3757ec5dbd28972c",
"assets/translations/69.png": "210f58fccdcf83b4a388a489675b11b8",
"assets/translations/7.png": "1bf184c3acda9aef358a58e5f51c8090",
"assets/translations/71.png": "1fdd17e615b571d36d86c456228a1fbf",
"assets/translations/73.png": "1d0225b92e8343082da5e8b057056698",
"assets/translations/76.png": "dcc19e4012aaf3fe281504c3de0848d9",
"assets/translations/78.png": "8f39e199a957397feaa780d1a7f74f33",
"assets/translations/80.png": "415d0d65358a5fe262d7af26396e9067",
"assets/translations/82.png": "c032887e208a5b0f6f3bdb6b4c423427",
"assets/translations/83.png": "ef0d22f26777608c53866be0f2b7ba77",
"assets/translations/86.png": "a361b8c9d33d33a7fdda67de8411eaf3",
"assets/translations/87.png": "07a4350e830944d3db5adc37cbcb2c34",
"assets/translations/88.png": "6ae7e70cf0fe10bf065888845190ffa8",
"assets/translations/9.png": "325de75946752b142a21cdf9a896aa77",
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
"favicon.png": "95b6a23dc4ff7ae56935bedd9d34b6d0",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "d61d600cd103061cd3b205eb01dc64ba",
"icons/Icon-192.png": "0ca751b0d89c0b056a19ee8ef0daf0eb",
"icons/Icon-512.png": "b40a78b0d98b31e237e100bb7375cddb",
"icons/Icon-maskable-192.png": "0ca751b0d89c0b056a19ee8ef0daf0eb",
"icons/Icon-maskable-512.png": "b40a78b0d98b31e237e100bb7375cddb",
"index.html": "275430c35a513122de90c9d8aea639b7",
"/": "275430c35a513122de90c9d8aea639b7",
"main.dart.js": "2fad94067edd856fdcee5de8f5cd8495",
"manifest.json": "2c073cb597f2a5e4836d99fb87d7cee7",
"version.json": "4c9c5fb4b7675e41278baa2cad4e3008"};
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
