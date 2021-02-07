# frozen_string_literal: true

require_relative 'lib/diary'

Diary.new(Dir.pwd).open
