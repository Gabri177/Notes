
all:
	@echo "\033[1;42m 添加目录下新的改动文件...\033[0m"
	@git add .
	@echo "\033[1;42m 添加后新的git状态...\033[0m"
	@git status
	@echo "\033[1;42m 提交新的更新...\033[0m"
	@git commit -m "update"
	@echo "\033[1;42m 将新的改变同步到云仓库...\033[0m"
	@git push
	@echo "\033[1;42m 同步完毕...\033[0m"

.PHONY: clean undate

clean:
	@rm -rf .

update:
	@echo "\033[1;42m 准备从云端进行同步...\033[0m"
	@git pull
	@echo "\033[1,42m 同步完成...\033[0m"
