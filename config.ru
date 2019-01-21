require 'bundler'
Bundler.require

$LOAD_PATH.unshift(File.expand_path("app", __dir__))
require 'controllers/laugh_tracks_app'

run LaughTracksApp
