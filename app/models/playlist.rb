# class Playlist < ApplicationRecord
# end

class Playlist < ApplicationRecord
  # validates :name, presence: true 
  has_many :songs, dependent: :destroy
end
