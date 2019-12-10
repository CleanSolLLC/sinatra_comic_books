require_relative './config/environment'

run ApplicationController
use ErrorHandling
use UserController