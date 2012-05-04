module Soundmanager
  if defined?(::Rails) and ::Rails.version >= "3.1"
    ENV = ::Rails.env
    module Rails
      class Engine < ::Rails::Engine
      end
    end
  else
    ENV = ''
  end

  def self.env; ENV end
end