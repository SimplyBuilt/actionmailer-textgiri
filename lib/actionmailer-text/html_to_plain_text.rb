require 'nokogiri'

module ActionMailer
  module Text
    module HtmlToPlainText
      def convert_to_text(html_body)
        body_parts = []
        Nokogiri::HTML(html_part[:body]).traverse do |node|
          if node.text? and !(content = node.content ? node.content.strip : nil).blank?
            body_parts << content
          elsif node.name == "a" && (href = node.attr("href")) && href.match(/^https?:/)
            body_parts << href
        end
        body_parts.uniq.join("\n")
      end
    end
  end
end
