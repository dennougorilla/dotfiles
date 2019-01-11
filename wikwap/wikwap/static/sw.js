importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/2fea501dcd075e8da64b.js",
    "revision": "e274d5f9d256f1bc314f1dfca1c86dfb"
  },
  {
    "url": "/_nuxt/310fa2f016a218211a27.js",
    "revision": "d04368e8148e2b88c11f8edaa1f541e5"
  },
  {
    "url": "/_nuxt/6da55820e806ee5d723d.js",
    "revision": "269982b85744c3f570174bc8bcc6ca52"
  },
  {
    "url": "/_nuxt/ce39aef218b2c22de859.js",
    "revision": "886cea416c8f196694bc1e79f41a3b84"
  },
  {
    "url": "/_nuxt/f29ee100f93e988641ea.js",
    "revision": "875c6883de9f792a53890e10a015926b"
  }
], {
  "cacheId": "wikwap",
  "directoryIndex": "/",
  "cleanUrls": false
})

workbox.clientsClaim()
workbox.skipWaiting()

workbox.routing.registerRoute(new RegExp('/_nuxt/.*'), workbox.strategies.cacheFirst({}), 'GET')

workbox.routing.registerRoute(new RegExp('/.*'), workbox.strategies.networkFirst({}), 'GET')
