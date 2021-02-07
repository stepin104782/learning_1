# Name of the project
PROJECT_NAME = additiion

# Output directory
BUILD = build

# All include folders with header files
INC	= -Iinc

# All source code files
SRC = src/learning_1.c
#Test files

#test header
TS_H= $(INC)\
-Iunity\
-Itest
# All test source files
TEST_SRC = test/test_main.c\
test/test_add.c
unity/unity.c 


TEST_OUTPUT = $(BUILD)/Test_$(PROJECT_NAME).out




PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out



# Default target built
$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run test doc clean all

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out -lm

# Call `make run` to run the application
run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT).out


# Build and run the unit tests
test:$(BUILD)
	gcc $(TEST_SRC) $(TS_H) -o $(TEST_OUTPUT) -lm
	./$(TEST_OUTPUT)

# Remove all the built files, invoke by `make clean`
clean:
	rm -rf $(BUILD) $(DOCUMENTATION_OUTPUT)

# Create new build folder if not present
$(BUILD):
	mkdir build
