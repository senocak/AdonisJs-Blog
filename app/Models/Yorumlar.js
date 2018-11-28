'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Yorumlar extends Model {
    yazilar(){
        return this.hasMany('App/Models/Yazilar',"yazi_id","id")
    }
}

module.exports = Yorumlar
