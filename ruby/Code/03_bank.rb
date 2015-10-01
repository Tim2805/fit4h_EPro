
		# Einrichten einer Kundenklasse.

		# Eine neue Klasse customer soll eingerichtet werden.
class Customer
		# Beim Anlegen eines Customer-Objektes muss als notwendiger Parameter eine Kontonummer (Instanzvariable bank_account) eingegeben werden.
	def initialize(banknumber,plastname="")
		@bank_account = banknumber
		@lastname = plastname
	end
		# Optional kann auch der Nachname des Kunden (lastname) eingegeben werden.
		# Erstellen Sie SET und GET - Methoden für die Eigenschaften (Instanzvariablen) firstname, street, city. Z.B heisst die Set-Methode fuer street: set_street(pstreet)
	def set_firstname(pfirstname="")
		@firstname=pfirstname
	end
	def set_street(pstreet="")
		@street=pstreet
	end
	def set_city(pcity="")
		@city=pcity
	end

		# Eine Methode print_address soll beim Aufruf "puts obj.print_address' eine Ausgabe wie folgt erzeugen:
		# Konto:................9999
		# Name:.................Theo Lodgz
		# Strasse:..............Hermelinweg 7
		# Ort:..................22159 Hamburg
	def print_adress
		" Konto:#{@bank_account.rjust(20, '.')}\n Name:#{@firstname.rjust(20, '.')} #{@lastname}\n Strasse:#{@street.rjust(20, '.')}\n Ort:#{@city.rjust(20, '.')}\n"
	end

end

kunde1 = Customer.new("9999","Lodgz")
kunde1.set_firstname("Theo")
kunde1.set_street("Hermelinweg 7")
kunde1.set_city("22159 Hamburg")
puts kunde1.print_adress

# Legen Sie das Objekt obj an, rufen Sie die entsprechenden Get-Methoden für die Dateneingabe auf, erzeugen Sie die Kontrollausgabe.