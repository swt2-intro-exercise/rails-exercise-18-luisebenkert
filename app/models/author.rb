include AuthorsHelper

class Author < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :homepage, presence: true

  def name()
    concat_strings(self.first_name, self.last_name)
  end

  def papers
    []
  end
end
