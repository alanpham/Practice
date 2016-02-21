/*
    My implementation of a stack data structure using a linked list.
    Code by Alan Pham
*/

#include <iostream>

template <class T>
class Stack{
    struct Node{
        T data;
        Node *next;
    };
    size_t size;
    Node *head;
    T *data;
public:
    Stack();
    void push(T);
    T& pop();
    T& peek();
    bool isEmpty();
    void clear();
};

template <class T> Stack<T>::Stack() : size(0), head(NULL), data(new T()){
}

template <class T> void Stack<T>::push(T data){
    size++;
    head->data = data;
    head->next = NULL;
}

template <class T> T & Stack<T>::pop(){
    T a;
    if (size == 0){
        return -1;
    }
    return a;
}

template <class T> T & Stack<T>::peek(){
    if (size == 0)
        return -1;
    return head->data;
}

template <class T> bool Stack<T>::isEmpty(){
    return size == 0;
}

template <class T> void Stack<T>::clear(){
}

int main(){
    Stack<double> stk;
    stk.push(12.0);
    return 0;
}