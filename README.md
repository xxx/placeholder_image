placeholder_image
=================

A gem to generate placeholder images (via data URI) of any (reasonable) size, color (that ImageMagick supports), and text color.

SYNOPSIS
========

In a view:
    <%= placeholder_image_tag :width => 200, :height => 100, :color => :navy, :text_color => :orange, :text => 'some text instead of the default' %>

or for the simplest cases:
    <%= placeholder_image_tag "200x100" # widthxheight %>

REQUIREMENTS
============

rmagick - `sudo gem install rmagick`

HTML-safe strings, which means either using Rails 3, or the [rails_xss](https://github.com/rails/rails_xss) if you're on Rails 2.

INSTALLATION
============

    sudo gem install placeholder_image

then in your environment.rb:
    config.gem 'placeholder_image', :source => 'http://rubygems.org'

Or if you're using bundler, add the following line to your Gemfile:
    gem 'placeholder_image'
    
TODO
====

IE support - If I wait long enough, IE will support me instead. Until then, there's no IE support.

LICENSE
=======

(The MIT License)

Copyright (c) 2011 Michael Dungan

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
