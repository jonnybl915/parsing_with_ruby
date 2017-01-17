class MyFile
  def self.write(to_file, contents)
    puts "path is #{to_file}, contents is #{contents}"
  end

  #Mirroring CSV foreach
  def foreach(path, headers: false, other: 15, req:)
    puts "path=#{path}, headers=#{headers}, other=#{other}, req=#{req}"
  end
end

f = MyFile.new

f.foreach('asdf')
f.foreach('asdf', req: 10, headers: true)
f.foreach('zxcv', other: 'other', req: 5)
# positional arguments come first and then come keyword arguments

#before
#f.write(path, contents)

#These work
f.write contents: 'Hello file', to_file: 'src/jb'
f.write to_file: 'src/file', contents: 'Hello'

#These do not
# f.write to_file: '/src/other'
# f.write contents: 'hello'