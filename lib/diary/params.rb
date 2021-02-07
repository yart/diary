# frozen_string_literal: true

class Diary
  private

  def params
    @mode   = ARGV[0]
    @record = ARGV[1]&.gsub(%r{(\d+).*}i, '\1')
  end

end
