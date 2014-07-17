@Example.module 'TestApp', (TestApp, App, Backbone, Marionette, $, _) ->
  class TestApp.Router extends Marionette.AppRouter
    appRoutes:
      ''  : 'list'
      'header' : 'header'

  API =
    list: ->
      new TestApp.List.Controller()

    header: ->
      new TestApp.Header.Controller()

  TestApp.on 'start', ->
    new TestApp.Router
      controller: API