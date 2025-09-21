///
// DO NOT MODIFY THIS FILE!
///

#include "hw16.h"

int main(int argc, char** argv)
{
    if (argc < 4)
    {
        return EXIT_FAILURE;
    }
    
    // option 1: compress the input file
    if (*argv[1] == '1')
    {
        // argv[2] = input filename (should be .txt file)
        if (strstr(argv[2], ".txt") == NULL)
        {
            printf("Incorrect file type");
            return EXIT_FAILURE;
        }
        // argv[3] = output filename (should be .bin file)
        if (strstr(argv[3], ".b") == NULL)
        {
            printf("Incorrect file type");
            return EXIT_FAILURE;
        }

        int success = compress(argv[2], argv[3]);
        if (!success)
        {
            printf("Compression unsuccessful");
            return EXIT_FAILURE;
        }

        // check the size of the output file
        FILE *output = fopen(argv[3], "rb");
        if (output == NULL)
        {
            printf("Cannot open output file");
            return EXIT_FAILURE;
        }
        fseek(output, 0, SEEK_END);
        int size = ftell(output);
        printf("%d\n", size);
    }
    // option 2: decompress the input file
    else if (*argv[1] == '2')
    {
        //argv[2] = input filename (should be .bin file)
        if (strstr(argv[2], ".b") == NULL)
        {
            printf("Incorrect file type");
            return EXIT_FAILURE;
        }
        // argv[3] = huffman tree file (should be .bin file)
        if (strstr(argv[3], ".b") == NULL)
        {
            printf("Incorrect file type");
            return EXIT_FAILURE;
        }
        // argv[4] = output file (should be .txt file)
        if (strstr(argv[4], ".txt") == NULL)
        {
            printf("Incorrect file type");
            return EXIT_FAILURE;
        }

        int success = decompress(argv[2], argv[3], argv[4]);
        if (!success)
        {
            return EXIT_FAILURE;
        }

    }
}
