class Organizer::Base < ApplicationController
  layout 'organizer'
  include Organizer::SessionsHelper
end