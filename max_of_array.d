import std.stdio;
import std.array;
import std.string;
import std.conv;

void main() {
    write("input data: ");
    string inputStr = readln().chomp();
    auto theArray = split(inputStr);
    int minimum, maximum, intNum;
    foreach(string strNum; theArray) {
        intNum = strNum.to!int;
        if(intNum < minimum) {
            minimum = intNum;
        }
        if(intNum > maximum) {
            maximum = intNum;
        }
    }
    writef("%d %d\n", maximum, minimum);
}