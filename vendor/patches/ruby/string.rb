class String

  def delimited
    delimiter = ','
    separator = '.'
    begin
      parts = self.split('.')
      parts[0].gsub!(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1#{delimiter}")
      parts.join(separator)
    rescue
      self
    end
  end

end