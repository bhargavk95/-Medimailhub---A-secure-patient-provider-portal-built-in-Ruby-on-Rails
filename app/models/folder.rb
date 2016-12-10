class Folder < ApplicationRecord
	belongs_to :user
	acts_as_tree
	has_many :assets, dependent: :destroy
	has_many :shared_folders, dependent: :destroy
	#a method to check if a folder has been shared or not 
 def shared? 
#     !self.shared_assets.empty? 
 end
 
end
