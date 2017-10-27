# Tapes can easily be defined in a single class, but only (imo) at the cost of clarity

class SourceTape

    def initialize(source)
        @tape = source
        @ind = 0
    end

    def advance
        @ind += 1
    end

end

class DataTape

    def initialize
        @data = Array.new(30000,0)
        @pos = 15000
    end

    def shiftLeft
        @post -= 1
    end

    def shiftRight
        @post += 1
    end

end
