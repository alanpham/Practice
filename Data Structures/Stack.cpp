/*
    My implementation of a stack data structure using a linked list.
    Code by Alan Pham
*/

#include <iostream>

template <class T>
class StackLL{
    struct Node{
        T data;
        Node *next;
    };
    size_t size;
    Node *head;
    T *data;
public:
    StackLL();
    void push(T);
    T& pop();
    T& peek();
    bool isEmpty();
    void clear();
};

template <class T> StackLL<T>::StackLL() : size(0), head(NULL), data(new T()){
}

template <class T> void StackLL<T>::push(T data){
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

template <class T> T & StackLL<T>::pop(){
    Node * newHead = new Node;
    Node * temp = new Node;
    temp = head;

    if (head->next == NULL){
        /*return -1;*/
    }
    else{
        newHead->data = head->next->data;
        newHead->next = head->next->next;
    }

    size--;
    head = newHead;

    return temp->data;
}

template <class T> T & StackLL<T>::peek(){
    return head->data;
}

template <class T> bool StackLL<T>::isEmpty(){
    return size == 0;
}

template <class T> void StackLL<T>::clear(){
}

int main(){
    StackLL<double> stk;
    stk.push(12);
    stk.push(13);
    stk.push(14);
    std::cout << "STACK 1" << std::endl;
    double temp = stk.pop();
    std::cout << temp << std::endl;
    temp = stk.pop();
    std::cout << temp << std::endl;
    std::cout << stk.peek() << std::endl;
    std::cout << stk.peek() << std::endl;
    std::cout << stk.peek() << std::endl;
    std::cout << stk.pop() << std::endl;    

    StackLL<int> stk2;
    stk2.push(1);
    stk2.push(2);
    stk2.push(3);
    std::cout << "STACK 2" << std::endl;
    double temp2 = stk2.pop();
    std::cout << temp2 << std::endl;
    temp2 = stk2.pop();
    std::cout << temp2 << std::endl;
    std::cout << stk2.peek() << std::endl;
    std::cout << stk2.peek() << std::endl;
    std::cout << stk2.peek() << std::endl;
    std::cout << stk2.pop() << std::endl;

    return 0;
}