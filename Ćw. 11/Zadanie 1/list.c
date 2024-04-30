#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

#include "list.h"

static Node_t* createNode(int head)
{
    Node_t* node = (Node_t*)malloc(sizeof(Node_t));
    node->head = head;
    node->tail = NULL;
    return node;
}

Node_t* createList(unsigned int nodeCount, ...)
{
    va_list args;
    va_start(args, nodeCount);

    Node_t* head = NULL;
    Node_t* tail = NULL;

    for (unsigned int i = 0; i < nodeCount; i++)
    {
        int value = va_arg(args, int);
        Node_t* newNode = createNode(value);

        if (head == NULL)
        {
            head = newNode;
            tail = newNode;
        }
        else
        {
            tail->tail = newNode;
            tail = newNode;
        }
    }

    va_end(args);

    return head;
}

void push(Node_t* root, int value)
{
    Node_t* currentNode = root;

    if (currentNode != NULL)
    {
        while (currentNode->tail != NULL)
            currentNode = currentNode->tail;

        currentNode->tail = createNode(value);
    }
}

void printList(Node_t* root)
{
    Node_t* currentNode = root;

    while (currentNode != NULL)
    {
        printf("%d\n", currentNode->head);
        currentNode = currentNode->tail;
    }
}
