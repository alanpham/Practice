/*
    My implementation of a stack data structure using a linked list.
    Code by Alan Pham
*/

#include <iostream>
#include <stdexcept>

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
};

template <class T> Stack<T>::Stack() : size(0), head(NULL), data(new T()){
}

template <class T> void Stack<T>::push(T data){
    Node * newHead = new Node;
    if (head == NULL){
        newHead->data = data;
        newHead->next = NULL;
    } 
    else{
        newHead->data = data;
        newHead->next = head;
    }

    size++;
    head = newHead;
}

template <class T> T & Stack<T>::pop(){
    Node * newHead = new Node;
    Node * temp = new Node;
    temp = head;

    if (isEmpty()){
        throw std::invalid_argument("EMPTY STACK");
    }
    else if(size==1){
        size--;
        return head->data;
    }
    else{
        newHead->data = head->next->data;
        newHead->next = head->next->next;
    }

    size--;
    head = newHead;
    delete temp;
    return head->data;
}

template <class T> T & Stack<T>::peek(){
    return head->data;
}

template <class T> bool Stack<T>::isEmpty(){
    return size == 0;
}

int main(){
    try{
        Stack<double> stk;
        stk.push(12);
        stk.push(13);
        stk.push(14);
        std::cout << "STACK 1" << std::endl;
        double temp = stk.pop();
        std::cout << "pop " << temp << std::endl;
        temp = stk.pop();
        std::cout << "pop " << temp << std::endl;
        std::cout << "peek " << stk.peek() << std::endl;
        std::cout << "peek " << stk.peek() << std::endl;
        std::cout << "peek " << stk.peek() << std::endl;
        std::cout << "pop " << stk.pop() << std::endl;    
    }
    catch (const std::invalid_argument& e){
        throw e;
    }

    return 0;
}