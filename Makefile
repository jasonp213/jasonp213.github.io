
all: new

fileName = "new"
.PHONY: new
new:
	hugo new posts/$$(date +"%Y-%m-%d")/$(fileName).md
