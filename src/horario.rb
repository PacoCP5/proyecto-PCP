require_relative 'turno.rb'
require_relative 'trabajador.rb'
require_relative 'turno_trabajador.rb'

require 'date'

TipoTurno = %w{:M :T :N}
TipoBox = %w{:A :B :C :D :E}

# Clase Horario --> el Horario contiene una lista de turnoTrabajador que forma el horario completo

class Horario

    #### CONSTRUCTOR ####
    attr_reader :turnos_asignados
    # Método inicializar clase Horario que incluye la lógica de negocio
    # @param [Array] trabajadores --> lista de trabajadores
    # @param [Date] primer_dia_semana --> primer día de la semana a generar el horario, debe ser un lunes
    # @param [Integer] cant_box --> cantidad de box que se tienen en el centro
    def initialize(trabajadores,primer_dia_semana,cant_box)

        # Lista de boxes disponibles para la semana
        boxes =  TipoBox[0..cant_box-1]

        # Crear lista de turnos en un día
        @turnos_dia = []
        boxes.each do |box|
            TipoTurno.each do |turno|
                @turnos_dia << Turno.new(box, turno)
            end
        end

        # Crear lista de turnos en una semana

        turno_anterior = nil
        @turnos_asignados = []
        turno_dia = []
        7.times do |i| # Para cada día
            turno_dia.clear
            
            trabajadores_clone = trabajadores.clone # copia de los trabajadores

            @turnos_dia.each do |turno| # Para cada turno del día
                # Ordenar los trabajadores por el número de veces que han estado en el box
                ordenados=trabajadores_clone.sort_by{|t| t.boxes[turno.box]}
                
                # Nos quedamos con el primero
                trabajador = ordenados[0]
                trabajadores_clone.delete(trabajador)

                # Realizamos la asignación
                turno_dia << TurnoTrabajador.new(turno,trabajador,primer_dia_semana+i)

                # Incrementamos la cantidad de veces que el trabajador ha estado en ese box
                trabajador.boxes[turno.box] += 1
            end
            @turnos_asignados << turno_dia.clone
        end
    end
    
    def to_s()
        out = ""
        i=1
        @turnos_asignados.each do |turnos_dia|
            out << "Día #{i}:\n"
            turnos_dia.each do |turno|
                out += "#{turno}\n"
            end
            i+=1
        end
        return out
    end
end