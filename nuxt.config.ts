// https://nuxt.com/docs/api/configuration/nuxt-config
import tailwindcss from "@tailwindcss/vite";
export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },

  modules: [
    '@nuxt/eslint',
    '@nuxtjs/seo',
    '@nuxt/ui',
    '@nuxt/image'
  ],
   css: ['~/assets/css/main.css'],
  vite: {
    plugins: [
      tailwindcss(),
    ],
  },
   nitro: {
    prerender: {
      crawlLinks: true,
      routes: ['/', '/projekte', '/sherbime/arkitekture', '/sherbime/interieri', '/sherbime/restaurim', '/sherbime/menaxhim', '/sherbime/kerkim', '/rreth-nesh', '/kontakt']
    }
  },
   site: {
    url: 'https://a77.al',
    name: 'Arkitekture 77',
    description: 'Studio projektimi, arkitekture dhe inxhinierie në Shqipëri.',
    image: '/logo-v2.svg',
    twitter: '@arkitekture77',
    defaultLocale: 'sq',
  },
  ogImage: {
    enabled: true
  },
  sitemap: {
    urls: ['/', '/projekte', '/sherbime/arkitekture', '/sherbime/interieri', '/sherbime/urbanizim', '/sherbime/restaurim', '/sherbime/manaxhim', '/sherbime/kerkim', '/rreth-nesh', '/kontakt'],
  },
  seo: {
    redirectToCanonicalSiteUrl: true // Ridrejton automatikisht www në jo-www ose anasjelltas bazuar te URL-ja lart
  },
   robots: {
    groups: [
      {
        userAgent: '*',
        allow: '/',
        contentUsage: {
          'train-ai': 'n'
        },
        contentSignal: {
          'ai-train': 'no',
          'search': 'yes'
        }
      }
    ]
  }
})