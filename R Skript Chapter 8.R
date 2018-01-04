# Kapitel 10: Tibbles

# Tibbles sind data.frame(). Sie sind aber etwas älter und leichter zu verstehen. 
# Eine andere Art von Tabellen?

library(tidyverse)

# Dies ist bereit ein Tribble. Falls man andere Daten hat die noch kein tribble sind kann man dies über

as_tibble(iris)

erreichen.

# Ein tribble selbst kreieren - Beispiel:

tibble(
  x = 1:5, 
  y = 1, 
  z = x ^ 2 + y
)

# Es gibt ein paar unterschiede zwischen dta.frames und tribbles:
# Tribbles können nie den Typ der Inputs (von strings zu factors), den Namen der Varibalen ändern oder neue rohe Daten kreieren.

# Printing:
# Da tribbels nur wenig von dem Datensatz zeigen (, um so einen besseren Überblich zu haben) ist es manchmal hilfreich die Anzahl der Zeilen der Tabelle zu definieren.

print(n = 10, width = Inf)
options(dplyr.print_min = Inf)

# Das 2. druckt immer alle Zeilen aus.

#Subsetting:
# Kommt dann zum Einsatz, wenn mannicht mit dem kompletten Datensatz sondern einzelnen Varibablen arbeiten möchte:

# Die Werkzeuge: $, [[ ]]
# $ selektiert nach dem Namen
# [[ "2" ]] selektiert nach der Position (also der Zeile)

# Möchte man es in einer Pipe (Schleife) benutzten muss man den Pkatzhalter . einfügen

df %>% .$x






