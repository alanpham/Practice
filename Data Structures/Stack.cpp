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
    int *data;
    int top;
    int capacity;
public:
    Stack();
    void push(int);
    int pop();
    int peek();
    bool isFull();
    bool isEmpty();
    void resize();
    void clear();
};

Stack::Stack(){
    capacity = 16;
    top = -1;
    data = new int[capacity];
}

void Stack::push(int num){
    if (top == -1)
        return -1;

    top++;
    if (top == capacity)
        resize();

    data[top] = num;
}

int Stack::pop(){
    if (top == -1)
        return -1;

    int result = data[top];
    data[top] = 0;
    top -= 1;

    return result;
}

int Stack::peek(){
    return data[top];
}

bool Stack::isFull(){
    if (top == capacity)
        return true;

    return false;
}

bool Stack::isEmpty(){
    if (top == 0)
        return true;

    return false;
}

void Stack::resize(){

}

void Stack::clear(){
}

int main(){
    Stack *stk = new Stack();
    stk.push(1);
    stk.push(2);
    stk.push(3);


    return 0;
}