'use strict'

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.get('/','YazilarController.index').as("yazilar.anasayfa")
Route.get('/sayfa/:sayfa','YazilarController.index').as("yazilar.anasayfa")
Route.get('/yazilar','YazilarController.index').as("yazilar.anasayfa")
Route.get('/yazi/:yazi','YazilarController.show').as("yazilar.yazi")