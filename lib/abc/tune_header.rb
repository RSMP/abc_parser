
module ABC
  class TuneHeader
    attr_reader :reference, :titles, :meter, :key, :source, :notes, :rhythm
    def initialize(header)
      header.each_line do |line|
        #binding.pry
        case line
        #when /^[A-Za-z]:/
        #  @fields ||= []
        #  @fields << InformationField.new(line)
        when /^X:(?<reference>\d+)/ then @reference = $~[:reference].to_i
        when /^T:(?<title>[^%]*)(%.*)?/
          @titles ||= []
          @titles << $~[:title].strip
        when /^C:/
        when /^S:(?<source>[^%]*)(%.*)?/ then @source = $~[:source].strip
        when /^M:(?<meter>\S+)/ then @meter = $~[:meter]
        when /^R:(?<rhythm>[^%]*)(%.*)?/
          @rhythm = $~[:rhythm].strip
        when /^N:(?<note>[^%]*)(%.*)?/
          @notes ||= []
          @notes << $~[:note].strip
        when /^K:(?<key>\S+)/ then @key = $~[:key]
        end
      end
    end
  end
end
