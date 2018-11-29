'use strict'

class YaziEkle {
  get rules () {
    return {
      baslik:"required|min:3",
      onicerik:"required|min:3",
      icerik:"required|min:10"
    }
  }
  get messages () {
    return {
      "baslik.required":"Başlık Kısmını Boş Geçemezsiniz",
      "baslik.min":"Başlık Çok Kısa",
      "onicerik.required":"Ön İçerik Kısmını Boş Geçemezsiniz",
      "onicerik.min":"Ön İçerik Çok Kısa",
      "icerik.required":"İçerik Kısmını Boş Geçemezsiniz",
      "icerik.min":"İçerik Çok Kısa"
    }
  }
}

module.exports = YaziEkle
