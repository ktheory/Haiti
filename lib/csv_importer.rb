class CsvImporter
  attr_reader :csv_data
  
  # exceptions
  class ParseError < Exception; end
  
  class << self
    def import(path)
      @csv_data = parse_csv(File.expand_path(path))
      # iterate rows
      i = 0
      @csv_data.each do |row|
        puts "*"*80
        puts "processing row #{i}"
        puts "*"*80
        datum = RawDatum.new({
            :name => row["name"],
            :acronym => row["acronym"],
            :inscription_no => row["no. inscription"],
            :date_de_reconnaisance => row["date de reconnaissance"],
            :contact_person => row["contact name"],
            :address => row["address"],
            :website => row["website"],
            :phone => row["phone"],
            :country_of_org => row["base country"],
            :sector => row["sector"],
            :location => row["location"],
            :alis_notes => row["alis notes"],
            :nationalite => row["nationalite"],
            :no_du_moniteur => row["no. du moniteur"],
            :notes => row["notes"]
          })
        datum.save
        i += 1
      end
      puts "\n\n\n"
      puts "*"*80
      puts "imported #{i} rows"
      puts "*"*80
    end
  
    # parse a csv file
    def parse_csv(path)
      puts "parse csv"
      FasterCSV.read(path, :headers => true)
    end
  end
end