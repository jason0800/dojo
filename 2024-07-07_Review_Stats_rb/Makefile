.DEFAULT_GOAL := usage

rspec:
	bundle exec rspec

demo:
	bin/run.rb input.csv

build: rspec demo

usage:
	@echo "run the following"
	@echo "make            # for this handy instruction"
	@echo "make rspec      # run tests"
	@echo "make demo       # run demo"
	@echo "make build      # run tests and demo"
