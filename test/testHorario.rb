require 'minitest/autorun'
require_relative '../src/horario.rb'

class TestHorario < Minitest::Test 
    
    # Este método se ejecuta antes de cada ejecución
    def setup
        
    end

    def test_sanity
        assert_equal @number, 1
    end
end
