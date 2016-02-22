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

template <class T> Queue<T>::Queue() : size(0), head(NULL), tail(NULL){    
}

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

template <class T> T& Queue<T>::front(){
    return head->data;
}

template <class T> T& Queue<T>::back(){
    return tail->data;
}

template <class T> bool Queue<T>::isEmpty(){
    return size == 0;
}

template <class T> size_t Queue<T>::getSize(){
    return size;
}

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