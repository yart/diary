# frozen_string_literal: true

class Diary
  
  def open
    case @mode
    when nil
      main_menu
    when 'new'
      mode_new
    when 'edit'
      mode_edit
    else
      mode_help
    end
  end
  
end
