
all:
	echo "添加目录下新的改动文件..."
	git add .
	echo "添加后新的git状态..."
	git status
	echo "提交新的更新..."
	git commit -m "update"
	echo "将新的改变同步到云仓库..."
	git push
	echo "同步完毕..."

.PHONY: clean undate

clean:
	rm -rf .

update:
	git pull
