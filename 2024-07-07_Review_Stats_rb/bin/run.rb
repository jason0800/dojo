#!/usr/bin/env ruby

# Add the lib directory to the load path
$LOAD_PATH << File.expand_path('../lib', __dir__)

# require our library
require "review_stats"

# untested code below
# might be better to wrap inside a class? see comment at end of this file
# array = ReviewStats.process(File.read(ARGV[0]))
# average = ReviewStats.average(array)
# median = ReviewStats.median(array)
# count = ReviewStats.count(array)
# spread = ReviewStats.spread(array)
# puts ReviewStats.output(average: average, median: median, count: count, spread: spread)
# puts ReviewStats.output(average: average, count: array.count, spread: array.tally)

# maybe would be nice to have something like this
review_stats = ReviewStats.new(ARGV[0])
review_stats.process
# puts review_stats.output
