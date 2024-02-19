namespace :import do
  desc "Import data from JSON file"
  task data: :environment do
    file_path = Rails.root.join('data.json')

    data = JSON.parse(File.read(file_path))

    data.each do |item|
      name = item['name']
      info = item['info']

      person = Person.create(name: name)

      person.create_detail(
        title: info['title'],
        age: info['age'],
        phone: info['phone'],
        email: info['email']
      )
    end

    puts "Data imported successfully!"
  end
end
