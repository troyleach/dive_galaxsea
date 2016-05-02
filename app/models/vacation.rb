class Vacation < ActiveRecord::Base
  belongs_to :user

  def self.display_date(date)
    date = date.to_i / 1000
    date = Time.at(date).to_date
    display_date = date.strftime('%A, %b %d %Y')
    return display_date
  end

end
