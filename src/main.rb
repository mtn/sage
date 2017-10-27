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
    src_tape = SourceTape.new(stream)
    # data_tape = DataTape.new


    src_tape.parse





rescue Exception => e
    STDERR.puts "#{e.class}: #{e}"
end
