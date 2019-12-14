require_relative './config/environment'

run ApplicationController
use UserController
use ComicBookController