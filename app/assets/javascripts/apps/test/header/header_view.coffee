@Example.module 'TestApp.Header', (Header, App, Backbone, Marionette, $, _) ->

  class Header.Layout extends Marionette.LayoutView
    template: 'test/header/templates/header_layout'
    regions:
      itemsRegion: '#header'

  class Header.Item extends Marionette.ItemView
    template: 'test/header/templates/item'

  class Header.Items extends Marionette.CollectionView
    childView: Header.Item
