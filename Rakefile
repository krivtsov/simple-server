task :install do
  sh 'bundle install'
end

task :lint do
  bundle exec 'rubocop'
end

task :test do
  bundle exec 'rspec spec/'
end

task :start do
  ruby 'app.rb'
end
