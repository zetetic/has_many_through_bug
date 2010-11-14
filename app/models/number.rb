class Number < ActiveRecord::Base
  attr_accessible :phone_number
  has_many :call_list_memberships
  has_many :call_lists, :through => :call_list_memberships
end
