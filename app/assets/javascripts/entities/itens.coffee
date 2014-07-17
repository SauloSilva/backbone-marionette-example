@Example.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->
  class Entities.Item extends Backbone.Model

  class Entities.ItemCollection extends Backbone.Collection
    model: Entities.Item
    url: Routes.items_path()

  API =
    getItems: ->
      items = new Entities.ItemCollection()
      items.fetch()
      items

  App.reqres.setHandler 'items:entities', ->
    API.getItems()