require 'date'

# Clase turnoTrabajador --> cada objeto contiene la relación entre cada Turno y los Trabajadores
class TurnoTrabajador

    #### GETTERS ####
    # attr_reader nos permite acceder al valor de las variables igual que un método get, sin crear un método para cada atributo
    attr_reader :trabajadores, :fecha_turno

    #### CONSTRUCTOR ####

    # Método inicializar clase turnoTrabajador
    def initialize(turno, trabajadores)
        @turno = turno                                      # Turno a asignar
        @trabajadores = trabajadores            # Lista de los trabajadores que forman el Turno
        @fecha_turno = fecha_turno                          # Fecha del Turno
    end 

end