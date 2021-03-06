# frozen_string_literal: true

class Diary
  private
  
  def file_menu
    prompt  = TTY::Prompt.new(quiet: true)
    files   = Dir.children("#{@project_dir}records/").sort { |a, b| b.to_i <=> a.to_i }
    choices = []
    
    files.each do |file|
      choices << { name: prettify_name(file), value: file.gsub(%r{(\d+).*}i, '\1') }
    end
    
    @record = prompt.select("Choose a file:", choices, per_page: 4)
  end

end
