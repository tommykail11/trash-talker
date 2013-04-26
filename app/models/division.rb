class Division < ActiveRecord::Base
  belongs_to :League
  attr_accessible :name, :League_id
end
