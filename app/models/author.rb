class Author < ApplicationRecord
  has_many :books, -> { order(year_published: :desc) }

  validates :first_name, :last_name, presence:true


  validate do |author|
    if last_name.blank?
      errors.add :last_name, message: "is not cool"
    end
  end
  
  before_validation :normalize_name, on: :create
  
  def normalize_name
    self.first_name = first_name.upcase
    self.last_name = last_name.upcase
  end  

  after_touch :touched
  def touched
    puts "Author/Books has been touched"
  end  

  after_initialize do |u|
    puts "You have initialize an object"
  end
  after_find do  |u|
    puts "you have find an object"
  end


end

