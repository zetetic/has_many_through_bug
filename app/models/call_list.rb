class CallList < ActiveRecord::Base
  attr_accessible :name
  has_many :call_list_memberships, :autosave => true
  has_many :numbers, :through => :call_list_memberships, :autosave => true
  belongs_to :user
end

class PoliticalDistrict < CallList
end
