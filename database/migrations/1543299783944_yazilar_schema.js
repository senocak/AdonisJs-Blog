'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class YazilarSchema extends Schema {
  up () {
    this.create('yazilars', (table) => {
      table.increments()
      table.string("baslik")
      table.string("url")
      table.string("onicerik")
      table.text('icerik')
      table.integer("kategori_id")
      table.integer("onecikan").default(0)
      table.timestamps()
    })
  }
  down () {
    this.drop('yazilars')
  }
}
module.exports = YazilarSchema