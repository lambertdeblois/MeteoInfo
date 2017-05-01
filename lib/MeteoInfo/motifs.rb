module MeteoInfo
  #
  # Module qui regroupe des constantes definissant les divers motifs
  # pour identifier les champs de meteo.
  #
  module Motifs
    # Motifs mots representant date, precipitation, temperature.
    #
    # Rappel: les deux facons suivantes permettent de definir un objet Rexexp.
    #   %r{...}
    #   /.../

    DATE =  %r{\b[0-9]{4}-[0-9]{2}-[0-9]{2}\b}
    PRECIPITATION = %r{[0-9]+}
    TEMPERATURE = %r{-?[0-9]+}
    UNITE = %r{[FC]}

  end
end
