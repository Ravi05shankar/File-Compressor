all : archive extract

archive : compressor.cpp
	g++ -std=c++14 compressor.cpp -o archive

extract : decompressor.cpp
	g++ -std=c++14 decompressor.cpp -o extract

clean :
	@rm -f archive
	@rm -f extract

.PHONY : all clean
