App = require 'app'
require 'controllers/PostController'

module 'PostController',
  setup: ->
    Ember.run App, App.advanceReadiness
  teardown: ->
    App.reset()

test '#edit', ->
  expect 1
  postController = App.PostController.create
    isEditing: no
  Ember.run ->
    postController.edit()
  ok postController.get('isEditing'), 'should change isEditing to yes'
    
test '#doneEditing', ->
  expect 1
  postController = App.PostController.create
    isEditing: yes
  Ember.run ->
    postController.doneEditing()
  ok !postController.get('isEditing'), 'should change isEditing to no'
