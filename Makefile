project: header modules/*
	@grep -vh "^# " header > project
	@$(foreach file,modules/*, grep -vh "^# " $(file) >> project)
	@chmod 755 project

clean:
	@rm project

all: project
