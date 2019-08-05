module Deletion

	def soft_delete
		if self.class.name == 'List'
			self.list_items.each do |li|
				li.soft_delete
			end
		end
		self.active = false
		self.save
	end

	def restore
		if self.class.name == 'List'
			self.list_items.each do |li|
				li.restore
			end
		end
		self.active = true
		self.save
	end

end