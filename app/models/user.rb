class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :assets, -> { where(asset_status: true) }

  has_many :jobs
  validates :username, presence: true

  validate :has_weapon_if_is_asset

  has_attachment :picture

  def has_weapon_if_is_asset
    if asset_status and weapons.blank?
      errors.add(:weapons, "You must have a weapon if you are an asset")
    end
  end

  def asset?
    asset_status
  end

  def customer?
    not asset_status
  end


  def self.weapons
    ['Balles de pingpong', 'banane', 'cure-dent', 'implants mammaires']
  end
end
