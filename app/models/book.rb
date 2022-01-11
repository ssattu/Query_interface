class Book < ApplicationRecord
  belongs_to :supplier
  belongs_to :author, touch:true
  has_many :reviews
  has_and_belongs_to_many :orders

  after_touch do 
    puts "An Book has been touched"
  end

  scope :in_print, -> {where(out_of_print:false)}
  scope :out_of_print, -> {where(out_of_print:true)}
    

end
