# frozen_string_literal: true

class Diary
  private
  
  def prettify_name(name)
    parts = name.match(%r{(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})}).to_a
    "#{parts[1]}-#{parts[2]}-#{parts[3]} #{parts[4]}:#{parts[5]}"
  end
  
end
