'use strict'


/** @type {import('@adonisjs/lucid/src/Factory')} */
const Factory = use('Factory')
//const Yazilar = use('App/Models/Yazilar')

class YazilarSeeder {
  async run () {
    await Factory.model('App/Models/Yazilar').createMany(15) 
    //await Yazilar.create({baslik:"Finish 3"})
  }
}

module.exports = YazilarSeeder