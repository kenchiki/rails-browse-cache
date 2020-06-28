const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')
const { resolve } = require('path')

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
environment.config.merge({
  resolve: {
    alias: {
      '@packs': resolve('app/javascript/packs'),
      '@style': resolve('app/javascript/stylesheets'),
      '@image': resolve('app/javascript/images'),
    }
  }
})

module.exports = environment
