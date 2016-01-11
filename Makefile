ARDUINO_LIB_PATH=/usr/share/arduino/libraries
SOURCE_PATH=`pwd`

all: 
	@echo "Use [install], [unistall] or [doc]"

install:
	@echo "Instaling all libraries..."
	ln -s  $(SOURCE_PATH)/$$lib $(ARDUINO_LIB_PATH); \
	@echo "done."
	
uninstall:
	@echo "Uninstaling all libraries..."
	@for lib in $(LIB_LIST) ; do \
		rm -r $(ARDUINO_LIB_PATH)/$$lib ; \
	done
	@echo "done."
		
doc:
	@echo "Running doxygen..."
	@rm -rf doc
	@mkdir doc
	doxygen doxygen.conf
	@cd doc/latex; make pdf; cp refman.pdf ../../Documentation.pdf 
	@cd ../..
	@rm -rf doc
	@echo "done."
	
	
