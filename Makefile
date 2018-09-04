build:
	docker build . --no-cache -t lmnetworks/pdns-recursor:4.1.3-$(shell date +%Y%m%d)
