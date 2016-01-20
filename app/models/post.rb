class Post < ActiveRecord::Base
  #belongs_to :organizations
  belongs_to :need, polymorphic: true
end
