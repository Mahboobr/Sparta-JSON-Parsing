require 'spec_helper'

describe Customers do

  before(:each) do
    @people = Customers.new("./MOCK_DATA.json")
  end

  it "should be a array" do
    expect(@people.json_customers).to be_instance_of(Array)
  end

  it "all names should be strings" do
    @people.json_customers.each do |k|
      expect(k["first_name"]).to be_kind_of(String)
    end
  end

  it "should have more than 1 customer" do
    expect(@people.json_customers.length).to be > (1)
  end

  it "Damon should have an SLK" do
    expect(@people.json_customers[18]["car"]["model"]).to eql("SLK-Class")
  end

  it "Liam speaks Japanese" do
    expect(@people.json_customers[4]["language"][0]).to eql("Japanese")
  end



end
