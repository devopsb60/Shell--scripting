help:
	@grep '####' Makefile | grep -v grep | sed -e 's/####/\t\t/'
git-pull:
	@echo ---------pulling git code-------------
	@git pull &>/dev/null

cart: git-pull #### Setup Cart Component
	@bash components/cart.sh

catalogue:git-pull #### Setup Catalogue Component
	@bash components/catalogue.sh

user:git-pull #### Setup user Component
	@bash components/user.sh

shipping:git-pull #### Setup shipping Component
	@bash components/shipping.sh
payment:git-pull #### Setup payment Component
	@bash components/payment.sh
frontend:git-pull #### Setup frontend Component
	@bash components/frontend.sh
mysql:git-pull #### Setup mysql Component
	@bash components/mysql.sh
redis:git-pull #### Setup redis Component
	@bash components/redis.sh
rabbitmq:git-pull #### Setup rabbitmq Component
	@bash components/rabbitmq.sh
mongodb:git-pull #### Setup mongodb Component
	@bash components/mongodb.sh

