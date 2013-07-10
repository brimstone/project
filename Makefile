project: header footer modules/*
	@grep -vh "^# " header > project
	@$(foreach file,modules/*, grep -vh "^# " $(file) >> project)
	@grep -vh "^# " footer >> project
	@chmod 755 project

clean:
	@rm project

all: project
