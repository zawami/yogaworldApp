class Instructor::Base < ApplicationController
  layout 'instructor'
  include Instructor::SessionsHelper
end