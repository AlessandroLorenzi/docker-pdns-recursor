check_latest:
	docker run -ti alpine:edge apk search --no-cache pdns-recursor

build:
	docker build . --no-cache -t lmnetworks/pdns-recursor:latest
	docker tag lmnetworks/pdns-recursor:latest lmnetworks/pdns-recursor:4.1.8
	docker tag lmnetworks/pdns-recursor:latest lmnetworks/pdns-recursor:4.1.8-$(shell date +%Y%m%d)

push:
	docker push lmnetworks/pdns-recursor:latest
	docker push lmnetworks/pdns-recursor:4.1.8
	docker push lmnetworks/pdns-recursor:4.1.8-$(shell date +%Y%m%d)
