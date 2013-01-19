class User < ActiveRecord::Base
  attr_accessible :age, :email, :name

  validates :name, :text => {:allow_blank => true}, :presence => true
end
