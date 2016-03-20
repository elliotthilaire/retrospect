require 'thor'

module Retrospect

  RETROSPECT_FILE = File.expand_path('~/retrospect.txt')

  class CLI < Thor
    desc "positive DESCRIPTION", "record something positive"
    def positive
      thought = ask "What went well?\n"

      File.open(RETROSPECT_FILE, 'a') do |file|
        file.write("+ #{thought}\n")
        file.write("\n")
      end
    end

    desc "negative DESCRIPTION", "record something negative"
    def negative
      thought = ask "What's up?\n"
      suggestion = ask "What do you suggest?\n"

      File.open(RETROSPECT_FILE, 'a') do |file|
        file.write("- #{thought}\n")
        file.write("Suggestion: #{suggestion}\n")
        file.write("\n")
      end
    end

    desc "question DESCRIPTION", "record a question"
    def question
      thought = ask "What would you like to know?\n"
      suggestion = ask "How might you find out?\n"

      File.open(RETROSPECT_FILE, 'a') do |file|
        file.write("? #{thought}\n")
        file.write("Suggestion: #{suggestion}\n")
        file.write("\n")
      end
    end

    desc "open", "open the retrospect.txt file"
    def open
      system "open #{RETROSPECT_FILE}"
    end

    desc "clean", "empty the retrospect.txt file"
    def clean
      system "echo > #{RETROSPECT_FILE}"
    end
  end
end
