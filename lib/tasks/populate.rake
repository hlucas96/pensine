
namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'csv'
    #make_entity
    make_chapter
  end
end

def make_entity
    csv_text = File.read('lib/tasks/entity.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Entity.create!(row.to_hash)
    end
end

def make_chapter
    csv_text = File.read('lib/tasks/chapter.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Chapter.create!(row.to_hash)
    end
end
    # csv_text = File.read('lib/tasks/quotes_clean.csv')
    # csv = CSV.parse(csv_text, :headers => true)
    # csv.each do |row|
    #   Quote.create!(row.to_hash)
    # end
