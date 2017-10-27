
class Tape

    def initialize(stream)
        @tape = Array.new(30000,0)
        @ind = 15000
    end

    def shiftLeft
        @ind -= 1
    end

    def shiftRight
        @ind += 1
    end

end
