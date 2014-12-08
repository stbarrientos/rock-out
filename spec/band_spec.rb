require 'rails_helper'

RSpec.describe Band, type: :model do

  before{@band = Band.new}

  it "is invalid without a name" do
    @band.motto = "Does this pass?"
    expect(@band.valid?).to eq(false)
  end

  it "is invalid without a motto" do
    @band.name = "Rspec Stars"
    expect(@band.valid?).to eq(false)
  end

  it "it is valid with a name and motto" do
    @band.name = "Rspec Stars"
    @band.motto = "Does this pass?"
    expect(@band.valid?).to eq(true)
  end

  it "is valid without a picture_url" do
    @band.name = "Rspec Stars"
    @band.motto = "Does this pass?"
    expect(@band.valid?).to eq(true)
  end 

end
