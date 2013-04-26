class Team < ActiveRecord::Base
  belongs_to :Division
  has_many :microposts
  attr_accessible :name, :Division_id
end
