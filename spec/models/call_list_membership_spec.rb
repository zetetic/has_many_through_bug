require 'spec_helper'

describe CallListMembership do
  it "should report a correct count for the collection when using << " do
    CallList.count.should == 0
    CallListMembership.count.should == 0
    Number.count.should == 0

    p1 = PoliticalDistrict.create(:name=>"Sample")
    p1.call_list_memberships.length.should == 0
    p1.call_list_memberships.count.should == 0
    n1 = Number.create(:phone_number=>"123")
    p1.numbers << n1
    p1.call_list_memberships.length.should == 1 # FAILS with 'got: 2'
  end
end
