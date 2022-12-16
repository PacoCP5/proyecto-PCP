# Clase Turno --> cada objeto de tipo Turno contendrá los datos de un Turno.

class Turno

    #### GETTERS ####
    # attr_reader nos permite acceder al valor de las variables igual que un método get, sin crear un método para cada atributo
    attr_reader :tipo_turno, :box

    #### CONSTRUCTOR ####
        
    # Método inicializar clase Turno
    def initialize(turno, box)
        @tipo_turno = turno         # Tipo de turno (enum: maniana, tarde, noche)
        @box = box                         # Box donde se realiza el turno
    end 

    def to_s()
        return "#{@tipo_turno}:#{@box}"
    end
end