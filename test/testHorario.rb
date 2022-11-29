require 'minitest/autorun'
require_relative '../src/horario.rb'

class TestHorario < Minitest::Test 
    
    # Este método se ejecuta antes de cada ejecución
    def setup
       @number = 1 
    end

    def test_sanity
        assert_equal 1, @number
    end
end
