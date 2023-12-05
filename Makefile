
all:
	git add .
	git status
	git commit -m "update"
	git push

.PHONY: clean

clean:
	rm -rf .
