class Comic < ActiveRecord::Base
  validates :artist, presence: true
  validates :author, presence: true
  validates :cover_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :issue_number, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :publisher, presence: true
  validates :title, presence: true

end
