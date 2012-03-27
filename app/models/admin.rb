class Admin < ActiveRecord::Base
  devise :database_authenticatable, :trackable, :timeoutable, :lockable  
  attr_accessible :email, :password, :password_confirmation,:username
  has_many :albums, :dependent => :destroy
end
