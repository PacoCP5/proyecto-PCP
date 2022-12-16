require 'minitest/autorun'
require_relative '../src/horario.rb'

class TestHorario < Minitest::Test 
    
    # Este método se ejecuta antes de cada ejecución
    def setup
        @trabajadores = []
        
        @trabajadores << Trabajador.new(1,TipoTurno[0] => 0, TipoTurno[1] => 1, TipoTurno[2] => 1)
        @trabajadores << Trabajador.new(2,TipoTurno[0] => 1, TipoTurno[1] => 2, TipoTurno[2] => 0)
        @trabajadores << Trabajador.new(3,TipoTurno[0] => 2, TipoTurno[1] => 1, TipoTurno[2] => 2)
        @trabajadores << Trabajador.new(4,TipoTurno[0] => 1, TipoTurno[1] => 0, TipoTurno[2] => 0)
        @trabajadores << Trabajador.new(5,TipoTurno[0] => 0, TipoTurno[1] => 1, TipoTurno[2] => 3)
        @trabajadores << Trabajador.new(6,TipoTurno[0] => 1, TipoTurno[1] => 1, TipoTurno[2] => 4)
        @trabajadores << Trabajador.new(7,TipoTurno[0] => 2, TipoTurno[1] => 0, TipoTurno[2] => 2)
        @trabajadores << Trabajador.new(8,TipoTurno[0] => 1, TipoTurno[1] => 3, TipoTurno[2] => 0)
        @trabajadores << Trabajador.new(9,TipoTurno[0] => 0, TipoTurno[1] => 1, TipoTurno[2] => 1)
        @trabajadores << Trabajador.new(10,TipoTurno[0] => 3, TipoTurno[1] => 0, TipoTurno[2] => 0)
        @trabajadores << Trabajador.new(11,TipoTurno[0] => 1, TipoTurno[1] => 3, TipoTurno[2] => 2)
        @trabajadores << Trabajador.new(12,TipoTurno[0] => 1, TipoTurno[1] => 0, TipoTurno[2] => 0)
        
        @num_boxes = 3
        @fecha=Date.new(2022,12,12)

        @horario = Horario.new(@trabajadores,@fecha,@num_boxes)
        @asignacion = @horario.turnos_asignados

    end

    def test_asignacion_vacia
        # Se ha realizado una asignación
        refute_empty @asignacion
    end

    def test_trabajadores
        # Se han asignado todos los trabajadores al menos una vez
        tr_asig = []
        @asignacion.each do |turnos_dia|
            refute_empty turnos_dia
            turnos_dia.each do |turno|
                tr_asig << turno.trabajador
            end
        end
        tr_asig.uniq!
        assert_equal @trabajadores.length, tr_asig.length 
    end

    def test_turnos_seguidos
        # No se han asignados dos turnos seguidos
        t_prev = nil
        @asignacion.each do |turnos_dia|
            turnos_dia.each do |turno|   
                if(t_prev)
                    # También comprobamos que cada turno tiene solo un trabajador
                    refute_instance_of Array, turno.trabajador
                    refute_equal t_prev.trabajador, turno.trabajador
                end
                t_prev = turno 
            end
        end
    end
end
