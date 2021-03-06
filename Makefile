tests: unit behat

release:
	./vendor/bin/RMT release

unit:
	php ./vendor/bin/phpunit

behat:
	php ./vendor/bin/behat --colors -vvv

database:
	./examples/scripts/create_schema.sh
	./examples/scripts/load_fixtures.php

rusty:
	php ./vendor/bin/rusty check --no-execute README.md
