module MeteoInfo


  class Info
    include Comparable

    attr_reader :ville, :date, :temperature, :precipitation, :unite


    def initialize( ville, date, precipitation, temperature, unite )
      DBC.require( !ville.strip.empty?, "Ville vide: '#{ville}'" )
      date ||= Time.now.strftime("%Y-%m-%d")
      DBC.require( /^#{Motifs::DATE}$/ =~ date )
      DBC.require( /^#{Motifs::PRECIPITATION}$/ =~ precipitation,
                   "Precipitation invalide: #{precipitation}" )
      DBC.require( /^#{Motifs::TEMPERATURE}$/ =~ temperature,
                   "Temperature invalide: #{temperature}" )
      DBC.require( /^#{Motifs::UNITE}$/ =~ unite,
                   "Unite invalide: #{unite}")

      @ville = ville
      @date = date
      @precipitation = precipitation
      @temperature = temperature
      @unite = unite
    end


    def to_s()
      format("Ville: %s - Date: %s - Temperature: %s%s - Precipitation: %smm",
                      ville,    date,       temperature, unite,   precipitation)
    end
  end
end
