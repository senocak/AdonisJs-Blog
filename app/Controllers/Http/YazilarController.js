'use strict'
const Yazilar = use("App/Models/Yazilar")
const Kategoriler = use("App/Models/Kategoriler")

/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */

class YazilarController {
  async index ({ params, response, view }) {

    const yazilar = await Yazilar.all()
    const kategoriler = await yazilar.kategori().fetch()
    return kategoriler


/*
    const sayfa_degisken=params.sayfa ? params.sayfa : 1
    const yazilar = await Yazilar.query().orderBy("onecikan","desc").paginate(sayfa_degisken ,9)  
    if(sayfa_degisken > yazilar.toJSON().lastPage){
      const yazilar = await Yazilar.query().orderBy("onecikan","desc").paginate(1 ,9)
      return view.render("anasayfa",{yazilar:yazilar.toJSON() })
    }else{
      const yazilar = await Yazilar.query().orderBy("onecikan","desc").paginate(sayfa_degisken ,9)
      return view.render("anasayfa",{yazilar:yazilar.toJSON() })
    }
*/



  }
  async create ({ request, response, view }) {
  }
  async store ({ request, response }) {
  }
  async show ({ params, request, response, view }){
    const yazi = await Yazilar.query().where("url",params.yazi).fetch()  
    return view.render("yazi",{yaziGet:yazi.toJSON()})
  }
  async edit ({ params, request, response, view }) {
  }
  async update ({ params, request, response }) {
  }
  async destroy ({ params, request, response }) {
  }
}
module.exports = YazilarController