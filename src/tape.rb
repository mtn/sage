# Tapes can easily be defined in a single class, but only (imo) at the cost of clarity

class SourceTape

    def initialize(source)
        @tape = source
        @pos = 0
        @brackets = {}
        @lstack = []
    end

    def advance
        @pos += 1
    end

    def parse
        for c in @tape
            if c.is_a? LoopStart
                @lstack.push(@pos)
            elsif c.is_a? LoopEnd
                l = @lstack.pop()
                @brackets[l] = @pos
                @brackets[@pos] = l
            end
            @pos += 1
        end
        p @brackets
    end

end

class DataTape

    def initialize
        @data = Array.new(30000,0)
        @pivot = 15000
    end

    def shiftLeft
        @pivot -= 1
    end

    def shiftRight
        @pivot += 1
    end

    def increment
        @data[@pivot] += 1
    end

    def decrement
        @data[@pivot] -= 1
    end

    def prnt
        puts @data[@pivot].chr
    end

    def rd
        @data[@pivot] = STDIN.getc.bytes[0]
    end

end
