# Clase Trabajador --> cada objeto de tipo Trabajador contendrá los datos de un Trabajador.
class Trabajador

    #### GETTERS ####
    # attr_reader nos permite acceder al valor de las variables igual que un método get, sin crear un método para cada atributo
    attr_reader :ID_trabajador, :boxes

    #### CONSTRUCTOR ####

    # Método inicializar clase Trabajador
    # @param [Integer] id --> identificador del trabajador
    # @param [Hash] boxes --> hash cuya clave es un box y el valor es la cantidad de veces que ha estado el trabajador ahí
    def initialize(id,boxes)
        @id_trabajador = id
        @boxes = boxes
    end 

    def to_s()
        return "#{@id_trabajador}"
    end     
end