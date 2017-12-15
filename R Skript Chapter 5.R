# Kapitel 5: Datentransformierung

library(nycflights13)
library(tidyverse)

# Es gibt verschiedene Typen von Variablen, die alle eine eigene Abkürzung haben:
# Die gebräuchlichsten sind:
#
# "int" für ganze Zahlen
# "dbl" für reelle Zahlen
# "chr" für Vektoren oder Folgen (?)
# "dttm" für Datum + Uhrzeit
# "lgl" für Dammyvariablen
# "fctr" steht für Variablen mit festen möglichen Werten
# "date" für Datümer


# Der (filter()) Befehl:

# Der Filterbefehl selektiert aus einer Variable alle Beobachtungen die eine bestimmte Anforderung erfüllen sollen:

filter(flights, month == 1, day == 1)

# Gibt alle Flüge, die im 1. Monat am 1. Tag gestartet sind.
# Bechate: Wenn ich dieses Ergebnis gespeichter haben möchte muss ich <- benutzen.
# R speichert es nicht automatisch ab.
# Beides in einem Schritt wäre dann:

(Jan1 <- filter(flights, month == 1, day == 1))

# Zeichen die R versteht um die Beobachtungen zu selektieren:
# > , >= , == , <= , < und != (ungleich)
#
# Um mehrere Variblen zu verbinden kann man diese Befehle benutztne:
# " x & y" = Beide müssen gleichzeitig erfüllt sein
# " x | y " = x oder y müssen erfüllt sein
# " x & !y" = x muss erfüllt sein aber es darf nicht gleichzeitg y erfüllt sein.
#
# Bei NA muss man, wenn man diese von der Filterfunktion auch herausgegeben haben möchte explizit nach ihnen fragen:

filter(df, is.na(x))

# Genau so bei Dammyvariablen. R gibt immer nur die Varibalen aus auf die die Beobachtung zutrifft.


# Der arrange() Befehl:

# Dieser Befehl ordent unsere Daten nach der Größe der Variablen die wir angeben.

arrange(flights, year, month, day)

# Zeigt als ersten die Flüge, die am 1.1.2013 gestarten sind und geht dann das Jahr durch.
# Dieser Befelh selektiert aber keine Daten heraus. Der Datensatz wird also nicht verkleinert.
#
# Normalerweise ordent R die Daten aufsteigend. Wenn man möchte dass sie abnehmend geordnert sind muss man

arrange(flights, desc(arr_delay))

# eingeben. Nun wird der Flug mit der längsten Verspätung als erstes angezeigt.
# NA Beobachtungen sind immer am Ende aufgezählt.


# Der select() Befehl:

# Mit diesem Befehl lässt man sich nur bestimmte Variablen der Beobachtungen anzeigen:

select(flights, year:day)

# zeigt beispiels weise nur das Jahr, den Monat und den Tag an dem die Flüge gestartet sind.

select(flights, -(year:day))

# zeigt alle anderen Variablen der Beobachtungen nur nicht das Jahr, den Monat und den Tag.
#
# Hilfreiche Auswahlfunktionen mit select():

starts_with("abc")
ends_with("xyz")
contains("ljk")

# Für noch mehr ?select

# Eine Varibale umbennen:

rename(flights, tail_num = tailnum)


# Der mutate() Befehl:



