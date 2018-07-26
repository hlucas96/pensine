namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'csv'
    #make_entity
    #make_chapter
    #make_character
    # make_quote
    make_character_pic
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

def make_character
    csv_text = File.read('lib/tasks/character_without_4.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Character.create!(row.to_hash)
    end
end

def make_quote
    csv_text = File.read('lib/tasks/quote.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      if row['scene'] == '0'
        quote = Quote.create content: row['contenu'], content_en: row['english']
        chapter = Chapter.find_by(chapter_id: row['chapitre'], entity_id: row['tome'])
        quote.chapter = chapter
        if row['characters'] != nil
          characters = row['characters'].split(%r{,\s*})
          characters.each do |character|
            c = Character.find_by(name: character)
            if c != nil
              RelatedCharacter.create(character: c, quote: quote)
            else
              print character, "\n"
              new_c = Character.create(name: character, name_en: "To be set")
              RelatedCharacter.create(character: new_c, quote: quote)
            end
          end
        end
      end
      #Character.create!(row.to_hash)
    end
end

def make_character_pic
    path = "app/assets/images/characters"
    Dir.foreach(path) do |file|
      name = File.basename(file).sub("_", " ").sub(".png", "").titleize
      c = Character.find_by(name: name)
      if c != nil
        c.avatar = File.new(File.absolute_path(path + '/' + file))
        c.save!
        print name, "\n\n"
      else
        c2 = Character.find_by(name_en: name)
        if c2 != nil
          c2.avatar = File.new(File.absolute_path(path + '/' + file))
          c2.save!
          print name, "\n"
        end
      end
    end
end
    # csv_text = File.read('lib/tasks/quotes_clean.csv')
    # csv = CSV.parse(csv_text, :headers => true)
    # csv.each do |row|
    #   Quote.create!(row.to_hash)
    # end
