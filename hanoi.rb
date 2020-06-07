class Hanoi
    def initialize
        @board = [ [1,2,3], [], [] ]
    end

    def response
        [
            'Move piece from which stack to which stack? input format #,# ex.(1,2)',
            'Invalid input, either or both stacks do not exist, try again'
        ]
    end

    def get_move
        puts response[0]
        move = gets.chomp.split(',').map(&:to_i)        
        if !valid_input?(move)
            response[1]
            get_move
        end
        move
    end

    def valid_input?(move)
        if (move[0] < 0 || move[0] > 2) || (move[1] < 0 || move[1] > 2)
            return false
        else
            return true
        end
    end

end