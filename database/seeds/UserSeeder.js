'use strict'

/** @type {import('@adonisjs/lucid/src/Factory')} */
const Factory = use('Factory') 
const User = use('App/Models/User') 

class UserSeeder {
  async run () {
    await User.create({
      username:"anil@bilgimedya.com.tr",
      email:"anil@bilgimedya.com.tr",
      password:"$2a$10$5ddYhIcr.cSlCQPD0Fz5rOM3yYsIz9LSSb4lO/.ujWKGifQ31.yAi"
    })
  }
}

module.exports = UserSeeder
