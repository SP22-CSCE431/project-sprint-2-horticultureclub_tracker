class Imagefile < ApplicationRecord
    has_one_attached :image
    validates :member_id, presence: true
end
