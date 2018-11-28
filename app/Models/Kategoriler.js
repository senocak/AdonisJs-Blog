'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Kategoriler extends Model {
    yazilar(){
        return this.hasMany('App/Models/Yazilar',"id","kategori_id")
    }
}

module.exports = Kategoriler
