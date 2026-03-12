# Definition einer Methode namens 'greet' mit einem Parameter 'name'
def greet(name)
    puts "Hello, #{name}!"
end 

def wave(name)
    puts "Goodbye, #{name}!"
end 

greet("Alice")  # Aufruf der Methode mit Argument
wave("Celina") # Aufruf der Methode mit Argument

# Definition einer Methode mit mehreren Parametern
def summe(a,b)
    return a + b
end

puts summe(5, 10)  # Ausgabe: 15

#Definition einer Methode mit einem optionalen Parameter
def vorstellung(name, alter = 25)
    puts "Mein Name ist #{name} und ich bin #{alter} Jahre alt."
end

vorstellung("Alice")  # Aufruf der Methode mit Argument
vorstellung("Bob", 30)  # Aufruf der Methode mit beiden Argumenten
vorstellung("Pat")
puts "##################################"

# Definition einer Methode mit einem Block
def mit_block
    puts "Vor dem Block"    # Ausgabe vor dem Block
    yield  # Aufruf des Blocks
    puts "Nach dem Block"
    puts "##################################"
end

mit_block do
    puts "Dies ist der Block, der übergeben wurde."  # Ausgabe innerhalb des Blocks
end     

def mit_logging
    puts "Starte die Aktion"
    yield
    puts "Aktion abgeschlossen"
    puts "##################################"
end

mit_logging do
    puts "Führe eine wichtige Berechnung durch."
end
def mit_datei(dateiname)
    puts "Öffne die Datei #{dateiname}"
    yield  # Hier wird der Block ausgeführt, der mit der Datei arbeitet
    puts "Schließe die Datei #{dateiname}"
end

mit_datei("beispiel.txt") do
    # Code zum Arbeiten mit der Datei
    puts "Ich arbeite mit der Datei."
end