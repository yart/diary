# frozen_string_literal: true

mode = ARGV[0]

if mode == 'new'
  project_dir = File.read("/home/#{ENV['USER']}/.config/#{Dir.pwd.split('/').last.downcase}/local.path").strip
  timestamp = Time.now.to_s.gsub(%r{^(?<yr>\d{4}).(?<mo>\d{2}).(?<dy>\d{2}).(?<ho>\d{2}).(?<mi>\d{2}).*}, '\k<yr>\k<mo>\k<dy>\k<ho>\k<mi>')
  system("vim #{project_dir}/records/#{timestamp}.md")
end
