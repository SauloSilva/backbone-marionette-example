class ItemsController < ApplicationController
  respond_to :json

  def index
    respond_with [
      {
        name: 'backbone',
        thumb: 'http://backbonejs.org/docs/images/backbone.png',
        permalink: 'http://backbonejs.org/'
      },
      {
        name: 'Marionette',
        thumb: 'http://marionettejs.com/images/marionette_logo-4eeb07e5.png',
        permalink: 'http://marionettejs.com/'
      },
      {
        name: 'Ruby on Rails',
        thumb: 'http://rubyonrails.org/images/rails.png',
        permalink: 'http://rubyonrails.org/'
      }
    ]
  end
end