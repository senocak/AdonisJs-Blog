'use strict'
const User = use('App/Models/User')
const Yazilar = use('App/Models/Yazilar')
const Kategoriler = use('App/Models/Kategoriler')

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
    const yazilar = await Yazilar.query().with("kategori").orderBy("onecikan","desc").fetch()
    return view.render("admin.yazilar",{yazilar:yazilar.toJSON()})
  }
  async yazilar_ekle ({view }) {
    const kategoriler = await Kategoriler.all()
    return view.render("admin.yazilar_ekle",{kategoriler:kategoriler.toJSON()})
  }
  async edit ({ params, request, response, view }) {
  }
  async update ({ params, request, response }) {
  }
  async destroy ({ params, request, response }) {
  }
}

module.exports = AdminController
