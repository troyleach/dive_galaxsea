class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :comments, :full_name
  has_many :vacations

  def full_name
    "#{object.first_name} #{object.last_name}"
  end

end
