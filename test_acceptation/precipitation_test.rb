require 'test_helper'

describe MeteoInfo do
  let(:bd)  { 'BDcopie.txt' }
  let(:precipitation) {'MIPrecipitation.txt'}
  let(:temperature) {'MITemperature.txt'}

  describe "acceptation" do
    it_ "fait un appel a precipitation" do
      nouveau_contenu = avec_fichier precipitation, [], :conserver do
        execute_sans_sortie_ou_erreur do
          meteoInfo( 'precipitation 2017-05-10 2017-05-01' )
        end
      end

      nouveau_contenu.size.must_equal 1
      nouveau_contenu.first.must_equal "Il a plu pour 110 mm de pluie a montreal durant les dates mentionnees."
    end

    it_ "fait un appel a temperature" do
      nouveau_contenu = avec_fichier temperature, [], :conserver do
        execute_sans_sortie_ou_erreur do
          meteoInfo( '--ville=toronto temperature 2017-05-01' )
        end
      end

      nouveau_contenu.size.must_equal 1
      nouveau_contenu.first.must_equal "La temperature a toronto est de 1 degre celsius."
    end
  end
end
