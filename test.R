## Beispiellösung der Aufgabe von Woche 2

"Lesen Sie sich in [G] Kapitel 9.2 mit Unterkapitel 9.2.1 durch, wie die Grafiken der Abbildung [G] 9.1 entstanden sind.

Erstellen Sie dann eine ähnliche Grafik mit
   (a) Die Kurve von $f(x)=exp(x)$ für die Werte von $x=-1,...,3$
   (b) Die Tangente im Punkt 2 (Gerade mit y-Achsenabschnitt -exp(2) und Steigung exp(2))
   (c) Zeichnen Sie für j=-1,0,1,2,3 jeweils Punkte exp(j)+e_j ein, wobei e_j, j=1,...,5 unabhängig und identisch N(0,4)-verteilte
       Pseudo-Zufallsvariablen sind.
   (d) Achsenbeschriftungen für beide Achsen
   (e) Finden Sie heraus, welche weiteren Grafikparameter es gibt. 
       Lesen Sie dazu z.B. [L] Tabelle 8.3. Wenden Sie mindestens drei der verschiedenen Parameter auf ihre Grafik an 
       und erklären Sie, was passiert. 
"


# (a)

plot(NULL, xlim = c(-1,3), ylim = c(-5,30), xlab = "", ylab = "")
curve(exp(x), from = -1, to=3 ,add=TRUE)

# (b)
abline(a=-exp(2),b=exp(2)) 

#(c)
x <- -1:3
y<-exp(x)+rnorm(5,sd=2)
points(x, y)

# (d)
title(xlab="x-Achse",ylab="y-Achse")

# (e) exemplarisch
title(main="Plot") # Title

curve(exp(x), from = -1, to=3 ,add=TRUE,lwd=3,col='red')  # Farbe und Linienbreite

abline(a=-exp(2),b=exp(2),lty=3,col='green')  # Farbe und Linienart 

points(x, y,cex=3,pch=2,col='blue') # Farbe, Größe und Art der Punkte
########################################################################




