# encoding: UTF-8

require 'rubygems'
require 'bundler'
Bundler.require

# compile scss into css
require 'sass/plugin/rack'
Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

# run app
require './app.rb'
run App