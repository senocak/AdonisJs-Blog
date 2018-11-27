'use strict'
const Factory = use('Factory')

/** @type {import('@adonisjs/lucid/src/Factory')} */
// const Factory = use('Factory')

// Factory.blueprint('App/Models/User', (faker) => {
//   return {
//     username: faker.username()
//   }
// })

Factory.blueprint('App/Models/Yazilar', (faker) => {
    return {
        baslik:faker.sentence({words:3}),
        url:faker.sentence({words:1}),
        kategori_id:1,
        onecikan:0,
        onicerik:faker.sentence({words:35}),
        icerik:faker.paragraph()
   }
})
Factory.blueprint('App/Models/Kategoriler', (faker) => {
    return {
        baslik:faker.sentence({words:2}),
        url:faker.sentence({words:1}),
        resim:"no-image.png"
   }
})