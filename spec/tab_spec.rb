require 'rails_helper'

RSpec.describe Tab, type: :model do

  before {@tab = Tab.new}

  it "is invalid wihtout a source_url" do
    @tab.rank = 2
    expect(@tab.valid?).to eq(false)
  end

  it "is invalid without a rank" do
    @tab.source_url = "www.google.com"
    expect(@tab.valid?).to eq(false)
  end

  it "is invalid with an invalid rank (must be <= 5)" do
    @tab.source_url = "www.google.com"
    @tab.rank = 6
    expect(@tab.valid?).to eq(false)
  end

  it "is invalid with an invalid rank (must be > 0)" do
    @tab.source_url = "www.google.com"
    @tab.rank = 0
    expect(@tab.valid?).to eq(false)
  end

  it "is valid with a source url and valid rank" do
    @tab.source_url = "www.google.com"
    @tab.rank = 3
    expect(@tab.valid?).to eq(true)
  end

end
