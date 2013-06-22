# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = 'motd-creator'
  s.version = '1.0.1'
  s.date = Time.now.strftime('%Y-%m-%d')

  s.authors = ['xiongchiamiov']
  s.email = ['xiong.chiamiov@gmail.com']
  
  s.files = %w( COPYING Rakefile README.md )
  s.files += Dir.glob 'bin/*'
  
  s.executables = 'motd-creator'
  s.extra_rdoc_files = ['README.md']
  
  s.summary = %q{Create a nice MOTD, complete with ASCII-art, witty quote, and fancy border.}
  s.homepage = 'https://github.com/xiongchiamiov/motd-creator/'
  s.description = %q{Create a nice MOTD, complete with ASCII-art, witty quote, and fancy border.}
end
