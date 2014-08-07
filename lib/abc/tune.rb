
module ABC
  class Tune
    extend Forwardable
    attr_reader :header, :body
    def_delegators :@header, :reference, :titles, :meter, :key, :source, :notes,
      :rhythm
    def initialize(tune)
      tune = tune[1..-1] if tune[0].eql? "\n"
      header = ""
      body = ""
      header_line = true
      #binding.pry
      tune.each_line do |line|
        header_line = false unless line.match(/^[XTCSRMNK]:/)
        header += line if header_line
        body += line if !header_line
      end
      #binding.pry
      @header = TuneHeader.new(header)
      @body = TuneBody.new(body)
    end
  end
end
