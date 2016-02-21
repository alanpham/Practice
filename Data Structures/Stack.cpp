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

template <class T>
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

template <class T>
Stack::Stack(){
}

template <class T>
void Stack::push(int num){
}

template <class T>
int Stack::pop(){
    return 0;
}

template <class T>
int Stack::peek(){
    return 0;
}

template <class T>
bool Stack::isFull(){
    return false;
}

template <class T>
bool Stack::isEmpty(){
    return false;
}

template <class T>
void Stack::resize(){
}

template <class T>
void Stack::clear(){
}

template <class T>
int main(){
    return 0;
}