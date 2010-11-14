class CallListMembership < ActiveRecord::Base
  belongs_to :call_list
  belongs_to :number
end
