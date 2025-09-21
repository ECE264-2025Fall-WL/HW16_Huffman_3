# HW 16 - Huffman Compression 3
This is the last of three homeworks on Huffman Compression. In this homework you will be using the functions you wrote in HW14 and HW15 to compress and decompress text and binary files. The functions you will need to implement are:
  1. int compress(char* input, char* output);
  2. int decompress(char* input, char* huffmanTree, char* output);

# Compressing a File with Huffman Compression
The compression function takes in two parameters:
  1. char *input - the input filename, this should be a text (.txt) file
  2. char *output - the output filename, this should be a binary (.b) file

This function should compress the data from the input file and store the compressed version of the data in the binary output file. If successful, compress should return 1, otherwise, return 0.

# Decompressing a Huffman Compressed File
The decompress function takes in three parameters:
  1. char *input - the input filename, this should be a binary (.b) file
  2. char *huffmanTree - the file that contains the huffman tree used to compress the data in the input file, this should be a binary file (.b)
  3. char *output - the output filename, this should be a text (.txt) file

This function should decode the data from the input file using the huffman tree provided and store the decompressed version of the data into the output text file. If successful, decompress should return 1, otherwise, return 0.

# Reading Binary Trees
Huffman trees are a type of binary tree and, therefore, can be stored in the same manner. As you may recall, binary trees can be written in three orders
  1. Preorder
  2. In order
  3. Postorder

In this assignment, the huffman tree is written in preorder so that is the one we will be focusing on. Preorder traversal follows the order
  1. Root
  2. Left
  3. Right

For example, in the following binary tree the preorder traversal would be [5, 6, 2, 1, 4]
<img width="960" height="720" alt="Untitled drawing (2)" src="https://github.com/user-attachments/assets/1a5318c1-0b8b-41bb-be5d-dadfe3e6c1f5" />

# Huffman Tree File
Each node of the huffman tree is written as

  [_data_,frequency]

If a node has no data (i.e. it is a parent node) then the data field will be empty and the node will look like this

  [,frequency]

There are no spaces or newlines in the tree files (unless a space is being stored as a piece of data). You can assume all the huffman tree files are valid. 

# Testing 
Four test cases have been provided to you, you can run each of them individually with the command
  make test#

or you can run them all at once with the command
  make testall

# Instructions
Implement
  1. int compress(char* input, char* output);
  2. int decompress(char* input, char* huffmanTree, char* output);

and turn in your hw16.c file to gradescope.
