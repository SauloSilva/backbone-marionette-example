@Example.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->
  class Entities.Header extends Backbone.Model

  class Entities.HeaderCollection extends Backbone.Collection
    model: Entities.Header

  API =
    getHeaders: ->
      models =  [
          new Entities.Header({ name: "Users" }),
          new Entities.Header({ name: "Leads" }),
          new Entities.Header({ name: "Appointments" })
        ]

      header = new Entities.HeaderCollection()
      header.add models
      header

  App.reqres.setHandler "header:entities", ->
    API.getHeaders()