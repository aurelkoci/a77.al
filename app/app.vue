<template>
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</template>
<script setup>
useSchemaOrg([
  defineOrganization({
    name: 'A77 Architecture',
    logo: '/og-image.jpg',
    url: 'https://a77.al/',
    
    // Zgjidhja për: Missing 'description'
    description: 'Studio arkitekture multidisiplinare që ofron shërbime projektimi, interieri, peizazhi dhe inxhinierie në Shqipëri.',
    
    // Zgjidhja për: Missing 'email' dhe 'telephone'
    email: 'info@a77.al',
    telephone: '+355694004244', // Vendosni numrin tuaj real të studios
    
    // Zgjidhja për: Missing 'sameAs' (Lidhjet me rrjetet sociale të studios)
    sameAs: [
      'https://www.facebook.com/a77architecture',
      'https://www.instagram.com/a77architecture',
      'https://www.linkedin.com/company/a77architecture'
    ],
    
    // Zgjidhja për: PostalAddress Schema (Duhen më shumë detaje)
    address: {
      '@type': 'PostalAddress',
      streetAddress: 'Rruga [Emri i Rrugës], Ndërtesa [Nr]', // Adresa fizike e saktë
      addressLocality: 'Tiranë',
      postalCode: '1001',
      addressCountry: 'AL'
    },
    
    // Zgjidhja për: Missing 'contactPoint'
    contactPoint: {
      '@type': 'ContactPoint',
      telephone: '+35569XXXXXXX', // I njëjti numër si më lart
      contactType: 'customer service',
      email: 'info@a77.al',
      availableLanguage: ['Albanian', 'English']
    }
  }),
  
  defineWebPage(),
  defineWebSite({
    name: 'A77 Architecture'
  })
])
useHead({
  link: [
    {
      rel: 'preconnect',
      href: 'https://fonts.googleapis.com'
    },
    {
      rel: 'preconnect',
      href: 'https://fonts.gstatic.com',
      crossorigin: ''
    },
    {
      rel: 'stylesheet',
      href: 'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700;900&family=Roboto:wght@400;500;700&display=swap'
    }
  ]
})
</script>