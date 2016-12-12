#!/usr/bin/env ruby

source_path = "./_source"
Dir.foreach(source_path) do |item|
  next if item == '.' or item == '..'
  if item.slice(-4..-1) == "haml"
    puts "Converting #{item} to html..."
    `haml #{source_path}/#{item} #{item.slice(0..-6)}.html`
  end
end
