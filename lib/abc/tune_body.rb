
module ABC
  class Note
    attr_reader :name, :raw
    def initialize(note)
      @raw = note
      @name = note
    end
  end
  class Measure
    attr_reader :notes, :raw
    def initialize(measure = "")
      @raw = measure
      @notes = []
      measure.each_char do |char|
        @notes << Note.new(char) if char =~ /[A-G]/i
      end
    end
  end
  class TuneBody  
    attr_reader :notes, :measures, :raw
    def initialize(body)
      @raw = body
      @notes = []
      @measures = []
      body.each_line do |line|
        #binding.pry
        unless line.match(/^[A-Z]:/i)
          line.chomp.split(/\|+/).each do |measure|
            @measures << Measure.new(measure)
          end
          if line.match(/:\|$/)
            line.chomp.split(/\|+/).each do |measure|
              @measures << Measure.new(measure)
            end
          end
        end
        #repeat = (line.match(/:\|$/)) ? 2 : 1
        #repeat.times do
        #  unless line.match(/^[A-Z]:/i)
        #    line.each_char do |char|
        #      repeat_line = false
        #      @measures << Measure.new if char =~ /\|/
        #      @notes << Note.new(char) if char =~ /[A-G]/i
        #    end
        #  end
        #end
      end
      @measures.each do |measure|
        @notes += measure.notes
      end
    end
  end
end
