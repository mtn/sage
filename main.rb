require_relative 'errors'
require_relative 'parse'

begin
    if ARGV.length > 0
        f = File.open(ARGV[0],'r')
    else
        raise NoInput, 'No input file'
    end

    i = f.read.chomp
    p i.chars.map { |c| parseChar(c) }



rescue Exception => e
    STDERR.puts "#{e.class}: #{e}"
end
