require 'spec_helper'

describe Player do
  it "should require first and last name" do
    subject.should_not be_valid
    subject.first_name = "Mat"
    subject.last_name = "Schaffer"
    subject.should be_valid
  end

  it "should save it's position" do
    subject.position = "goalie"
    subject.save
    subject.position.should == "goalie"
  end
end
