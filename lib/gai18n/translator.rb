module GAI18n
  class Translator
    def translate
      # threads = Locale.target_locale_files.map do |target_locale_file|
      #   Thread.new { target_locale_file.translate }
      # end
      # threads.each(&:join)
      Locale.target_locale_files.map do |target_locale_file|
        puts "Translating #{target_locale_file}..."
        target_locale_file.translate
      end
    end
  end
end
