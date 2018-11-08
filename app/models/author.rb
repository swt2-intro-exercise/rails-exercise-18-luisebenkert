class Author < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :homepage, presence: true
end
