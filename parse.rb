
class Increment; end
class Decrement; end

class ShiftRight; end
class ShiftLeft; end

class Read; end
class Print; end

class LoopStart; end
class LoopEnd; end

class Ignored; end

def parseChar(c)
    case c
    when '+' then
        Increment.new
    when '-' then
        Decrement.new
    when '>' then
        ShiftRight.new
    when '<' then
        ShiftLeft.new
    when ',' then
        Read.new
    when '.' then
        Print.new
    when '[' then
        LoopStart.new
    when ']' then
        LoopEnd.new
    else
        Ignored.new
    end
end
