module Lista1 where

ehTriangulo a b c =
  if a + b <= c
    then False
  else
      if b + c <= a
        then False
      else
          if a + c <= b
            then False
          else True

tipoTriangulo a b c =
  if a == b && a == c
    then "equilatero"
  else
      if a == b && a /= c || b == c && b /= a || a == c && a /= b
        then "isosceles"
      else "escaleno"

triangulo a b c =
  if a == b && a == c
    then "equilatero"
  else
      if a == b && a /= c || b == c && b /= a || a == c && a /= b
        then "isosceles"
      else
          if a > b + c || c > a + b || b > c + a
            then "nao eh um triangulo"
          else "escaleno"

somaPares 0 = 0
somaPares n =
  if n `mod` 2 == 0
    then n + somaPares (n -2)
  else (n - 1) + somaPares (n - 3)

somaPot2m m 0 = m
somaPot2m m n = 2 ^ n * m + somaPot2m m (n - 1)

primo n =
  if n == 2
    then True
  else
      if n `mod` 2 == 0
        then False
      else aux n (n - 1)

aux primo 0 = False
aux primo 1 = True
aux primo divi =
  if primo `mod` divi == 0
    then False
  else aux primo (divi - 1)

tux n m o =
  if m < n
    then o * (4 / m) + tux n (m + 2) (o * (-1))
  else 0

seriePI n = tux n 1 1
