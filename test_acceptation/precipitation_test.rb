require 'test_helper'

describe MeteoInfo do
  let(:bd)  { 'BDcopie.txt' }
  let(:precipitation) {'MIPrecipitation.txt'}

  describe "precipitation" do
    it_ "fait un appel a precipitation" do
      nouveau_contenu = avec_fichier precipitation, [], :conserver do
        execute_sans_sortie_ou_erreur do
          meteoInfo( 'precipitation 2017-05-10 2017-05-01' )
        end
      end

      nouveau_contenu.size.must_equal 1
      nouveau_contenu.first.must_equal "Il a plu pour 110 mm de pluie a montreal durant les dates mentionnees."
      FileUtils.rm_f bd
    end
  end
end
