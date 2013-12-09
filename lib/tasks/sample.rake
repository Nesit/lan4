
namespace :db do
  desc 'fill db with sample data from db/samples'
  task :sample => :environment do
    puts "Loading samples ..."
    Dir.glob(Rails.root.join("db", "samples", "*.rb")).each do |file|
      print "-> #{file} ... "
      load file
      puts "ok"
    end
    puts "Done"
  end
end