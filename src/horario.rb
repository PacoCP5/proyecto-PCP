# Clase Horario --> el Horario contiene una lista de turnoTrabajador que forma el horario completo
class Horario

    #### CONSTRUCTOR ####

    # Método inicializar clase Horario
    def initialize(lista_trabajadores_turno, semana)
        @semana = semana                                        # Semana a la que corresponde el horario
        @lista_trabajadores_turno = lista_trabajadores_turno    # Lista de todos los Trabajadores asociados a cada Turno
    end 

end