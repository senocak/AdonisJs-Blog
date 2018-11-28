'use strict'


/** @type {import('@adonisjs/lucid/src/Factory')} */
const Factory = use('Factory')
const Kategoriler = use('App/Models/Kategoriler')

class KategoriSeeder {
  async run () {
    await Kategoriler.create({
      baslik:"Laravel",
      url:"laravel",
      resim:"laravel.png"
    })
    await Kategoriler.create({
      baslik:"CodeIgniter",
      url:"codeigniter",
      resim:"codeIgniter.png"
    })
    await Kategoriler.create({
      baslik:"AdonisJS",
      url:"adonisjs",
      resim:"adonisjs.png"
    })
    //await Factory.model('App/Models/Kategoriler').createMany(2)
  }
}

module.exports = KategoriSeeder