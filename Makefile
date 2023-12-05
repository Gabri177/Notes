
all:
	@echo -e "\e[1;42m 添加目录下新的改动文件...\e[0m"
	@git add .
	@echo -e "\e[1;42m 添加后新的git状态...\e[0m"
	@git status
	@echo -e "\e[1;42m 提交新的更新...\e[0m"
	@git commit -m "update"
	@echo -e "\e[1;42m 将新的改变同步到云仓库...\e[0m"
	@git push
	@echo -e "\033[1;42m 同步完毕...\033[0m"

.PHONY: clean undate

clean:
	@rm -rf .

update:
	@echo -e "\e[1;42m 准备从云端进行同步...\e[0m"
	@git pull
	@echo -e "\e[1,42m 同步完成...\e[0m"
