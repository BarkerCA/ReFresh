class Leadership
  
  def initialize
    @dir = directory
  end
  
  def single(id)
    filename = @dir + "#{id}.html.erb"
    file = File.open(filename, "rb")
    file.read
  end
  
  def all
    file = ""
    file_array = []
    Dir.glob("#{@dir}/*.erb") do |erbfile|
      file_array << erbfile
    end
    
    file_array.reverse!.each do |efile|
      nfile = File.open(efile, "rb")
      file << nfile.read
    end
    file
    
  end
  
  private
  
  def directory
    File.expand_path(File.dirname(__FILE__)) + "/nuggets/"
  end
  
end