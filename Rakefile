#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'open-uri'

task :update_sources do
  tpl = 'https://raw.githubusercontent.com/scottschiller/SoundManager2/master/script/%{file}'
  [
    'soundmanager2-jsmin.js',
    'soundmanager2-nodebug-jsmin.js',
    'soundmanager2-nodebug.js',
    'soundmanager2.js'
  ].each do |f|
    puts "Updating #{f}"
    File.write "vendor/assets/javascripts/#{f}", URI.parse(tpl % {file: f}).read
  end

  tpl = 'https://raw.githubusercontent.com/scottschiller/SoundManager2/master/swf/%{file}'
  [
    'soundmanager2.swf',
    'soundmanager2_debug.swf',
    'soundmanager2_flash9.swf',
    'soundmanager2_flash9_debug.swf'
  ].each do |f|
    puts "Updating #{f}"
    File.write "vendor/assets/images/swf/#{f}", URI.parse(tpl % {file: f}).read
  end
end
