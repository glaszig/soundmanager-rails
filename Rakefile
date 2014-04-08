#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'open-uri'

namespace :update do
  task sources: [:js, :swf]

  task :js do
    puts 'Updating js files'

    tpl = 'https://raw.githubusercontent.com/scottschiller/SoundManager2/master/script/%{file}'

    [
      'soundmanager2-jsmin.js',
      'soundmanager2-nodebug-jsmin.js',
      'soundmanager2-nodebug.js',
      'soundmanager2.js'
    ].each do |f|
      puts "  #{f}"
      File.write "vendor/assets/javascripts/#{f}", URI.parse(tpl % {file: f}).read
    end
  end

  task :swf do
    require 'zip/filesystem'
    require 'tempfile'

    puts 'Updating swf files'

    source_zip = 'https://github.com/scottschiller/SoundManager2/raw/master/swf/soundmanager2_flash_xdomain.zip'
    zip = Tempfile.new 'SoundManager2.zip'

    begin

      zip.write URI.parse(source_zip).read
      zip.rewind

      files = [
        'soundmanager2.swf',
        'soundmanager2_debug.swf',
        'soundmanager2_flash9.swf',
        'soundmanager2_flash9_debug.swf'
      ]

      Zip::File.open zip do |zipfile|
        puts "  Content of #{source_zip}"
        zipfile.each { |f| puts "    #{f}" }

        puts "  Extracting"
        files.each do |f|
          puts "    #{f}"
          zipfile.extract("soundmanager2_flash_xdomain/#{f}", "vendor/assets/images/swf/#{f}") { true }
        end
      end

    ensure
      zip.close
      zip.unlink
    end
  end
end
