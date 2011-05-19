
# Variables
MAKE=/usr/bin/make

# Project and Directories
PDF_DIRECTORY=tips
DIRECTORY=$(PDF_DIRECTORY)

all: dir

dir:
	for i in $(DIRECTORY);      \
	do                          \
		echo "Making $$i";  \
		cd $$i ;            \
		$(MAKE)  ;           \
		cd -;               \
	done

pdf:
	for i in $(PDF_DIRECTORY);      \
	do                          \
		echo "Cleaning $$i";  \
		cd $$i ;            \
		$(MAKE) $@ ;           \
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
