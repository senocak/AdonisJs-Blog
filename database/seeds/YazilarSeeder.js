'use strict'

/** @type {import('@adonisjs/lucid/src/Factory')} */
const Factory = use('Factory')
const Yazilar = use('App/Models/Yazilar') 

class YazilarSeeder {
  async run () {
    await Yazilar.create({
      baslik:"Lorem Ipsum Nedir?1",
      url:"lorem_ipsum_nedir1",
      onicerik:"Lorem Ipsum Nedir?1",
     kategori_id:"1"
    })
    await Yazilar.create({
      baslik:"Lorem Ipsum Nedir?2",
      url:"lorem_ipsum_nedir2",
      onicerik:"Lorem Ipsum Nedir?2",
     kategori_id:1
    })
    await Yazilar.create({
      baslik:"Lorem Ipsum Nedir?3",
      url:"lorem_ipsum_nedir3",
      onicerik:"Lorem Ipsum Nedir?3",
     kategori_id:2
    })
    await Yazilar.create({
      baslik:"Lorem Ipsum Nedir?4",
      url:"lorem_ipsum_nedir4",
      onicerik:"Lorem Ipsum Nedir?4",
     kategori_id:2
    })
    await Yazilar.create({
      baslik:"Lorem Ipsum Nedir?5",
      url:"lorem_ipsum_nedir5",
      onicerik:"Lorem Ipsum Nedir?5",
     kategori_id:3
    })
    await Yazilar.create({
      baslik:"Lorem Ipsum Nedir?6",
      url:"lorem_ipsum_nedir6",
      onicerik:"Lorem Ipsum Nedir?6",
     kategori_id:3
    })
    await Factory.model('App/Models/Yazilar').createMany(10) 
    //await Yazilar.create({baslik:"Finish 3"})
  }
}

module.exports = YazilarSeeder