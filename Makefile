


ricc-test:
	cat ZZZ-riccardo.rb | bin/console

ricc-pull:
	git stash
	git pull origin main
	git stash apply
