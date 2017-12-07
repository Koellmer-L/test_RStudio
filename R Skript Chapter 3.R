# Datenvisualisierung Beispiele und Vorgehensweise

# Zuerst installieren wir Beispieldaten:

install.packages("tidyverse")
library(tidyverse)

# Wir veranschaulichen  2 Eigenschaften der Daten in einem ggplot. bei mapping = aes(x = , y = ) definieren wir welche Variblen auf 
# der X- und der Y-Achse stehen sollen.
#
# Allgemeiner Code:

  ggplot(data = <DATA>) +
  <Geom_function>(mapping = aes(<MAPPINGS>))

# An unseren Beispieldaten:
  
  ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

#Aufagen aus dem Skript:
  
ggplot(data = mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))


# Wie kann ich Plots schöner/übersichtlicher darstellen?:
# Man kann die zwei in dem ggplot untersuchten Variablen nochmals unterteilen,
# in dem man unterschieldiche Gruppen graphisch hervorhebt.
# Dafür gibt es unterschidliche Möglichkeiten, welche man hier nimmt ist reine Geschmackssache.

# Beispiel 1: Durch unterschiedliche Farben der Punkte:

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# Beispiel 2: Durch unterschiedliche Größen der Punkte:

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

# Beispiel 3: Durch untershiedliche Formen der Punkte:

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# Beispiel 4: Durch untershiedliche Dichte der Punkte:

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Eine weitere Möglichkeit Daten graphisch hervorzuheben ist mehrere Plots mit den gleichen X- und Y-Achsen zu erstellen und sie dabei nach einer 3. (und 4.) Variable zu unterteilen:

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

# Um sich nicht immer jede Beobachtung einzeln anschauen zu müssen kann man sie auch durch eine Mittellinie, die die gleiche Realtion zeigt verbinden.
# Das ist dann kein geom_point mehr sondern ein geom_smooth
# Die zweite Zeile des ggplots definiet also die Darstellungsweise der Daten.

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

# Bei der smooth Darstellung können auch weitere Variablen dargestellt werden:

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

# Auch diese könnten graphisch noch untershieden werden (hier in Farbe und ohne eine Legende):

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv),
              show.legend = FALSE
              )

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

# Wenn man nun beide Koordinatensysteme übereinander legen möchte fügt man sie einfach mit einem + zusammen:

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

# Oder weniger Schreibarbeit und noch die Punkte graphisch unterschieden und die graue Fläche um die Linie verschwinden lassen:

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(se = FALSE)

# Weitere Möglichkeiten:

ggplot(DATA = , MAPPING = ) +
  geom_boxplot()

ggplot( DATA = , MAPPING = ) +
  geom_histogram()

ggplot( DATA = , MAPPING = ) +
  geom_bar()

# und noch viele mehr.

