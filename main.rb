require_relative 'errors'

begin
    if ARGV.length > 0
        f = File.open(ARGV[0],'r')
    else
        raise NoInput, 'No input file'
    end

    i = f.read.chomp



rescue Exception => e
    STDERR.puts "#{e.class}: #{e}"
end
