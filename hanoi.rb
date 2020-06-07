class Hanoi
    def initialize
        @board = [ [1,2,3], [], [] ]
    end

    def response
        [
            'Move piece from which stack to which stack? input format #,# ex.(1,2)',
            'Invalid input, try again'
        ]
    end

    
end