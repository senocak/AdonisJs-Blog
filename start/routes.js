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
    Route.post('/admin/yazilar/ekle','AdminController.yazilar_ekle_post').as("admin.yazilar_ekle_post").validator("YaziEkle")
    Route.get('/admin/yazilar/:yazi_id/onecikan/:durum','AdminController.yazilar_onecikan').as("admin.yazilar_onecikan")
    Route.get('/admin/yazilar/:yazi_id/sil','AdminController.yazilar_sil').as("admin.yazilar_sil")
    Route.get('/admin/yazilar/:yazi_id/duzenle','AdminController.yazilar_duzenle').as("admin.yazilar_duzenle") 
    Route.post('/admin/yazilar/:yazi_id/duzenle','AdminController.yazilar_duzenle_post').as("admin.yazilar_duzenle_post").validator("YaziEkle")

    Route.get('/admin/kategoriler','AdminController.kategoriler').as("admin.kategoriler")
    Route.get('/admin/kategoriler/ekle','AdminController.kategoriler_ekle').as("admin.kategoriler_ekle")
    Route.post('/admin/kategoriler/ekle','AdminController.kategoriler_ekle_post').as("admin.kategoriler_ekle_post")
    Route.get('/admin/kategoriler/:kategori_id/sil','AdminController.kategoriler_sil').as("admin.kategoriler_sil")
    
    Route.get('/admin/yorumlar','AdminController.yorumlar').as("admin.yorumlar")
    Route.get('/admin/yorumlar/:yorum_id/onay/:durum','AdminController.yorumlar_onay').as("admin.yorumlar_onay")
    
    Route.get('/admin/cikis','AdminController.cikis').as("admin.cikis")

}).middleware(['auth'])