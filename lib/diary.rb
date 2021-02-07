# frozen_string_literal: true

require 'tty-prompt'

require_relative 'diary/call_vim'
require_relative 'diary/file_menu'
require_relative 'diary/main_menu'
require_relative 'diary/mode_edit'
require_relative 'diary/mode_help'
require_relative 'diary/mode_new'
require_relative 'diary/open'
require_relative 'diary/params'
require_relative 'diary/prettify_name'

class Diary
  
  def initialize(dir)
    params
    @project_dir = File.read("/home/#{ENV['USER']}/.config/#{dir.split('/').last.downcase}/local.path").strip
    @timestamp   = Time.now.to_s.gsub(%r{^(?<yr>\d{4}).(?<mo>\d{2}).(?<dy>\d{2}).(?<ho>\d{2}).(?<mi>\d{2}).*}, '\k<yr>\k<mo>\k<dy>\k<ho>\k<mi>')
  end
  
end
