# Comprobar que la sintaxis de las entidades es correcta

check:
	@echo 'Comprobando sintaxis...'
	ruby -c ./src/*.rb

# Ejecutar test automáticos
tests:
	@echo 'Ejecutando tests...'
	ruby ./test/testHorario.rb

# Instalar todas las dependencias necesarias usando Bundler
installdeps:
	@echo 'Instalando dependencias necesarias...'
	bundle install 

