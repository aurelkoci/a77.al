<template>
    <section class="bg-arch-light py-24 sm:py-32">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl text-center">
            <h2 class="text-4xl font-semibold tracking-tight text-balance text-gray-900 sm:text-5xl">
            Shërbimet tona
            </h2>
            <p class="mt-2 text-lg/8 text-gray-600">
            Ne ofrojmë një gamë të gjerë shërbimesh arkitekturore dhe inxhinierike për të ndihmuar klientët tanë të realizojnë vizionet e tyre.
            </p>
        </div>
        <div class="mx-auto mt-16 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-20 lg:mx-0 lg:max-w-none lg:grid-cols-3">        
            <div v-for="service in services" :key="service.id" class="flex flex-col items-start justify-between">
                <div class="relative w-full">
                    <img :src="service.image" alt="" class="aspect-video w-full rounded-2xl bg-gray-100 object-cover sm:aspect-2/1 lg:aspect-3/2">
                    <div class="absolute inset-0 rounded-2xl inset-ring inset-ring-gray-900/10" />
                </div>
                <div class="flex max-w-xl grow flex-col justify-between">
                    <div class="group relative grow">
                        <h3 class="mt-3 text-lg/6 font-semibold text-gray-900 group-hover:text-gray-600">
                            {{ service.title }}
                        </h3>
                        <p class="mt-5 line-clamp-3 text-sm/6 text-gray-600">{{ service.description }}</p>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
</template>
<script setup lang="ts">
const services = [
    {
        id: 1,
        title: 'Dizajn Arkitektonik',
        description: 'Krijojmë dizajne arkitektonike inovative dhe funksionale për projekte të ndryshme, duke përfshirë ndërtesa rezidenciale, komerciale dhe publike.',
        image: '/services/arkitektur.webp',
    },
    {
        id: 2,
        title: 'Dizajn Interieri',          
        description: 'Ofrojmë shërbime të dizajnit të brendshëm për hapësira rezidenciale dhe komerciale, duke krijuar ambiente estetike dhe funksionale.',
        image: '/services/interier.webp',
    },
    {
        id: 3,
        title: 'Menaxhim i Projektit',
        description: 'Menaxhojmë procesin e projektit nga fillimi deri në përfundim, duke siguruar që çdo fazë të realizohet në mënyrë efikase dhe brenda buxhetit të përcaktuar.',
        image: '/services/menaxhim.webp',
    },
];
</script>