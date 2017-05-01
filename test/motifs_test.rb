require 'test_helper'
require 'MeteoInfo'

module MeteoInfo
  describe Motifs do
    describe Motifs::DATE do
      it_ "matche une date correct" do
        "2017-10-01".must_match Motifs::DATE
      end

      it_ "ne matche pas une date trop courte" do
        "201-10-01".wont_match Motifs::DATE
      end

      it_ "ne matche pas une date trop longue" do
        "20170-10-01".wont_match Motifs::DATE
      end
    end

    describe Motifs::PRECIPITATION do
      it_ "matche une precipitation" do
        '100'.must_match Motifs::PRECIPITATION
      end

      it_ "ne matche pas une precipitation en lettre" do
        "cent".wont_match Motifs::PRECIPITATION
      end
    end

    describe Motifs::TEMPERATURE do
      it_ "matche un nombre simple" do
        "3".must_match Motifs::TEMPERATURE
      end

      it_ "matche un nombre plus complexe" do
        "9".must_match Motifs::TEMPERATURE
      end

      it_ "ne matche pas un identificateur" do
        "zero".wont_match Motifs::TEMPERATURE
      end

      it_ "matche zero" do
        "0".must_match Motifs::TEMPERATURE
      end

      it_ "matche un nombre negatif" do
        "-3".must_match Motifs::TEMPERATURE
      end
    end

  end
end
