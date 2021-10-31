class Campaign < ApplicationRecord
  belongs_to :user

  has_one_attached :image
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
