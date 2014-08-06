
module ABC
  class File
    attr_reader :parsed, :version, :tunes, :header
    def initialize(filepath)
      @filepath = filepath
      @file = ::File.open(@filepath, "r") {|f| f.read}
      @parsed = false
      parse
    end
    def parsed?
      parsed
    end
    private
    def parse
      @sections = @file.split(/\n(?=\n)/)
      @sections.each do |section|
        case section_type(section)
        when :tune
          @tunes ||= []
          @tunes << Tune.new(section)
        when :file_header
          @header = FileHeader.new(section)
        else
        end
      end
      @parsed = true
    end
    def section_type(section)
      type = :unknown
      section.each_line do |line|
        if m = line.match(/%abc(-(?<version>[\d.]+))?/)
          @version ||= m[:version].to_f
        end
        case line
        when /^H:|^O:/ then type = :file_header
        when /^X:|^T:|^K:/ then type = :tune
        end
      end
      type
    end
  end
end
