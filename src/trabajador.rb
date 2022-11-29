# Clase Trabajador --> cada objeto de tipo Trabajador contendrá los datos de un Trabajador.
class Trabajador

    #### GETTERS ####
    # attr_reader nos permite acceder al valor de las variables igual que un método get, sin crear un método para cada atributo
    attr_reader :nombre, :ID_trabajador

    #### CONSTRUCTOR ####

    # Método inicializar clase Trabajador
    def initialize(id, nombre)
        @id_trabajador = id             # Identificador del Trabajador    
        @nombre = nombre                # Nombre completo del trabajador
    end 

end