# class Song < ApplicationRecord
#   belongs_to :playlist
# end

class Song < ApplicationRecord
  # validates :name, presence; true
  belongs_to :playlist
  has_many :comments, dependent: :destroy
end
