@Example.module 'TestApp.List', (List, App, Backbone, Marionette, $, _) ->

  class List.Layout extends Marionette.LayoutView
    template: 'test/list/templates/list_layout'
    regions:
      itemsRegion: '.items'

  class List.Item extends Marionette.ItemView
    template: 'test/list/templates/item'

    triggers:
      'click a' : 'item:clicked'

  class List.Items extends Marionette.CollectionView
    childView: List.Item
