class Author < ApplicationRecord
  has_many :books, -> { order(year_published: :desc) }
 
  validate do |author|
    errors.add :base, :last_name, message: "is not cool"
  end
end

