class Room < ApplicationRecord
  validates :title, :location, :description, presence: true
  validates :description, length: { minimum: 30 }

  def complete_name
    "#{title}, #{location}"
  end
end
