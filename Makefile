
.PHONY: deploy
deploy:
	ssh $(DOCS_JELIX_ORG_DEPLOY_SSH) 'source $(DOCS_JELIX_ORG_INIT_SCRIPT) && cd $(DOCS_JELIX_ORG_DEPLOY_DIR) && ./update_repo_and_books.sh --no-pdf $(CI_COMMIT_BRANCH) fr'
