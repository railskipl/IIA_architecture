class Contact < ActiveRecord::Base
	validates_presence_of :name, :email, :phone, :message
end
