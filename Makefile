project: header footer modules/*
	@grep -vhE "^#[^!]" header > project
	@$(foreach file,modules/*, grep -vhE "^#" $(file) >> project)
	@grep -vhE "^#" footer >> project
	@sed -i"" -e "/^\$$/d" project
	@chmod 755 project

clean:
	@rm project

all: project
