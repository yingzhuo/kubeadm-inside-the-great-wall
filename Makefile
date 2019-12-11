timestamp             = $(shell /bin/date "+%F %T")

no_default:
	@echo "no defualt target"; false

github:
	@git add .
	@git commit -m "$(timestamp)"
	@git push

.PHONY: no_default github