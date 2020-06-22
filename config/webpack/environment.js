const { environment } = require('@rails/webpacker')
const { resolve } = require('path')

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
