'use strict'
 

/** @type {import('@adonisjs/lucid/src/Factory')} */
const Factory = use('Factory')
const Yorumlar = use('App/Models/Yorumlar') 

class YorumlarSeeder {
  async run () {
    await Yorumlar.create({
      isim:"Lorem Ipsum1",
      email:"lorem@ipsum1.com",
      yorum:"Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1",
      yazi_id:"1",
      onay:true
    })
    await Yorumlar.create({
      isim:"Lorem Ipsum2",
      email:"lorem@ipsum2.com",
      yorum:"Lorem Ipsum2 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1",
      yazi_id:"1",
      onay:true
    })
    await Yorumlar.create({
      isim:"Lorem Ipsum3",
      email:"lorem@ipsum3.com",
      yorum:"Lorem Ipsum3 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1 Lorem Ipsum1",
      yazi_id:"2",
      onay:true
    })
  }
}

module.exports = YorumlarSeeder
