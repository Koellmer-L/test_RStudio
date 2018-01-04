# Kapitel 7: Erkundung der Datenanalyse (EDA)

# 1. Fragen über die Daten stellen.
# 2. Antworten durch Grafiken, Trasfrmierung und Modellierung suchen
# 3. Erkenntnisse benutzen um neue Fragen zu stellen.

# 2 Fragen mit denen man immer anfangen kann:
# 1. Welche Variationen (Abweichungen) treten in meinen Variablen auf?
# 2. Welche Covariationen treten zwischen meinen Variablen auf?

library(tidyverse)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

# Es gibt kontinuierliche Varibalen, wie zeitliche Varibalen und es gibt kategorische Varibalen. Letztere sind nach Kategorien auf geteilt. Z.B. (sehr) gut, mittel, schlecht.

ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.5)

# Dieses Histogramm zeigt die Häufigkeit von Diamanten in 0,5 Karatabstand.

smaller <- diamonds %>% 
  filter(carat < 3)

ggplot(data = smaller, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.1)

# So werden nur unter 3 Karat Diamnten in 0,1 Abständen angezeigt.

ggplot(data = smaller, mapping = aes(x = carat, colour = cut)) +
  geom_freqpoly(binwidth = 0.1)

# Die geom_freqpoly-Funktion lässt das Histogramm nicht in Säulen sondern in einer zackigen, durchlaufenden Linie erscheinen.

# Hat man die ersten Histogramme geht es nun mit weiteren Fragen weiter:
# Was sind die normalen Werte? Warum?
# Welche Werte sind selten? Warum? War das zu erwarten?
# Gibt es Unregelmäßigkeiten? Sind diese zu erklären?


# Ungewöhnliche Werte = Outliers

# Diese sind oftmals in Histogrammen schwer zu sehen. Eine Lösung ist die coord_cartesian Funktion

ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50))

# y ist hier der komplette Datensatz 'Diamanten'
# Sind ungewöhnliche Daten dabei sollte man die Analysen mit und ohne diese Ausreißer durchführen.
# Haben sie einen Einfluss auf die Ergebnisse sollte man herausfinden woher diese ungewöhnlichen (teilweise unmöglichen) Werte kommen. Z.B. Messfehler? Eingabefehler?
# Haben sie keinen Einfluss auf die Ergebnisse kann man sie als fehlende Varibalen mit NA beziechnen.
# Man filtert Sie vorher heraus:

unusual <- diamonds %>% 
  filter(y < 3 | y > 20) %>% 
  select(price, x, y, z) %>%
  arrange(y)

# Ungewöhnliche Variablen in fehlende Variablen ersetzten:

diamonds2 <- diamonds %>% 
  mutate(y = ifelse(y < 3 | y > 20, NA, y))

# ifelse() hat drei Bestandteile: bis zum 1. Komma: Gibt den Test an. Also ob y <3 und >20 liegt.
# NA ist die Definition dafür, wenn diese Bedigung zutrifft.
# y ist die Konsequenz, wenn diese Bedingung nicht zutrifft.

# Möchte man sich jetzt den Grafen zeigen lassen kommt eine warnfunktion weil nicht mehr alle Beobachtungen enhalten sind:

ggplot(data = diamonds2, mapping = aes(x = x, y = y)) + 
  geom_point()
#> Warning: Removed 9 rows containing missing values (geom_point).

# Diese Warnung kann man ausschalten:

ggplot(data = diamonds2, mapping = aes(x = x, y = y)) + 
  geom_point(na.rm = TRUE)

nycflights13::flights %>% 
  mutate(
    cancelled = is.na(dep_time),
    sched_hour = sched_dep_time %/% 100,
    sched_min = sched_dep_time %% 100,
    sched_dep_time = sched_hour + sched_min / 60
  ) %>% 
  ggplot(mapping = aes(sched_dep_time)) + 
  geom_freqpoly(mapping = aes(colour = cancelled), binwidth = 1/4)

# Hier wurde es genau andersrum gemacht: Wenn bei der Abflugszeit NA stande haben wir diese Varibale neu definiert in cancelled.
# Dies wird durch die Funktion is.na() gemacht.

# Wiederholung:

# ggplot(data = Datenset, mapping = aes ( x = X-Achse definieren, y = Y-Achse definiren)) +
#  z.B. geom_boxplot +
#  z.B. coord_flip (dreht die x und y Achse um)

# Hier sollte man ganz viel ausprobieren. x und y-Achse immer neu definieren und überlegen was zeigt und sagt einem diese Grafik.












