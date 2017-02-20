class Job < ApplicationRecord
  belongs_to :user
  belongs_to :asset, class_name: 'User'
  validates :target_name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :deadline, presence: true
end
