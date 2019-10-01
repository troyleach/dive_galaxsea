class User < ActiveRecord::Base
  has_many :vacations
  accepts_nested_attributes_for :vacations
  before_create -> { self.auth_token = SecureRandom.hex }
  before_create -> { self.password = SecureRandom.hex(4) }
  before_create -> { self.password_confirmation = password }
  # before_create :encrypt_password

  def authenticate(password)
    puts "LOGGING self #{inspect}"
    # need also pass over the token from the header, double whamy :-)
    self.password == password
    # TODO: need to fix this so it is bcrppted
    # BCrypt::Password.new(self.password) == password
  end
  # def password=(password)
  #   self.password = BCrypt::Password.create(password)
  # end

  # def is_password?(password)
  #   BCrypt::Password.new(self.password) == password
  # end
  # this runs automaticly when this model is called
  # def encrypt_password
  #   self.password = BCrypt::Password.create(password)
  #   self.password_confirmation = self.password
  # end
end
