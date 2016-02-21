/*
    My implementation of a stack data structure.
    List of need functions:
        push();
        pop();
        peek();
        isFull();
        isEmpty();
        clear();
*/
#include <iostream>

class Stack{

public:
    Stack();
    void push(int);
    int pop();
    int peek();
    bool isFull();
    bool isEmpty();
    void resize();
    ~Stack();
};

Stack::Stack(){
}

void Stack::push(int num){
}

int Stack::pop(){
    return 0;
}

int Stack::peek(){
    return 0;
}

bool Stack::isFull(){
    return false;
}

bool Stack::isEmpty(){
    return false;
}

void Stack::resize(){
}

void Stack::clear(){
}

int main(){
    return 0;
}