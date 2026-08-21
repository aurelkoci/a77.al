<script setup lang="ts">
const contactData = ref({
  title: 'Na Kontaktoni',
  description: 'Jemi të gatshëm të dëgjojmë idetë tuaja dhe t\'i kthejmë ato në hapësira reale. Na shkruani për çdo pyetje apo kërkesë për bashkëpunim.',
  items: [
    {
      id: 1,
      title: 'Projekte & Konsulencë',
      email: 'projekte@a77.al',
      phone: '+355 69 40 04 244'
    },
    {
      id: 2,
      title: 'Informacion i Përgjithshëm',
      email: 'info@a77.al',
      phone: '+355 69 40 04 244'
    },
    {
      id: 3,
      title: 'Karriera (Join the Team)',
      email: 'karriera@a77.al',
      phone: '+355 69 40 04 244'
    },
    {
      id: 4,
      title: 'Media & Publikime',
      email: 'media@a77.al',
      phone: '+355 69 40 04 244'
    }
  ]
})

// === VARIABLAT PËR SEKSIONIN: ZYRAT TONA ===
const locationsData = ref({
  title: 'Zyrat Tona',
  description: 'Na vizitoni në studiot tona për të parë nga afër procesin krijues dhe inxhinierik të projekteve që zhvillojmë.',
  items: [
    {
      id: 1,
      title: 'Tiranë (Zyra Qendrore)',
      addressLine1: 'Rruga Ndre Mjeda',
      addressLine2: 'Tiranë 1001, Shqipëri'
    }
  ]
})
</script>

<template>
  <div class="bg-arch-light py-8 sm:py-16 dark:bg-[#111111]">
    <div class="mx-auto max-w-7xl px-6 lg:px-8">
      <div class="mx-auto max-w-2xl divide-y divide-gray-200 lg:mx-0 lg:max-w-none dark:divide-white/10">
        
        <!-- ==============================
             SEKSIONI: NA KONTAKTONI 
             ============================== -->
        <div class="grid grid-cols-1 gap-10 py-16 lg:grid-cols-3">
          <!-- Pjesa e tekstit -->
          <div>
            <h2 class="text-4xl font-heading font-semibold tracking-tight text-pretty text-arch-black dark:text-white">
              {{ contactData.title }}
            </h2>
            <p class="mt-4 text-base/7 font-body text-gray-600 dark:text-[#A0A0A0]">
              {{ contactData.description }}
            </p>
          </div>
          
          <!-- Loop për kartat e kontaktit -->
          <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:col-span-2 lg:gap-8">
            <div 
              v-for="item in contactData.items" 
              :key="item.id" 
              class="rounded-2xl bg-white p-10 shadow-sm border border-gray-100 dark:bg-gray-800/50 dark:border-gray-800"
            >
              <h3 class="text-base/7 font-heading font-semibold text-arch-black dark:text-white">
                {{ item.title }}
              </h3>
              <dl class="mt-3 space-y-1 font-body text-sm/6 text-gray-600 dark:text-[#A0A0A0]">
                <div>
                  <dt class="sr-only">Email</dt>
                  <dd>
                    <!-- Krijon lidhjen dinamike mailto: -->
                    <a 
                      class="font-semibold text-arch-accent hover:opacity-80 transition dark:text-[#d97357]" 
                      :href="`mailto:${item.email}`"
                    >
                      {{ item.email }}
                    </a>
                  </dd>
                </div>
                <!-- Shfaq numrin vetëm nëse ekziston në variabël -->
                <div v-if="item.phone" class="mt-1">
                  <dt class="sr-only">Numri i telefonit</dt>
                  <dd>{{ item.phone }}</dd>
                </div>
              </dl>
            </div>
          </div>
        </div>

        <!-- ==============================
             SEKSIONI: ZYRAT TONA 
             ============================== -->
        <div class="grid grid-cols-1 gap-10 py-16 lg:grid-cols-3">
          <!-- Pjesa e tekstit -->
          <div>
            <h2 class="text-4xl font-heading font-semibold tracking-tight text-pretty text-arch-black dark:text-white">
              {{ locationsData.title }}
            </h2>
            <p class="mt-4 text-base/7 font-body text-gray-600 dark:text-[#A0A0A0]">
              {{ locationsData.description }}
            </p>
          </div>
          
          <!-- Loop për kartat e zyrave -->
          <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:col-span-2 lg:gap-8">
            <div 
              v-for="location in locationsData.items" 
              :key="location.id" 
              class="rounded-2xl bg-white p-10 shadow-sm border border-gray-100 dark:bg-gray-800/50 dark:border-gray-800"
            >
              <h3 class="text-base/7 font-heading font-semibold text-arch-black dark:text-white">
                {{ location.title }}
              </h3>
              <address class="mt-3 space-y-1 font-body text-sm/6 text-gray-600 not-italic dark:text-[#A0A0A0]">
                <p>{{ location.addressLine1 }}</p>
                <p>{{ location.addressLine2 }}</p>
              </address>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</template>