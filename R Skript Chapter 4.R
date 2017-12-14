> # Kapitel 4: Wofkflow: basiscs
  > # Coding basics
  > 
  >  1 / 200 * 30
[1] 0.15
> (59 + 73 +2) / 3
[1] 44.66667
>  sin(pi / 2)
[1] 1
> x <- 3 * 4
> x
[1] 12
> 
  > 
  > # Mit dem <- (Pfeil) definieren wir etwas für R. In diesem Fall haben wir x als 12 definiert
  > # Man kann aber auch Objekten Namen geben:
  > # object_name <- value
  > # Notizen zum Namen:
  > # Er muss mit einem Buchstaben anfangen und darf nur aus Buchstaben, Zahlen, _ , und . besehen.
  > 
  > this_is_a_long_name <- 2.5
  > 
    > r_rocks <- 2 ^ 3
    > r_rock
    Fehler: Objekt 'r_rock' nicht gefunden
    > 
      > # IMMER SEHR genau sein!
      > 
      > seq(1, 10)
    [1]  1  2  3  4  5  6  7  8  9 10
    > 
      > x <- "hello world"
    > # x <- "hello
      > 
      > # In der Console erscheint ein x. 
      > # Dieses sagt mir, dass R auf mehr Input wartet. Das Gleiche passiert, wenn man eine ) nicht wieder zu macht.
      > 
      > # Wenn ich meine definierte Variable nicht 2x eingeben möchte kann ich einfach die komplette Definition in ( ) setzen.
      > 
      > (y <- seq(1, 10, length.out= 5))
    [1]  1.00  3.25  5.50  7.75 10.00
    > 
      > library(tidyverse)
    > 
      > ggplot(data = mpg) + 
      +   geom_point(mapping = aes(x = displ, y = hwy))
    > 
      > filter(mpg, cyl == 8)
    # A tibble: 70 x 11
    manufacturer              model displ  year
    <chr>              <chr> <dbl> <int>
      1         audi         a6 quattro   4.2  2008
    2    chevrolet c1500 suburban 2wd   5.3  2008
    3    chevrolet c1500 suburban 2wd   5.3  2008
    4    chevrolet c1500 suburban 2wd   5.3  2008
    5    chevrolet c1500 suburban 2wd   5.7  1999
    6    chevrolet c1500 suburban 2wd   6.0  2008
    7    chevrolet           corvette   5.7  1999
    8    chevrolet           corvette   5.7  1999
    9    chevrolet           corvette   6.2  2008
    10    chevrolet           corvette   6.2  2008
    # ... with 60 more rows, and 7 more variables:
    #   cyl <int>, trans <chr>, drv <chr>, cty <int>,
    #   hwy <int>, fl <chr>, class <chr>
    > filter(diamonds, carat > 3)
    # A tibble: 32 x 10
    carat     cut color clarity depth table price
    <dbl>   <ord> <ord>   <ord> <dbl> <dbl> <int>
      1  3.01 Premium     I      I1  62.7    58  8040
    2  3.11    Fair     J      I1  65.9    57  9823
    3  3.01 Premium     F      I1  62.2    56  9925
    4  3.05 Premium     E      I1  60.9    58 10453
    5  3.02    Fair     I      I1  65.2    56 10577
    6  3.01    Fair     H      I1  56.1    62 10761
    7  3.65    Fair     H      I1  67.1    53 11668
    8  3.24 Premium     H      I1  62.1    58 12300
    9  3.22   Ideal     I      I1  62.6    55 12545
    10  3.50   Ideal     H      I1  62.8    57 12587
    # ... with 22 more rows, and 3 more variables:
    #   x <dbl>, y <dbl>, z <dbl>