prog: main.cpp
	g++ -Wall -g -o prog main.cpp

test: prog
	./prog < in.txt > out.txt
	diff -abBw out.txt ref.txt && echo "Passed a simple test"

clean:
	rm -f prog out.txt
