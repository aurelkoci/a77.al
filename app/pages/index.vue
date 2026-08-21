<!-- eslint-disable vue/no-multiple-template-root -->
<template>

  <div class="relative isolate overflow-hidden pt-14">
    <img src="/hero/1.webp" alt="Render i projektit arkitektonik interier"
      class="absolute inset-0 -z-10 size-full object-cover not-dark:hidden">
    <img src="/hero/1.webp" alt="interior design render"
      class="absolute inset-0 -z-10 size-full object-cover opacity-95 dark:hidden">
    <div class="absolute inset-0 -z-10 bg-arch-black/55 dark:bg-arch-black/70" />
  
    <div class="mx-auto max-w-7xl px-6 lg:px-8">
      <div class="mx-auto max-w-2xl py-32 sm:py-48 lg:py-56">
        <div class="hidden sm:mb-8 sm:flex sm:justify-center">
          <div class="relative rounded-full bg-black/30 px-3 py-1 text-sm/6 text-arch-light ring-1 ring-white/30">
            Studio multidisiplinare për arkitekturë dhe interier.
            <a href="#sherbimet" class="font-semibold text-arch-accent"><span aria-hidden="true"
                class="absolute inset-0" />Shiko
              shërbimet <span aria-hidden="true">&rarr;</span></a>
          </div>
        </div>
        <div class="text-center">
          <h1
            class="font-heading text-5xl font-bold tracking-tight text-balance text-arch-light drop-shadow-lg sm:text-7xl">
            Dizajn që frymëzon,
            <span class="text-arch-accent">struktura që qëndrojnë.</span>
          </h1>
          <p class="mt-8 text-lg font-medium text-pretty text-arch-light/90 sm:text-xl/8">
            Ofrim i zgjidhjeve të plota arkitektonike, nga konceptimi dhe
            dizajni tek menaxhimi inxhinierik i projektit.
          </p>
          <div class="mt-10 flex items-center justify-center gap-x-6">
            <a href="#kontakt"
              class="rounded-md bg-arch-accent px-5 py-3 text-sm font-semibold text-white shadow-lg transition hover:bg-arch-accent/90">Konsultohu
              për projektin</a>
            <a href="#rreth-nesh" class="text-sm/6 font-semibold text-arch-light transition hover:text-arch-accent">Mëso
              më shumë <span aria-hidden="true">→</span></a>
          </div>
        </div>
      </div>
    </div>
   
  </div>


  <section id="rreth-nesh" class="py-20 bg-arch-light">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="text-center max-w-3xl mx-auto">
        <h2 class="font-heading font-bold text-3xl text-arch-black mb-4">
          Misioni Ynë
        </h2>
        <div class="w-16 h-1 bg-arch-accent mx-auto mb-8" />
        <p class="text-gray-700 leading-relaxed text-lg">
          A77 është një studio arkitekture multidisiplinare që ofron zgjidhje
          'end-to-end'. Ne gërshetojmë dizajnin bashkëkohor me saktësinë
          teknike inxhinierike, duke i dhënë vlerë çdo hapësire që ne
          planifikojmë, vizualizojmë apo menaxhojmë.
        </p>
      </div>
    </div>
  </section>


  <section id="sherbimet" class="py-20 bg-white">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="text-center mb-16">
        <h2 class="font-heading font-bold text-3xl text-arch-black mb-4">
          Ekspertiza Jonë
        </h2>
        <div class="w-16 h-1 bg-arch-accent mx-auto" />
      </div>

      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

        <div class="p-8 border border-gray-100 shadow-sm hover:shadow-md transition bg-arch-light">
          <h3 class="font-heading font-semibold text-xl mb-3 text-arch-black">
            Arkitekturë & Projektim
          </h3>
          <p class="text-gray-600 font-light text-sm leading-relaxed">
            Hartim projektesh për objekte banimi dhe publike, studime
            fizibiliteti (PDV) dhe përgatitje dokumentacioni për leje
            ndërtimi.
          </p>
        </div>


        <div class="p-8 border border-gray-100 shadow-sm hover:shadow-md transition bg-arch-light">
          <h3 class="font-heading font-semibold text-xl mb-3 text-arch-black">
            Interier & Peizazh
          </h3>
          <p class="text-gray-600 font-light text-sm leading-relaxed">
            Dizajn i hapësirave të brendshme, zgjidhje për akustikën,
            ndriçimin dhe arkitekturën e gjelbër (peizazh & çati të gjelbra).
          </p>
        </div>


        <div class="p-8 border border-gray-100 shadow-sm hover:shadow-md transition bg-arch-light">
          <h3 class="font-heading font-semibold text-xl mb-3 text-arch-black">
            Restaurim & Konservim
          </h3>
          <p class="text-gray-600 font-light text-sm leading-relaxed">
            Projektim dhe konsulencë teknike për objekte me rëndësi historike
            si dhe procese të detajuara rikonstruksioni.
          </p>
        </div>


        <div class="p-8 border border-gray-100 shadow-sm hover:shadow-md transition bg-arch-light">
          <h3 class="font-heading font-semibold text-xl mb-3 text-arch-black">
            Menaxhim Projekti
          </h3>
          <p class="text-gray-600 font-light text-sm leading-relaxed">
            Mbikëqyrje, kolaudim inxhinierik, rilevime topografike, auditim
            energjetik dhe certifikim ekologjik.
          </p>
        </div>


        <div class="p-8 border border-gray-100 shadow-sm hover:shadow-md transition bg-arch-light">
          <h3 class="font-heading font-semibold text-xl mb-3 text-arch-black">
            Aktivitet Kërkimor
          </h3>
          <p class="text-gray-600 font-light text-sm leading-relaxed">
            Tregtim i materialeve profesionale, si dhe organizim botimesh e
            kërkime akademike në fushën e arkitekturës.
          </p>
        </div>
      </div>
    </div>
  </section>
</template>
<script setup lang="ts">

// useSeoMeta({
//   title: 'A77 Architecture | Studio Projektimi',
//   description: 'Dizajn që frymëzon, struktura që qëndrojnë. Ofrojmë zgjidhje të plota arkitektonike dhe inxhinierike.',
//   // Open Graph (Facebook, LinkedIn)
//   ogTitle: 'A77 Architecture | Studio Projektimi',
//   ogDescription: 'Dizajn që frymëzon, struktura që qëndrojnë. Ofrojmë zgjidhje të plota arkitektonike dhe inxhinierike.',
//   ogType: 'website',
//   ogImage: '/og-images/1.webp',
  
//   // Twitter / X
//   twitterCard: 'summary_large_image',
//   twitterTitle: 'A77 Architecture | Studio Projektimi',
//   twitterDescription: 'Dizajn që frymëzon, struktura që qëndrojnë. Ofrojmë zgjidhje të plota arkitektonike dhe inxhinierike.',
// })


// useSchemaOrg([
//   defineLocalBusiness({
//     name: 'A77 Architecture',
//     logo: '/logo.svg',
//     image: '/og-image.jpg', // Nëse keni një foto zyre ose projekti
//     description: 'Studio arkitekture multidisiplinare me bazë në Tiranë.',
//     address: {
//       addressLocality: 'Tiranë',
//       addressCountry: 'AL'
//     },
//     email: 'info@a77.al'
//   }),
//   defineWebPage(),
//   defineWebSite({
//     name: 'A77 Architecture'
//   })
// ])
defineOgImage('Index.takumi', {
  title: 'Miresevini në Arkitekture 77',
  message: 'Studio Projektimi & Inxhinieri',
})
</script>