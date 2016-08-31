module ActionMailer
  module Textgiri
    def self.included(klass)
      klass.class_eval do
        include ActionMailer::Textgiri::HtmlToPlainText
      end
    end

    def collect_responses(headers)
      responses = super headers
      html_part = responses.detect { |response| response[:content_type] == 'text/html' }
      text_part = responses.detect { |response| response[:content_type] == 'text/plain' }
      if html_part && !text_part
        responses.insert 0, content_type: 'text/plain', body: convert_to_text(html_part[:body])
        headers[:parts_order] = ['text/plain'] + headers[:parts_order] unless headers[:parts_order].include?('text/plain')
      end
      responses
    end
  end
end
