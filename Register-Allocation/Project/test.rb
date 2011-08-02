#!/usr/bin/ruby

Dir.chdir("./Inputs")
# Clean generated out files
#`rm ./Outputs/*.s`
# Run control flow analysis on input files
Dir.glob("*.s") do |file|
  puts "processing #{file}"
  command = "../AllocateRegisters ../Inputs/#{file} ../Outputs/#{file.gsub(".s","")}.out.s"
  `#{command}`
end