
namespace :app do
  desc 'Build app for current platform'
  task :build do |t, args|
    system('bash build/build.sh')
  end

  desc 'Run app'
  task :run do |t, args|
    exec('./dragonruby srd/')
  end
end
