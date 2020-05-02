class Customer::Base < ApplicationController
  layout 'customer'
  include Customer::SessionsHelper
end