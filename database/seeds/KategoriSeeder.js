'use strict'


/** @type {import('@adonisjs/lucid/src/Factory')} */
const Factory = use('Factory')

class KategoriSeeder {
  async run () {
    await Factory.model('App/Models/Kategoriler').createMany(3) 
  }
}

module.exports = KategoriSeeder