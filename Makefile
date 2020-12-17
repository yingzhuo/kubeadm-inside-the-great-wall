github:
	@git add . && git commit -m "$(shell /bin/date "+%F %T")" && git push
.PHONY: github