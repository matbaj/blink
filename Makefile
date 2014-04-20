DEVICE     = attiny85
CLOCK      = 16000000
OBJECTS    = main.o


COMPILE = avr-gcc -Wall -Os -DF_CPU=$(CLOCK) -mmcu=$(DEVICE)
 
all: main.hex
 
.c.o:
	$(COMPILE) -c $< -o $@
 
.S.o:
	$(COMPILE) -c $< -o $@

.c.s:
	$(COMPILE) -S $< -o $@

flash:  all
	ruby ./micronucleus/ruby/upload.rb main.hex

clean:
	rm -f main.hex main.elf $(OBJECTS) *~
 
main.elf: $(OBJECTS)
	$(COMPILE) -o main.elf $(OBJECTS)
 
main.hex: main.elf
	rm -f main.hex
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
 