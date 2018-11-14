project_root:=$(CURDIR)

.PHONY: help debug build

help:
	@echo "make build         -- 编译"
	@echo "make debug         -- 本地调试"

build:
	sh ${project_root}/deploy.sh
debug:
	cd hugo && hugo server -t beg