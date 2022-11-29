# Clase Horario --> el Horario contiene una lista de turnoTrabajador que forma el horario completo
class Horario

    #### CONSTRUCTOR ####

    # Método inicializar clase Horario
    def initialize(turnos_asignados, semana)
        @turnos_asignados = turnos_asignados    # Lista de todos los Trabajadores asociados a cada Turno
        @semana = semana                        # Semana a la que corresponde el horario
    end 

end