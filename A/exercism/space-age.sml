datatype planet = Mercury | Venus | Earth | Mars
                | Jupiter | Saturn | Neptune | Uranus

fun age_on planet seconds =
  case planet of
    Mercury => Real.fromInt(seconds) / (31557600.0 * 0.2408467)
  | Venus => Real.fromInt(seconds) / (0.61519726 * 31557600.0)
  | Earth => Real.fromInt(seconds) / 31557600.0
  | Mars => Real.fromInt(seconds) / (1.8808158 * 31557600.0)
  | Jupiter => Real.fromInt(seconds) / (11.862615 * 31557600.0)
  | Saturn => Real.fromInt(seconds) / (29.447498 * 31557600.0)
  | Neptune => Real.fromInt(seconds) / (164.79132 * 31557600.0)
  | Uranus => Real.fromInt(seconds) / (84.016846 * 31557600.0)
