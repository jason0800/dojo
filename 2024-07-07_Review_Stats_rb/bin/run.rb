#!/usr/bin/env ruby

# Add lib directory to load path
$LOAD_PATH << File.expand_path('../lib', __dir__)

# require lib directory
require "review_stats"

# nice to have this
review_stats = ReviewStats.new(ARGV[0])
puts review_stats.output

# # Archives below

# untested code below
# might be better to wrap inside a class? see comment at end of this file
# array = ReviewStats.process(File.read(ARGV[0]))
# average = ReviewStats.average(array)
# median = ReviewStats.median(array)
# count = ReviewStats.count(array)
# spread = ReviewStats.spread(array)
# puts ReviewStats.output(average: average, median: median, count: count, spread: spread)
# puts ReviewStats.output(average: average, count: array.count, spread: array.tally)
