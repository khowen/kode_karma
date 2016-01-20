class Organization < ActiveRecord::Base
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user
  #has_many :posts, as: :need, dependendent: :destroy
  has_many :contributors, through: :posts, source: :need
  has_many :posts, dependent: :destroy
end
