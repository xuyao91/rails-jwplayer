require "rails/jwplayer/engine"
require "rails/jwplayer/version"
require "rails/jwplayer/helper"

module Rails
  module Jwplayer

    class << self
      attr_accessor :key
    end 
  end
end

ActionView::Base.send :include, Rails::Jwplayer::Helper if defined? ActionView::Base
