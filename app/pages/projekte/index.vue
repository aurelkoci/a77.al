<template>
    <div class="bg-white py-24 sm:py-32">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
            <div class="mx-auto max-w-2xl text-center">
                <h2 class="text-4xl font-semibold tracking-tight text-balance text-gray-900 sm:text-5xl">
                    Projekti i fundit
                </h2>
                <p class="mt-2 text-lg/8 text-gray-600">Shiko projektet tona më të fundit dhe më të spikatura.</p>
            </div>
            <div class="mx-auto mt-16 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-20 lg:mx-0 lg:max-w-none lg:grid-cols-3">
                <article 
                v-for="project in getProjekte" 
                :key="project.id"
                    class="relative isolate flex flex-col items-start justify-between">
                    <div class="relative w-full">
                        <img
                            v-if="project.image[0]" 
                            :src="project.image[0].src" 
                            :alt="project.image[0].alt"
                            class="aspect-video w-full rounded-2xl bg-gray-100 object-cover sm:aspect-2/1 lg:aspect-3/2">
                        <div class="absolute inset-0 rounded-2xl inset-ring inset-ring-gray-900/10" />
                    </div>
                    <div class="flex max-w-xl grow flex-col justify-between">
                        <div class="mt-8 flex items-center gap-x-4 text-xs">
                            <span class="text-gray-500">
                                {{ project.data }}
                            </span>
                            <p 
                                class="relative z-10 rounded-full bg-gray-50 px-3 py-1.5 font-medium text-gray-600 hover:bg-gray-100">
                                {{ project.lloji }}
                            </p>
                        </div>
                        <div class="group grow">
                            <h3 class="mt-3 text-lg/6 font-semibold text-gray-900 group-hover:text-gray-600">
                                <NuxtLink 
                                :to="project.to">
                                    <span class="absolute inset-0 z-20" />
                                    {{ project.title }}
                                </NuxtLink>
                            </h3>
                            <p class="mt-5 line-clamp-3 text-sm/6 text-gray-600">
                                {{ project.description }}
                            </p>
                        </div>
                        <div class="relative mt-8 flex items-center gap-x-4 justify-self-end">
                            <img 
                            :src="project.client?.logo" 
                            :alt="project.client?.name" 
                            class="size-10 rounded-full bg-gray-100">
                            <div class="text-sm/6">
                                <p class="font-semibold text-gray-900">
                                    <a href="#">
                                        <span class="absolute inset-0" />
                                        {{ project.client?.name }}
                                    </a>
                                </p>
                                <p class="text-gray-600">
                                    {{ project.client?.description }}
                                </p>
                            </div>
                        </div>
                    </div>
                </article>

            </div>
        </div>
    </div>

</template>

<script setup lang="ts">

// const projekte = getProjekte(); 
</script>