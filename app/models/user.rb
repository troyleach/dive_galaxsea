class User < ActiveRecord::Base
  has_many :vacations
  accepts_nested_attributes_for :vacations
end
