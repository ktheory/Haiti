desc "import tasks for various formats"
namespace :import do
  desc "import a csv"
  task :csv => :environment do
    CsvImporter.import(ENV["file"])
  end
end