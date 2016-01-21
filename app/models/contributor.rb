class Contributor < ActiveRecord::Base
  has_one :user, as: :meta
  accepts_nested_attributes_for :user
  #has_many :organizations, through: :posts
  #, source: :need
  #has_many :posts
end
