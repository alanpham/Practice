/*
    My implementation of a stack data structure using a linked list.

    stack.cpp
    
    @author Alan Pham
    @version 1.0
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
public:
    Stack();
    void push(T);
    T& pop();
    T& peek();
    bool isEmpty();
};

//Constructor.
template <class T> Stack<T>::Stack() : size(0), head(NULL){
}

/*
    Adds node to the top of the stack.

    @param data data for the new node.
 */
template <class T> void Stack<T>::push(T data){
    Node * newHead = new Node;

    if (size == 0){
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

/*
    Pops the top of the stack.

    @return the last node in the stack.
 */
template <class T> T & Stack<T>::pop(){
    Node * newHead = new Node;
    Node * temp = new Node;
    temp = head;
    
    if(size==1){
        size--;
        return head->data;
    }
    else{
        newHead->data = head->next->data;
        newHead->next = head->next->next;
    }

    size--;
    head = newHead;
    return temp->data;
}

/* 
    Checks the head (first element) of the stack.

    @return the head of the stack.
 */
template <class T> T & Stack<T>::peek(){
    return head->data;
}

/*
    Checks if the stack is empty.

    @return true if size is 0.
 */
template <class T> bool Stack<T>::isEmpty(){
    return size == 0;
}

int main(){
    Stack<double> stk;
    stk.push(12);
    stk.push(13);
    stk.push(14);
    stk.push(15);
    std::cout << "STACK 1" << std::endl;
    std::cout << "pop " << stk.pop() << std::endl;
    std::cout << "pop " << stk.pop() << std::endl;
    std::cout << "peek " << stk.peek() << std::endl;
    std::cout << "peek " << stk.peek() << std::endl;
    std::cout << "peek " << stk.peek() << std::endl;
    std::cout << "pop " << stk.pop() << std::endl;    

    return 0;
}
