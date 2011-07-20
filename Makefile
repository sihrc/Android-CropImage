QUILT = quilt

all: apply


apply:
	$(QUILT) push -a


unapply:
	$(QUILT) pop -a


.PHONY: all apply unapply
