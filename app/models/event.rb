class Event < ApplicationRecord
  belongs_to :org_user
  has_many :ir_user
  has_many :apply
end
