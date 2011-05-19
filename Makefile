
# Variables
MAKE=/usr/bin/make

# Project and Directories
DIRECTORY=tips

all: dir

dir:
	for i in $(DIRECTORY);      \
	do                          \
		echo "Making $$i";  \
		cd $$i ;            \
		$(MAKE)  ;           \
		cd -;               \
	done


clean:
	for i in $(DIRECTORY);      \
	do                          \
		echo "Cleaning $$i";  \
		cd $$i ;            \
		$(MAKE) $@ ;           \
		cd -;               \
	done
