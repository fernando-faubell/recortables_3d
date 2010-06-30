module Paperclip

  class PpmToJpg < Processor

    #class InstanceNotGiven < ArgumentError; end

    def initialize(file, options = {})
      kkk
      super
      @file = file
      @instance = options[:instance]
      @current_format   = File.extname(@file.path)
      @basename         = File.basename(@file.path, @current_format)
    end
    
    def make
      kk
      `convert #{@basename} #{@file.path}.jpg`
      dst = Tempfile.new([@file.path, "jpg"].compact.join("."))
      dst
    end

  end
end
