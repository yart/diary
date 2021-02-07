# frozen_string_literal: true

class Diary
  private
  
  def mode_help
    puts <<~HELP
      
      \tdiary                when ran without parameters shows the mode menu
      \tdiary [mode] [file]
      \t       new           creates new record with a current timestamp as name
      \t       edit  [file]  edits [file] or shows list of records to choose one
      \t       help          shows this help
      
    HELP
  end

end
