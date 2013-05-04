App = require 'app'
require 'helpers/markdown'

module 'Markdown Helper',
  setup: ->
    Ember.run App, App.advanceReadiness
  teardown: ->
    App.reset()

# TODO: figure out how to get the result of markdown call
# test '#markdown', ->
#   expect 1
#   markdownText = '# Big Headline'
#   html = '<h1>Big Headline</h1>'
#   equal Ember.Handlebars.helpers.markdown(markdownText),
#     html,
#     'should create equivalent HTML from markdown text'
