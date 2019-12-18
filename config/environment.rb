require 'bundler/setup'
Bundler.require

require_relative '../app/models/user'
require_relative '../app/controllers/application_controller'
require_relative '../app/controllers/comic_book_controller'
require_relative '../app/helpers/helpers'
require_all 'app'