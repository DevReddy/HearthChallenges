class Challenge < ActiveRecord::Base
	validates :author, presence: true
	validates :rel_class, presence: true
	validates :text, presence: true, uniqueness: true
end
