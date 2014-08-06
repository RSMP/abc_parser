
module ABC
  class Tune
    extend Forwardable
    attr_reader :header, :body
    def_delegators :@header, :reference
    def initialize(tune)
      @header = TuneHeader.new
    end
  end
end
