module Soundmanager
  if defined?(::Rails) and ::Rails.version >= "3.1"
    ENV = ::Rails.env
    module Rails
      class Engine < ::Rails::Engine

        initializer 'soundmanager.assets' do |app|
          app.config.assets.precompile += %w(
            swf/soundmanager2.swf
            swf/soundmanager2_debug.swf
            swf/soundmanager2_flash9.swf
            swf/soundmanager2_flash9_debug.swf
          )
        end

      end
    end
  else
    ENV = ''
  end

  def self.env; ENV end
end