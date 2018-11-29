'use strict'
const User = use('App/Models/User')
const Yazilar = use('App/Models/Yazilar')
const Kategoriler = use('App/Models/Kategoriler')
const Helpers = use('Helpers')

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */

class AdminController {
  async giris_get ({ response, auth, view }) {
    if(auth.user){
      return response.redirect("/admin/yazilar")
    }else{
      return view.render("admin.giris")
    }
  }
  async giris_post ({ request, session, auth, response }) {
    await auth.attempt(request.input("email"),request.input("sifre"))
    session.flash({successMessage:"Giriş Başarılı"}) 
    return response.redirect("yazilar")
  }
  async yazilar ({ request, view }) { 
    const yazilar = await Yazilar.query().with("kategori").orderBy("id","desc").orderBy("onecikan","desc").fetch()
    return view.render("admin.yazilar",{yazilar:yazilar.toJSON()})
  }
  async yazilar_ekle ({view }) {
    const kategoriler = await Kategoriler.all()
    return view.render("admin.yazilar_ekle",{kategoriler:kategoriler.toJSON()})
  }
  async yazilar_ekle_post ({ session, request, response }) {
    const baslik = request.input("baslik")
    const url = request.input("url")
    const onicerik = request.input("onicerik")
    const icerik = request.input("icerik")
    const kategori = request.input("kategori")
    
    const yazilar = await Yazilar.create({
      baslik:baslik,
      url:url,
      onicerik:onicerik,
      icerik:icerik,
      kategori_url:kategori
    })
    session.flash({successMessage:"Yazı Eklendi"})
    return response.route("admin.yazilar")
  }
  async yazilar_onecikan ({ params, session, response }) {
    const yazi_id = params.yazi_id
    const durum = params.durum
    const yazilar = await Yazilar.findOrFail(yazi_id)
    yazilar.onecikan=durum
    await yazilar.save()
    session.flash({successMessage:"Yazı Güncellendi"})
    return response.route("admin.yazilar")
  }
  async yazilar_sil ({ params, session, response }) {
    const yazi_id = params.yazi_id
    const yazilar = await Yazilar.findOrFail(yazi_id) 
    await yazilar.delete()
    session.flash({successMessage:"Yazı Silindi"})
    return response.route("admin.yazilar")
  }
  async yazilar_duzenle ({ params, view }){ 
    const yazilar = await Yazilar.query().with("kategori").where("id",params.yazi_id).fetch()      
    const kategoriler = await Kategoriler.all() 

    return view.render("admin.yazilar_duzenle",{yazilar:yazilar.toJSON(),kategoriler:kategoriler.toJSON()})
  } 
  async yazilar_duzenle_post ({ params, session,request,response }){ 
    const yazi_id = params.yazi_id
    const durum = params.durum
    const yazilar = await Yazilar.findOrFail(yazi_id)
    yazilar.onecikan=durum
    yazilar.baslik=request.input("baslik")
    yazilar.url=request.input("url")
    yazilar.onicerik=request.input("onicerik")
    yazilar.icerik=request.input("icerik")
    yazilar.kategori_url=request.input("kategori_url")
    await yazilar.save()
    session.flash({successMessage:"Yazı Güncellendi"})
    return response.route("admin.yazilar")
  }
  async kategoriler ({ params, view }){    
    const kategoriler = await Kategoriler.all() 
    return view.render("admin.kategoriler",{kategoriler:kategoriler.toJSON()})
  } 
  async kategoriler_ekle ({ params, view }){
    return view.render("admin.kategoriler_ekle")
  } 
  async kategoriler_ekle_post ({ request, response,session }){
     
    const file = request.file('resim')
    if(file.type=="image" ){
      file.move(Helpers.publicPath('resimler'))
      const resim_ismi=file.clientName
      const baslik = request.input("baslik")
      const url = request.input("url") 
    
      const kategoriler = await Kategoriler.create({
        baslik:baslik,
        url:url,
        resim:resim_ismi
      })
      session.flash({successMessage:"Kategori Eklendi"})
      return response.route("admin.kategoriler")
    }else{ 
      session.flash({successMessage:"Kategori Eklenmedi"})
      return response.route("admin.kategoriler")
    }
  } 
}

module.exports = AdminController
