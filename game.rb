#!/usr/bin/env ruby
# encoding: UTF-8

require 'thor'
require 'rainbow'
# require_relative
Dir[__dir__ + '/core/*.rb'].each { |file| require file }
Dir[__dir__ + '/players/*.rb'].each { |file| require file }
Dir[__dir__ + '/ranks/*.rb'].each { |file| require file }
Dir[__dir__ + '/games/*.rb'].each { |file| require file }
Dir[__dir__ + '/helper/*.rb'].each { |file| require file }

class GameCLI < Thor

  desc 'start [COMMAND]', 'Start Game'
  def start
    game = StartupGame.new
    game.openning
    game.run    
  end

end

GameCLI.start(ARGV)