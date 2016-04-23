class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :comments, :full_name
  has_many :vacations

  def full_name
    "#{object.first_name.capitalize} #{object.last_name.capitalize}"
  end

end
