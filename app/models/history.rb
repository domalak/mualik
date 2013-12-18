class History < ActiveRecord::Base
	validates :card, :user, presence: true

	belongs_to :card
	belongs_to :user
end
