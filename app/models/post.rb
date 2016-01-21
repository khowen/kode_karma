class Post < ActiveRecord::Base
  belongs_to :organization, foreign_key: :organization_id
  #has_one :organization
  #belongs_to :need, polymorphic: true
end
