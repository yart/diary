# frozen_string_literal: true

class Diary
  private

  def call_vim(record)
    system("vim #{@project_dir}records/#{record}.md")
  end

end
