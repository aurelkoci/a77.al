<script setup lang="ts">
const { title = 'A77 Architecture', message = 'Studio Projektimi & Inxhinieri' } = defineProps<{
  title?: string
  message?: string
}>()
</script>

<template>
  <!-- Shtuar 'relative' dhe 'overflow-hidden'. Ngjyrat janë marrë nga Brand Book i A77 -->
  <div class="relative h-full w-full flex items-start justify-start border-solid border-[#111111] border-[12px] bg-[#F8F9FA] overflow-hidden">
   
    <!-- Logoja si Watermark (Sfond) -->
    <!-- Mund ta vendosni top-0 left-0 ose -bottom-10 -right-10 për një pamje më asimetrike/moderne -->
    <img 
      src="/logo.svg" 
      alt="A77 Logo Watermark" 
      class="absolute top-[-5%] right-[-5%] w-[350px] h-[350px] opacity-[0.04] pointer-events-none" 
    />
    
    <div class="flex items-start justify-start h-full w-full z-10 relative">
      <div class="flex flex-col justify-between w-full h-full p-16 md:p-20">
        
        <!-- Titulli i Kartës (Shembull: Projekti X ose Shërbimi Y) -->
        <h1 class="text-[60px] md:text-[80px] leading-[1.1] font-bold text-[#111111] tracking-tight">
          {{ title }}
        </h1>
        
        <!-- Fundi i Kartës (Domeni dhe Përshkrimi) -->
        <div class="flex flex-col gap-2 pb-4">
          <!-- Theksi arkitektonik (Ngjyra Terracotta) -->
          <div class="w-16 h-2 bg-[#C85A3C] mb-4"></div> 
          
          <p class="text-2xl md:text-3xl font-bold text-[#111111] m-0">
            a77.al
          </p>
          <p class="text-lg md:text-xl font-medium text-[#A0A0A0] m-0">
            {{ message }}
          </p>
        </div>

      </div>
    </div>
  </div>
</template>