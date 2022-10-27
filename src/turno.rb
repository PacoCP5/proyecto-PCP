# Clase Turno --> cada objeto de tipo Turno contendrá los datos de un Turno.

require_relative 'tipoTurno.rb'
require_relative 'tipoBox.rb'

class Turno

    #### GETTERS ####
    # attr_reader nos permite acceder al valor de las variables igual que un método get, sin crear un método para cada atributo
    attr_reader :tipo_turno, :box

    #### CONSTRUCTOR ####
        
    # Método inicializar clase Turno
    def initialize(id, tipo_turno, box)
        @tipo_turno = tipoTurno::tipo_turno         # Tipo de turno (enum: maniana, tarde, noche)
        @box = tipoBox::box                         # Box donde se realiza el turno
    end 

end