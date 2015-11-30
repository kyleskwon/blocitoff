class Item < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name

  default_scope { order('updated_at ASC') }
end
