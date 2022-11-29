# Comprobar que la sintaxis de las entidades es correcta

all: check installdeps tests

check:
	@echo 'Comprobando sintaxis...'
	ruby -c ./src/*.rb

# Ejecutar test automáticos

tests:
	@echo 'Ejecutando tests...'
# El true es para que no pare el make si falla un test
	ruby ./test/testHorario.rb; true 

# Instalar todas las dependencias necesarias usando Bundler
installdeps:
	@echo 'Instalando dependencias necesarias...'
	bundle install 

