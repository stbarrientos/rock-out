require 'rails_helper'

RSpec.describe Song, type: :model do

  before {@song = Song.new}

  it "is invalid without an artist" do
    @song.title = "Wish You Were Here"
    expect(@song.valid?).to eq(false)
  end

  it "is invalid without a title" do
    @song.artist = "Pink Floyd"
    expect(@song.valid?).to eq(false)
  end

  it "is valid with a title and an artist" do
    @song.artist = "Pink Floyd"
    @song.title = "Wish You Were Here"
    expect(@song.valid?).to eq(true)
  end

end
