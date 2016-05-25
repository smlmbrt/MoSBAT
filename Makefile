MAKE = make		#change this line if you are using a different GNU make software

dirAffiMx = ./src/AffiMx

all: MK_dir CC_AffiMx RM_objectFiles

MK_dir:
	mkdir -p ./bin

CC_AffiMx: $(dirAffiMx)/Makefile
	$(MAKE) -C $(dirAffiMx)
	
RM_objectFiles:
	rm -f $(dirAffiMx)/*.o

clean:
	rm -f $(dirAffiMx)/*.o
