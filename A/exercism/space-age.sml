datatype planet = Mercury | Venus | Earth | Mars
                | Jupiter | Saturn | Neptune | Uranus

fun age_on planet seconds =
  case planet of
    Mercury => (0.2408467 * Real.fromInt(seconds)) / 31557600.0
  | Venus => (0.61519726 * Real.fromInt(seconds)) / 31557600.0
  | Earth => (1.0 * Real.fromInt(seconds)) / 31557600.0
  | Mars => (1.8808158 * Real.fromInt(seconds)) / 31557600.0
  | Jupiter => (11.862615 * Real.fromInt(seconds)) / 31557600.0
  | Saturn => (29.447498 * Real.fromInt(seconds)) / 31557600.0
  | Neptune => (164.79132 * Real.fromInt(seconds)) / 31557600.0
  | Uranus => (84.016846 * Real.fromInt(seconds)) / 31557600.0
