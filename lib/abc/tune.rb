
module ABC
  class Tune
    attr_reader :header
    def initialize(tune)
      @header = TuneHeader.new
    end
  end
end
