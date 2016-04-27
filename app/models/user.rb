class User < ActiveRecord::Base
  has_many :vacations
  accepts_nested_attributes_for :vacations
  before_create -> { self.auth_token = SecureRandom.hex }
  before_create -> { self.password = SecureRandom.hex(4) }
end
