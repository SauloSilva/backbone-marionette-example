@Example.module 'TestApp.List', (List, App, Backbone, Marionette, $, _) ->
  class List.Controller extends Marionette.Controller
    initialize: ->
      @items = App.request 'items:entities'
      @layout = @getLayoutView()

      @listenTo @layout, 'show', =>
        App.execute 'when:fetched', @items, =>
          @itemsRegion()

      App.listRegion.show @layout

    getLayoutView: ->
      new List.Layout()

    itemsRegion: ->
      itemsView = @itemsView()
      @layout.itemsRegion.show itemsView

      @listenTo itemsView, 'childview:item:clicked', (child, args) =>
        console.log child.model.get('name')
        window.open child.model.get('permalink'), '_blank'

    itemsView: ->
      new List.Items
        collection: @items