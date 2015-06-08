class Pin < ActiveRecord::Base
  belongs_to :user
  validates :photo_url, presence: true
  validates :link, presence: true
  validates :user_id, presence: true
end
