require 'net/http'
require 'json'

module Jekyll
  class Giphy < Liquid::Tag

    @@public_api = "dc6zaTOxFJmzC"

    def initialize(tagName, markup, tokens)
      super
        @tag = markup

    end

    def render(context)

      uri = URI("http://api.giphy.com/v1/gifs/random?api_key=#{@@public_api}&tag=#{@tag}")
      response = Net::HTTP.get(uri)
      json_response = JSON.parse(response)
      json_raw = json_response['data']
      @image_height = json_raw['image_height']
      @image_width = json_raw['image_width']
      @image = json_raw['image_original_url']

      "<img src=\"#{@image}\" height=\"#{@image_height}\" width=\"#{@image_width}\" alt=\"#{@tag}\">"


    end
  end
end

Liquid::Template.register_tag('giphy', Jekyll::Giphy)
