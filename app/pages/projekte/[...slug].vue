<template>

    <div class="bg-white py-24 sm:py-32">
   
        <div class="bg-gray-50">
            <div v-if="project" class="mx-auto max-w-2xl px-4 py-24 sm:px-6 sm:py-32 lg:max-w-7xl lg:px-8">
                <!-- Details section -->
                <section aria-labelledby="details-heading">
                    <div class="flex flex-col items-center text-center">
                        <h2 id="details-heading" class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">{{
                            project.title }}</h2>
                        <p class="mt-3 max-w-3xl text-lg text-gray-600">{{ project.description   }}</p>
                    </div>

                    <div class="mt-16 grid grid-cols-1 gap-y-16 lg:grid-cols-2 lg:gap-x-8">
                        <div v-for="(img, index) in project.image" :key="index">
                            <img 
                            :src="img.src" 
                            :alt="img.alt"
                            class="aspect-3/2 w-full rounded-lg object-cover">
                            
                        </div>
                        <div class="lg:col-span-2">                            
                            <p class="mt-8 text-base text-gray-500">{{ project.longDescription }}</p>
                        </div>

                    </div>
                </section>
            </div>
            <div v-else>
            <p>Projekti nuk u gjet.</p>
        </div>
        </div>


    </div>
</template>

<script setup lang="ts">


const parametr = useRoute();
const getParams = parametr.path.split('/')[2];
const project = getProjekte[parseInt(getParams as string) - 1];
</script>