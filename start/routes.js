'use strict'

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.get('/','YazilarController.index').as("yazilar.anasayfa")
Route.get('/sayfa/:sayfa','YazilarController.index').as("yazilar.anasayfa")
Route.get('/yazilar','YazilarController.index').as("yazilar.anasayfa")
Route.get('/yazi/:yazi','YazilarController.show').as("yazilar.yazi")
Route.post('/yazi/:id','YazilarController.yorum_ekle').as("yazilar.yorum_ekle").validator("YorumEkle")
Route.get('/kategori/:kategori','YazilarController.kategori_kategori').as("kategori.kategori")
Route.get('/kategori/:kategori/sayfa/:sayfa','YazilarController.kategori_kategori').as("kategori.kategori")

Route.get('/admin/giris','AdminController.giris_get').as("admin.giris_get")
Route.get('/admin','AdminController.giris_get').as("admin.giris_get") 
Route.post('/admin/giris','AdminController.giris_post').as("admin.giris_post").validator("Giris") 
Route.group(() => {
    Route.get('/admin/yazilar','AdminController.yazilar').as("admin.yazilar")
    Route.get('/admin/yazilar/ekle','AdminController.yazilar_ekle').as("admin.yazilar_ekle")
}).middleware(['auth'])