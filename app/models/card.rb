class Card < ActiveRecord::Base
  belongs_to :customer
  has_many :tasks

end
