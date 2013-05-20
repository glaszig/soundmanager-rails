# SoundManager on Rails [![Gem Version](https://badge.fury.io/rb/soundmanager-rails.png)](http://badge.fury.io/rb/soundmanager-rails)

This is the original [SoundManager2](http://www.schillmania.com/projects/soundmanager2/) wrapped in a gem for easy use with Rails' asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'soundmanager-rails'

Or use bleeding edge code from Github:

    gem 'soundmanager-rails', :git => 'git://github.com/glaszig/soundmanager-rails.git'

And then execute:

    $ bundle

## Usage

Add this to your Sprockets manifest:

    //= require soundmanager

> This asset will load `soundmanager2.js` or `soundmanager2-nodebug.js` in case of your `Rails.env` being set to `development` or `<anything>`, respectively.  
> Additionally, `window.soundManager.url` will be set to the proper asset url to load fallback swf files.

and you're good to go.

Of course, you can just load the SoundManager library itself using one of the following lines:

    //= require soundmanager2
    //= require soundmanager2-jsmin
    //= require soundmanager2-nodebug
    //= require soundmanager2-nodebug-jsmin

> **Note**  
> This gem uses the cross-domain enabled flash files distributed with sm2 by default to make integration with external asset hosts easy.  
> Thanks to [@liufengyun](https://github.com/liufengyun) for testing this.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# License

See the LICENSE file.  
SoundManager2 is BSD-licensed.
