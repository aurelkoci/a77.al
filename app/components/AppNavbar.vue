<template>
  <header class="fixed top-0 w-full p-0.5 shadow-lg bg-arch-light dark:bg-arch-black z-50 justify-center-safe">
    <nav class="mx-auto flex max-w-7xl items-center justify-between p-3 lg:px-8" aria-label="Global">
      <div class="flex lg:flex-1">
        <NuxtLink to="/" class="-m-1.5 p-1.5">
          <span class="sr-only">A77 Architecture</span>
          <img src="/logo-v2.svg" alt="A77 Architecture Logo" class="h-8 w-auto dark:hidden" >
          <img src="/logo.svg" alt="A77 Architecture Logo" class="h-8 w-auto not-dark:hidden" >
        </NuxtLink>
      </div>

      <!-- Mobile menu button -->
      <div class="flex lg:hidden">
        <button
          type="button"
          class="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700 dark:text-gray-400"
          @click="mobileMenuOpen = true"
        >
          <span class="sr-only">Open main menu</span>
          <Bars3Icon class="size-6" aria-hidden="true" />
        </button>
      </div>

      <!-- Desktop navigation -->
      <PopoverGroup class="hidden lg:flex lg:gap-x-12">
        <!-- Shërbimet dropdown -->
        <Popover class="relative" @mouseenter="open = true" @mouseleave="open = false">
          <PopoverButton
:class="[
            open ? 'text-arch-accent' : 'text-arch-grey', 'flex items-center gap-x-1 text-sm/6 font-semibold hover:text-arch-accent transition'
          ]" 
          @click="open = !open"
          >
            Shërbimet
            <ChevronDownIcon 
            :class="[
                  open
                    ? 'text-arch-accent rotate-180 transition-transform'
                    : 'text-arch-grey',
                  'ml-2 h-5 w-5 group-hover:text-sky-500',
                ]"
            />
          </PopoverButton>
        <div class="w-24 h-8 absolute"/>
          <transition
            enter-active-class="transition ease-out duration-200"
            enter-from-class="opacity-0 translate-y-1"
            enter-to-class="translate-y-0"
            leave-active-class="transition ease-in duration-150"
            leave-from-class="translate-y-0"
            leave-to-class="opacity-0 translate-y-1"
          >
          <PopoverPanel 
          v-if="open"
          class="absolute left-1/2 z-10 mt-3 w-screen max-w-md -translate-x-1/2 overflow-hidden rounded-3xl bg-white shadow-lg outline-1 outline-gray-900/5 dark:bg-gray-800 dark:shadow-none dark:-outline-offset-1 dark:outline-white/10"
            static>
              <div class="p-4 space-y-1">
                 <NuxtLink
                v-for="service in navigation" :key="service.name"
                  :to="service.to"
                  class="group block rounded-2xl p-4 text-sm/6 hover:bg-gray-50 dark:hover:bg-white/5"
                  @click="open=false"
                >
                  <span class="block font-semibold text-gray-900 dark:text-white">{{ service.name }}</span>
                  <span class="mt-1 block text-gray-600 dark:text-gray-400"
                    >{{ service.description }}</span
                  >
                </NuxtLink>
              
              </div>
            </PopoverPanel>
          </transition>
        </Popover>

        <NuxtLink to="/projekte" class="text-sm/6 font-semibold text-gray-900 dark:text-white  hover:text-arch-accent transition"
          >Projekte</NuxtLink>
        <NuxtLink to="/rreth-nesh" class="text-sm/6 font-semibold text-gray-900 dark:text-white hover:text-arch-accent transition"
          >Rreth Nesh</NuxtLink>
        <NuxtLink to="/kontakt" class="text-sm/6 font-semibold text-gray-900 dark:text-white"
          >Kontakt</NuxtLink>
      </PopoverGroup>

      <!-- Desktop right -->
      <div class="hidden lg:flex lg:flex-1 lg:justify-end">
        <NuxtLink to="/login" class="text-sm/6 font-semibold text-gray-900 dark:text-white  hover:text-arch-accent transition "
          >login <span aria-hidden="true">&rarr;</span></NuxtLink>

      </div>
    </nav>

    <!-- Mobile menu dialog -->
    <Dialog class="lg:hidden" :open="mobileMenuOpen" @close="mobileMenuOpen = false">
      <div class="fixed inset-0 z-50" />
      <DialogPanel
        class="fixed inset-y-0 right-0 z-50 w-full overflow-y-auto bg-white p-6 sm:max-w-sm sm:ring-1 sm:ring-gray-900/10 dark:bg-gray-900 dark:sm:ring-gray-100/10"
      >
        <div class="flex items-center justify-between">
          <NuxtLink to="/" class="-m-1.5 p-1.5">
            <span class="sr-only">A77 Architecture</span>
            <img src="/logo-v2.svg" alt="A77 Architecture Logo" class="h-8 w-auto dark:hidden" >
            <img src="/logo.svg" alt="A77 Architecture Logo" class="h-8 w-auto not-dark:hidden" >
          </NuxtLink>
          <button
            type="button"
            class="-m-2.5 rounded-md p-2.5 text-gray-700 dark:text-gray-400"
            @click="mobileMenuOpen = false"
          >
            <span class="sr-only">Close menu</span>
            <XMarkIcon class="size-6" aria-hidden="true" />
          </button>
        </div>

        <div class="mt-6 flow-root">
          <div class="-my-6 divide-y divide-gray-500/10 dark:divide-white/10">
            <div class="space-y-4 py-6">
              <!-- Shërbimet accordion -->
              <Disclosure v-slot="{ open }" as="div" class="-mx-3">
                <DisclosureButton
                  class="flex w-full items-center justify-between rounded-2xl border border-gray-200 bg-gray-50 px-4 py-3 text-base/7 font-semibold text-gray-900 transition hover:border-arch-accent/40 hover:bg-white dark:border-white/10 dark:bg-white/5 dark:text-white dark:hover:border-white/20 dark:hover:bg-white/10"
                >
                  Shërbimet
                  <ChevronDownIcon
                    :class="[open ? 'rotate-180' : '', 'size-5 flex-none text-gray-400 dark:text-gray-500']"
                    aria-hidden="true"
                  />
                </DisclosureButton>
                <DisclosurePanel class="mt-3 block space-y-3">
                  <NuxtLink
                  v-for="service in navigation" :key="service.name"
                    :to="service.to"
                    class="block rounded-2xl border border-gray-200 bg-white px-4 py-3 text-sm text-gray-900 transition hover:border-arch-accent/40 hover:bg-gray-50 dark:border-white/10 dark:bg-white/5 dark:text-white dark:hover:border-white/20 dark:hover:bg-white/10"
                  >
                    <span class="block font-semibold">{{ service.name }}</span>
                    <span class="mt-1 block text-xs leading-6 text-gray-600 dark:text-gray-400"
                      >{{ service.description }}</span
                    >
                  </NuxtLink>
                 
                </DisclosurePanel>
              </Disclosure>

              <NuxtLink
                to="/projekte"
                class="-mx-3 block rounded-2xl px-4 py-3 text-base/7 font-semibold text-gray-900 transition hover:bg-gray-50 dark:text-white dark:hover:bg-white/5"
                >Projekte</NuxtLink>
              >
              <NuxtLink
                to="/rreth-nesh"
                class="-mx-3 block rounded-2xl px-4 py-3 text-base/7 font-semibold text-gray-900 transition hover:bg-gray-50 dark:text-white dark:hover:bg-white/5"
                >Rreth Nesh</NuxtLink
              >
              <NuxtLink
                to="/kontakt"
                class="-mx-3 block rounded-2xl px-4 py-3 text-base/7 font-semibold text-gray-900 transition hover:bg-gray-50 dark:text-white dark:hover:bg-white/5"
                >Kontakt</NuxtLink>
              >
            </div>

            <div class="py-6">
              <NuxtLink
                to="/kontakt"
                class="block rounded-2xl bg-arch-black px-4 py-3 text-center text-base/7 font-semibold text-white transition hover:bg-arch-accent dark:bg-white dark:text-gray-900 dark:hover:bg-gray-100"
              >
                Konsultohu për Projektin
              </NuxtLink>
            </div>
          </div>
        </div>
      </DialogPanel>
    </Dialog>
  </header>
   <UBreadcrumb :items="items" class="fixed top-16 left-0 w-full z-40"/>
