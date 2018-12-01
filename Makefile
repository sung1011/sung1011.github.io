project_root:=$(CURDIR)

.PHONY: help debug build

help:
	@echo "make build         -- 构建"
	@echo "make debug         -- 本地调试"

build:
	sh ${project_root}/deploy.sh
debug:
	cd hugo && hugo server -t beg