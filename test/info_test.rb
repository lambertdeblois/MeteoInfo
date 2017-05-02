require 'test_helper'
require 'MeteoInfo'

module MeteoInfo
  describe Info do
    let(:erreurs_possibles) { [ArgumentError, RuntimeError, StandardError] }

    let(:montreal) { Info.new( "montreal", "2017-01-01", "100", "20", "C" ) }
    let(:toronto) { Info.new( "toronto", "2016-12-31", "50", "-10", "C" ) }
    let(:vancouver) { Info.new( "vancouver", "2000-10-01", "0", "32", "F" ) }

    describe ".new" do
      it_ "cree une info avec les attributs appropries" do
        montreal.ville.must_equal "montreal"
        montreal.date.must_equal "2017-01-01"
        montreal.precipitation.must_equal "100"
        montreal.temperature.must_equal "20"
        montreal.unite.must_equal "C"
      end

      it_ "cree une info avec une temperature negative" do
        toronto.temperature.must_equal "-10"
      end

      it_ "cree une info avec unite farenheit" do
        vancouver.unite.must_equal "F"
      end
    end

    describe "#to_s" do
      it_ "genere par defaut une forme simple" do
        montreal.to_s.must_equal "Ville: montreal - Date: 2017-01-01 - Temperature: 20C - Precipitation: 100mm"
      end
    end
  end
end
