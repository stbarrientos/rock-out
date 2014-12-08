require 'rails_helper'

RSpec.describe Comment, type: :model do

  before {@comment = Comment.new}

  it "is invalid without a body" do
    expect(@comment.valid?).to eq(false)
  end

  it "is valid with a body" do
    @comment.body = "TDD FTW"
    expect(@comment.valid?).to eq(true)
  end

end
