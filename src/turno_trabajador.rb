# Clase turnoTrabajador --> cada objeto contiene la relación entre cada Turno y los Trabajadores
class TurnoTrabajador

    #### GETTERS ####
    # attr_reader nos permite acceder al valor de las variables igual que un método get, sin crear un método para cada atributo
    attr_reader :trabajador, :fecha_turno

    #### CONSTRUCTOR ####

    # Método inicializar clase turnoTrabajador
    def initialize(turno, trabajador, fecha_turno)
        @turno = turno                                      # Turno a asignar
        @trabajador = trabajador           # Trabajador asignado al turno
        @fecha_turno = fecha_turno                          # Fecha del Turno
    end 

    def to_s()
        return "Fecha: #{@fecha_turno} -> Turno: #{@turno} <-> Trabajador: #{@trabajador}"
    end

end