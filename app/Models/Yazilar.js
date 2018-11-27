'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Yazilar extends Model {
    kategori(){
        return this.hasMany('App/Models/Kategoriler',"kategori_id","id")
    }
}
module.exports = Yazilar