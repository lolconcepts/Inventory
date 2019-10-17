class Item < ApplicationRecord
  belongs_to :vendor
  belongs_to :location
  belongs_to :status

  def noSupport
  	@current = Time.now()
  	#if End of Service is past or not added to item
  	if self.eos <= @current || self.eos == nil
  		return true
  	else
  		return false
  	end
  
  end

  def expiringSupport
  	@current_month = Time.now().month
  	#If there is a eos set and month is the same as current
  	if self.eos && self.eos.month == @current_month
  		return true
  	else
  		return false
  	end
  end

  def activeSupport
  	if !self.noSupport
  		return true
  	else
  		return false
  	end
  end

  def summary
  	@summary = "#{self.vendor.name} #{self.model} (#{self.serial_number}) - #{self.eos}"
  	return @summary
  end

end
