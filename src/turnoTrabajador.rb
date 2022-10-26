# Clase turnoTrabajador --> cada objeto contiene la relación entre cada Turno y los Trabajadores
class turnoTrabajador

    #### GETTERS ####
    # attr_reader nos permite acceder al valor de las variables igual que un método get, sin crear un método para cada atributo
    attr_reader :lista_trabajadores, :fecha_turno

    #### CONSTRUCTOR ####

    # Método inicializar clase turnoTrabajador
    def initialize(turno, lista_trabajadores)
        @turno = turno                                      # Turno a asignar
        @lista_trabajadores = lista_trabajadores            # Lista de los trabajadores que forman el Turno
        @fecha_turno = fecha_turno                          # Fecha del Turno
    end 

end