class Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimum: 2, maximum: 105}
  validates :link, presence: true, format: { with: /(http|https):\/\/[a-zA-Z0-9\-\#\/\_]+[\.][a-zA-Z0-9\-\.\#\/\_]+/i }
  validates :user_id, presence: true
end
