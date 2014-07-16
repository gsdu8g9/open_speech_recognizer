require 'rails_helper'
require 'pry'
RSpec.describe Utterance, :type => :model do
  context "Wav post processing" do
    let (:utterance) {Utterance.new}
    it "should post process utterances" do
      
      utterance.wav = File.new("spec/examples/si.wav")
      utterance.save!

      expect(File.exists? utterance.wav.path).to be(true)
      expect(File.exists? utterance.wav.mfcc.path).to be(true)
      expect(File.exists? utterance.wav.no_silences.path).to be(true)
    end

    it "should not allow other kind of files" do
    	utterance.wav = File.new("spec/examples/invalid.mp3")
    	expect {utterance.save!}.to raise_error
  	end
  end
end
