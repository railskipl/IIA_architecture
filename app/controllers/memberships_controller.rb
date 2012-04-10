class MembershipsController < ApplicationController
	layout 'news'
	def index
		@memberships = Membership.find(:all)
	end
end
