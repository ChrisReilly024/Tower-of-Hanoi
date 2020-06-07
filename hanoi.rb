class Hanoi
    def initialize
        @board = [ [1,2,3], [], [] ]
    end

    def response
        [
            'Move piece from which stack to which stack? input format #,# ex.(1,2)',
            'Invalid input, either or both stacks do not exist, try again',
            'Stack error, cannot move a piece on top of a smaller piece, try again',
            'Stack error, move stack is empty, try again',
            'Winner!!!'
        ]
    end

    def instructions
        puts %Q(
            TOWERS OF HANOI!!!
            ---------------
            How to play:
                The game board consist of three stacks
                The starting stack contains 3 pieces ordered ascendingly
                The goal of the game is to move the pieces so that all the
                pieces are placed in the third stack in ascending order.

             Rules:
                You cannot move a piece off the board
                You cannot play a piece on top of another 
                You cannot move a piece onto a stack if that 
                stack's top piece value is lesser than moving piece
            )
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

    def move_piece(move)
        @board[move[1]].unshift(@board[move[0]].shift)
        if !valid_move?(move)
            get_move
            return false
        else
            return true
        end
    end

    def valid_move?(move)
        return true if @board[move[1]].empty?
        if @board[move[0]].empty?
            puts response[3]
            return false
        elsif @board[move[0]].first > @board[move[1]].first
            puts response[2]
            return false
        else
            return true
        end
    end

    def win?
        @board[2] == [1,2,3]
    end

    def play

    end
end