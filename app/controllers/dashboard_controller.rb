class DashboardController < ApplicationController
  def index
  	@active_support = []
  	@expiring_support = []
  	@no_support = []

  	@items = Item.all

  	@items.each do |i|
  		if i.noSupport
  			@no_support << i
  		end
  		if i.expiringSupport
  			@expiring_support << i
  		end
  		if i.activeSupport
  			@active_support << i
  		end
  	end
  	
  end
end
