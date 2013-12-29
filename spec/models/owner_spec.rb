require 'spec_helper'

describe Owner do

  let(:blanks){[nil,'']}

  it {should have_valid(:first_name).when("James")}
  it {should_not have_valid(:first_name).when(*blanks)}

  it {should have_valid(:last_name).when("Bond")}
  it {should_not have_valid(:last_name).when(*blanks)}

  it {should have_valid(:email).when("james.bond@mi6.gov.uk")}
  it {should_not have_valid(:email).when(*blanks)}

  it {should have_many(:dogs).through(:ownerships)}

end
