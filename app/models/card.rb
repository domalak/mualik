class Card < ActiveRecord::Base
	validates :first_name, :last_name, :middle_name, :photo_url, presence: true

	before_save :make_uppercase

	def make_uppercase
		self.first_name = self.first_name.mb_chars.upcase.to_s
		self.last_name = self.last_name.mb_chars.upcase.to_s
		self.middle_name = self.middle_name.mb_chars.upcase.to_s
	end
end
