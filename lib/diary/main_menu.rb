# frozen_string_literal: true

class Diary
  private
  
  def main_menu
    prompt = TTY::Prompt.new
    choices = %w[edit new]
    @mode = prompt.select('Choose a mode:', choices)
    open
  end

end
