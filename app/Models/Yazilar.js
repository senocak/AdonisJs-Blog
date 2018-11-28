'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Yazilar extends Model {
    static formatDates (field, value) {
        if (field === 'dob') {
          return value.format('YYYY-MM-DD')
        }
        return super.formatDates(field, value)
    }
    kategori(){
        return this.hasMany('App/Models/Kategoriler',"kategori_url","url")
    }
    yorum(){
        return this.hasMany('App/Models/Yorumlar',"id","yazi_id")
    }
}
module.exports = Yazilar