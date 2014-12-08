require 'rails_helper'

RSpec.describe User, type: :model do

  before {@user = User.new(email: "sam@gmail.com", password: "password1")}

  it "is invalid without an email" do
    @user.email = nil
    expect(@user.valid?).to eq(false)
  end

  it "is invalid without a password" do
    @user.password = nil
    expect(@user.valid?).to eq(false)
  end

  it "is valid with an email and password" do
    expect(@user.valid?).to eq(true)
  end

end
