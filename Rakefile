desc 'Comprobar que la sintaxis de las entidades es correcta'
task :check do
	puts 'Comprobando sintaxis...'
	exec 'ruby -c ./src/*.rb'
end

desc 'Ejecutar test automáticos'
task :test do
	puts 'Ejecutando tests...'
end

desc 'Instalar todas las dependencias necesarias usando Bundler'
task :installdeps do
	puts 'Instalando dependencias necesarias...'
	exec 'bundle install'
end
