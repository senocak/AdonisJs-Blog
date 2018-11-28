'use strict'

class YorumEkle {
  get rules () {
    return {
      isim:"required|min:3",
      email:"required|email",
      yorum:"required|min:10"
    }
  }
  get messages () {
    return {
      "isim.required":"İsim Kısmını Boş Geçemezsiniz",
      "isim.min":"İsim Çok Kısa",
      "email.required":"Email Kısmını Boş Geçemezsiniz",
      "email.email":"Email Formatında Olmak Zorundadır",
      "yorum.required":"Yorum Kısmını Boş Geçemezsiniz",
      "yorum.min":"Yorum Çok Kısa"
    }
  }
}

module.exports = YorumEkle
