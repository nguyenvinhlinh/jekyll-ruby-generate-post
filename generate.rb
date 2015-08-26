def main
  title = readTitle()
  fileName = generateFileName(title)
  if !checkExistFile(fileName)
    writeFile(fileName, title)
    p "Write file #{fileName} successfully."
  else
    p "File named #{fileName} exists, press 'y' to replace."
    isReplace = STDIN.gets.chomp
    if isReplace == 'y'
      writeFile(fileName, title)
      p "Write file #{fileName} successfully."
    else
      p "Exit."
    end
  end
end

def readTitle
  title = ARGV.join(" ")
  if title == "" or title.blank?
    p "Enter post title:  "
    title = STDIN.gets.chomp
  end
  title
end

def writeFile(fileName, title)
  fileReader = open(fileName, 'w')
  fileReader.write("---\n")
  fileReader.write("layout: post\n")
  fileReader.write("title: #{title}\n")
  fileReader.write("date: #{Time.new.strftime("%Y-%m-%d %H:%M:%S")}\n")
  fileReader.write("categories: etc\n")
  fileReader.write("tag: etc\n")
  fileReader.write("--- \n")
  fileReader.close
end

def checkExistFile (fileName)
  return File.exist?(fileName)
end

def generateFileName(title)
  fileName = title.split(' ').join("-")
  date = Time.new.strftime("%Y-%m-%d-")
  fileName = date + fileName + ".md"
end
main()
