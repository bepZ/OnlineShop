class Basket < ActiveRecord::Base
  has_many :basket_contents
  belongs_to :user
end
