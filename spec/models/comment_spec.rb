require 'rails_helper'

describe Comment, type: :model do
  describe "validations" do
    it {should belong_to(:article)}
  end

  describe "relationships" do
    it {should belong_to :article}
  end
end
