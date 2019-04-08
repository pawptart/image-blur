require 'spec_helper'

RSpec.describe Image, type: :model do

  describe "blurring should work" do
    it "should blur a standard image" do

      input = [
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0],
        [0,1,0,0],
        [0,0,0,0],
        [0,0,0,0]
      ]

      expected = [
        [0,0,0,0],
        [0,0,0,0],
        [0,1,0,0],
        [1,1,1,0],
        [0,1,0,0],
        [0,0,0,0]
      ]

      image = Image.new(input)
      expect(image.blur.data).to eq expected
    end

    it "should blur 2 pixel transformation" do

      input = [
        [0,0,0,0],
        [0,0,1,0],
        [0,0,0,0],
        [0,1,0,0],
        [0,0,0,0],
        [0,0,0,0]
      ]

      expected = [
        [0,0,1,0],
        [0,1,1,1],
        [0,1,1,0],
        [1,1,1,0],
        [0,1,0,0],
        [0,0,0,0]
      ]

      image = Image.new(input)
      expect(image.blur.data).to eq expected
    end

    it "should correctly blur pixels at the edge" do

      input = [
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0],
        [1,0,0,0],
        [0,0,0,0]
      ]

      expected = [
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0],
        [1,0,0,0],
        [1,1,0,0],
        [1,0,0,0]
      ]

      image = Image.new(input)
      expect(image.blur.data).to eq expected
    end

  end  
end
