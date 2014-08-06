
module ABC
  class TuneHeader
    attr_reader :reference, :titles, :meter, :key
    def initialize(header)
      header.each_line do |line|
        #binding.pry
        case line
        when /^X:(?<reference>\d+)/ then @reference = $~[:reference].to_i
        when /^T:(?<title>.*?)(?=\s*%.*)/
          @titles ||= []
          @titles << $~[:title]
        when /^C:/
        when /^S:/
        when /^M:(?<meter>\S+)/ then @meter = $~[:meter]
        when /^R:/
        when /^N:/
        when /^K:(?<key>\S+)/ then @key = $~[:key]
        end
      end
    end
  end
end
