all: compile

compile: clear
	@mkdir -p ebin
	@erlc -o ebin src/*.erl

clear:
	@rm -f ebin/*.beam

ungit:
	@rm -rf .git
	@rm -f .gitignore
