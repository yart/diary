# frozen_string_literal: true

require 'fileutils'

f    = File
sys  = FileUtils
user = ENV['USER']

main_file  = sys.pwd.split('/').last.downcase
main_dir   = "#{sys.pwd}/"
main_path  = "#{main_dir}#{main_file}"
bin_dir    = "/home/#{user}/.local/bin/"
config_dir = "/home/#{user}/.config/#{main_file}/"
sh_script  = <<~SH
  #!/usr/bin/env sh

  cd $(cat /home/${USER}/.config/#{main_file}/local.path) && bundle exec ruby #{main_file}.rb "$@"
SH

system('bundle install')
f.write(main_file, sh_script)
sys.chmod '+x', main_file
f.write("#{config_dir}local.path", main_dir)
sys.ln_sf(main_path, "#{bin_dir}#{main_file}")
