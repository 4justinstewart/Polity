require 'spec_helper'

describe Smusher::SmushIt do
  describe :optimized_image_data_for do
    it "loads the reduced image" do
      original = File.join(ROOT,'images','add.png')
      reduced = File.open(File.join(ROOT,'reduced','add.png'), 'rb').read
      received = Smusher::SmushIt.optimized_image_data_for(original)
      received.should == reduced
    end
  end
end