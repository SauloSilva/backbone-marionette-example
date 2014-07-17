@Example.module 'TestApp.Header', (Header, App, Backbone, Marionette, $, _) ->
  class Header.Controller extends Marionette.Controller
    initialize: ->
      @links = App.reqres.request "header:entities"

      @layout = @getLayoutView()
      App.headerRegion.show @layout
      @getHeaderView()

    getHeaderView: ->
      @layout.itemsRegion.show @headersView()

    getLayoutView: ->
      new Header.Layout()

    headersView: ->
      new Header.Items
        collection: @links