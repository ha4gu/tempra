module MonkeyPatch
  module Annotate
    # This is a patch for the annotate gem in order to add comments to the factories
    # which file names end with the suffix configured as generator option.
    module ModifyFactoryFiles
      MY_FACTORY_BOT_DIR = Rails.configuration.generators.options[:factory_bot][:dir]
      MY_FACTORY_BOT_SUFFIX = Rails.configuration.generators.options[:factory_bot][:suffix]

      def factory_files(root_directory)
        array = super(root_directory)
        array << File.join(root_directory, MY_FACTORY_BOT_DIR, "%TABLE_NAME%_#{MY_FACTORY_BOT_SUFFIX}.rb")
      end
    end
  end
end

# Annotate gem is installed only in development environment
if Rails.env.development?
  require "annotate/annotate_models/file_patterns"
  AnnotateModels::FilePatterns.singleton_class.prepend(MonkeyPatch::Annotate::ModifyFactoryFiles)
end
