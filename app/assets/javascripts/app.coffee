@Example = do (Backbone, Marionette) ->
  App = new Marionette.Application

  App.on 'before:start', (options) ->
    App.environment = options.environment

  App.addRegions
    listRegion: 'article'
    headerRegion: 'section'

  App.addInitializer ->
    App.module('TestApp').start()

  App.on 'start', ->
    Backbone.history.start({ pushState: true })

  App