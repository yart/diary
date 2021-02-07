# frozen_string_literal: true

class Diary
  private
  
  def mode_edit
    file_menu if @record.nil?
    call_vim(@record)
  end

end
