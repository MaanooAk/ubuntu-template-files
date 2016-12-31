
.phony: install
install: ~/Templates
	@cp -r Templates/ ~/
	@echo '✓ Installed templates'

.phony: clean
clean: ~/Templates
	@rm -rf ~/Templates/*
	@echo '✓ Removed all existing templates'

.phony: cleaninstall
cleaninstall: clean install

~/Templates:
	@mkdir ~/Templates

.phony: docgen
docgen:
	@sed -e '/<!-- TREE START -->/,$$d' README.md > README.md.tmp
	@echo '<!-- TREE START -->' >>  README.md.tmp
	@echo '```' >>  README.md.tmp
	@echo 'New tree:'
	@tree -n --noreport Templates/
	@tree -n --noreport Templates/ >> README.md.tmp
	@echo '```' >>  README.md.tmp
	@echo '<!-- TREE END -->' >>  README.md.tmp
	@sed -e '1,/<!-- TREE END -->/d' README.md >> README.md.tmp
	@mv README.md.tmp README.md
	@echo '✓ Updated README.md with the new tree'
	

.phony: help
help:
	@echo 'Usage: make [option]'
	@echo 'Default option is install'
	@echo ''
	@echo 'Options:'
	@echo '  install        Install (copy Templates/ to ~/Templates/)'
	@echo '  clean          Remove all template files (from ~/Templates/)'
	@echo '  cleaninstall   Remove all template files and then install'
	@echo '(development)'
	@echo '  docgen         Update the README.md file'
	@echo ''
