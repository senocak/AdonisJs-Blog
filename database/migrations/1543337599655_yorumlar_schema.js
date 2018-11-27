'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class YorumlarSchema extends Schema {
  up () {
    this.create('yorumlars', (table) => {
      table.increments()
      table.string("isim")
      table.string("email")
      table.text("yorum")
      table.boolean("onay").default(false)
      table.integer("yazi_id")
      table.timestamps()
    })
  }
  down () {
    this.drop('yorumlars')
  }
}

module.exports = YorumlarSchema
