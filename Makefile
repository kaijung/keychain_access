TARGET = keychain_access

CXXFLAGS  = -pipe -Wall -pedantic 
SRC_FILES = $(wildcard *.cc)
O_FILES   = $(SRC_FILES:%.cc=%.o)
LIBS      = -framework Security


all: $(TARGET)

$(TARGET): $(O_FILES)
	g++ $(O_FILES) -o $(TARGET) $(LIBS)

clean:
	rm -f *.o $(TARGET)

run: $(TARGET)
	./$(TARGET)
