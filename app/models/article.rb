class Article < ActiveRecord::Base
	before_create :set_created_time
	before_update :set_created_time

	def set_created_time
		if self.created_time == nil
			self.created_time = DateTime.now
		end
	end
end