</template>

<script setup>
import {
  Dialog,
  DialogPanel,
  Disclosure,
  DisclosureButton,
  DisclosurePanel,
  Popover,
  PopoverButton,
  PopoverGroup,
  PopoverPanel,
} from '@headlessui/vue'
import { Bars3Icon, XMarkIcon } from '@heroicons/vue/24/outline'
import { ChevronDownIcon } from '@heroicons/vue/20/solid'

const items = useBreadcrumbItems()
const mobileMenuOpen = ref(false)
const open = ref(false)
const navigation = [
  { name: 'Projektim Arkitektonik', to: '/sherbime/arkitekture', description: 'Projekte zbarimi dhe të plota për objekte banimi, publike dhe komerciale' },
  { name: 'Interier & Peizazh', to: '/sherbime/interieri', description: 'Projekte interieri dhe peizazhi për objekte banimi, publike dhe komerciale' },
  { name: 'Restaurim & Konservim', to: '/sherbime/restaurim', description: 'Projekte restaurimi dhe konservimi për objekte historike dhe kulturore' },
  { name: 'Menaxhim Projekti', to: '/sherbime/menaxhim', description: 'Mbikëqyrje, kolaudim inxhinierik dhe koordinim i plotë i zbatimit' },
  { name: 'Aktivitet Kërkimor', to: '/sherbime/kerkim', description: 'Analiza dhe kërkime që mbështesin zhvillimin e projekteve arkitektonike' },
]
</script>