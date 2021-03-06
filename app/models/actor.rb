class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    list_roles = (self.shows.all.map do |show|
      self.characters.all.map do |character|
        "#{character.name} - #{show.name}"
      end
    end).flatten.first
  end

end
