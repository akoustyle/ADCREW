class Campaign < ApplicationRecord
  belongs_to :user

  has_many_attached :images
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
