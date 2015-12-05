class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 2, maximum: 105}
  validates :link, presence: true, length: { maximum: 1200 }#, format: URI::regexp(%w(http https))
end
