/*
    Creates a Queue so that I can practice my C++.
    
	Practice: queue.cpp

	@author Alan Pham
	@version 1.0
 */

#include <iostream>

template <class T> class Queue{
    struct node{
        T data;
        node *next;
    };
    size_t size;
    node *head;
    node *tail;
public:
    Queue();
    void push (T);
    T& pop();
    T& front();
    T& back();
    bool isEmpty();
    size_t getSize();
};

// Constructor
template <class T> Queue<T>::Queue() : size(0), head(NULL), tail(NULL){    
}

/*
    Adds new node to the queue.

    @param data the data added to the queue.
 */
template <class T> void Queue<T>::push (T data){
    node * newNode = new node;

    newNode->data = data;
    newNode->next = NULL;

    if (size == 0){
        head = newNode;
        tail = newNode;
    }
    else{
        tail->next = newNode;
        tail = newNode;
    }
        size++;
}

/*
    Returns the first node in the queue.

    @return The first node in the queue.
 */
template <class T> T& Queue<T>::pop(){

    node * temp = new node;

    if (size == 1){
        size--;
        return head->data;
    }
    else{
        temp = head;
        head = head->next;
    }

    size--;

    return temp->data;
}

/*
    Returns the front of the queue.

    @return the first node in the queue.
 */ 
template <class T> T& Queue<T>::front(){
    return head->data;
}

/*
    Returns the last node in the queue.

    @return the last element in the queue.
 */
template <class T> T& Queue<T>::back(){
    return tail->data;
}

/*
    Checks if the queue is empty.

    @return true if the size of queue is 0.
 */
template <class T> bool Queue<T>::isEmpty(){
    return size == 0;
}

/*
    Checks the size of the queue.

    @return the size of the queue.
 */
template <class T> size_t Queue<T>::getSize(){
    return size;
}

//Controls the operation of the program.
int main(){
    Queue<double> q;
    q.push(1);
    q.push(2);
    q.push(3);
    std::cout << "SIZE: " << q.getSize() << std::endl;
    std::cout << "FRONT: " << q.front() << std::endl;
    std::cout << "BACK: " << q.back() << std::endl;
    std::cout << "POP: " << q.pop() << std::endl;
    std::cout << "POP: " << q.pop() << std::endl;
    std::cout << "POP: " << q.pop() << std::endl;
    return 0;
}