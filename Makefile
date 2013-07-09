project: header modules/*
	@cat header > project
	@$(foreach file,modules/*, cat $(file) >> project)
	@chmod 755 project

clean:
	@rm project

all: project
