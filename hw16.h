#ifndef __HUFFMAN_3_H__
#define __HUFFMAN_3_H__

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdint.h>

typedef struct __HTree {
    struct __HTree *left;
    struct __HTree *right;
    unsigned int frequency;
    char data;
} HTree;

typedef struct __QueueNode {
    struct __QueueNode *next;
    HTree *data;
} QueueNode;

typedef struct __PriorityQueue {
    QueueNode *head;
} PriorityQueue;


// functions to implement
int compress(char*, char*);
int decompress(char*, char*, char*);

#endif
