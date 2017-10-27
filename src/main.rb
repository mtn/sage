require_relative 'errors'
require_relative 'parse'
require_relative 'tape'

begin
    if ARGV.length > 0
        f = File.open(ARGV[0],'r')
    else
        raise NoInput, 'No input file'
    end

    inp = f.read.chomp
    stream = inp.chars.map { |c| parseChar(c) }.compact
    src_tape = Tape.new(stream,0)
    p src_tape



rescue Exception => e
    STDERR.puts "#{e.class}: #{e}"
end
