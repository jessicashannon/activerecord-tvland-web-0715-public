class Network < ActiveRecord::Base
  has_many :shows

  def characters
    @characters.map do |character|
  end
end
  def sorry
    "We're sorry about passing on John Mullaney's pilot"
  end
end
