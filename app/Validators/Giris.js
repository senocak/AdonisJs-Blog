'use strict'

class Giris {
  get rules () {
    return { 
      email:"required|email",
      sifre:"required|min:5"
    }
  }
  get messages () {
    return {
      "email.required":"Email Kısmını Boş Geçemezsiniz",
      "email.email":"Email Formatında Olmak Zorundadır",
      "sifre.required":"Şifre Kısmını Boş Geçemezsiniz",
      "sifre.min":"Şifre Çok Kısa"
    }
  }
}

module.exports = Giris
