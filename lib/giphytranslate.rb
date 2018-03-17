require "giphytranslate/version"
require 'net/http'
require 'json'

module Giphytranslate
  class Giphy < Liquid::Tag

    @@public_api = "akShN2GUsrLFyoLw48jf9phWzLC5zkQS"

    def initialize(tagName, markup, tokens)
      super
        @string = markup

    end

    def render(context)

      uri = URI("http://api.giphy.com/v1/gifs/translate?api_key=#{@@public_api}&s=#{@string}")
      response = Net::HTTP.get(uri)
      json_response = JSON.parse(response)
      json_raw = json_response['data']
      @image_height = json_raw['image_height']
      @image_width = json_raw['image_width']
      @image = json_raw['image_original_url']

      "<img src=\"#{@image}\" height=\"#{@image_height}\" width=\"#{@image_width}\" alt=\"#{@string}\">"


    end
  end
  end

  Liquid::Template.register_tag('giphy', Giphytranslate::Giphy)
