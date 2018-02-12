//
//  main.m
//  Endereco e Ponteiro
//
//  Created by Eduardo Vital Alencar Cunha on 13/03/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

#import <Foundation/Foundation.h>

void dumbSort(int *ptr, int len) {
    for (int i = 0; i < (len - 1); i++) {
        if (ptr[i] > ptr[i+1]) {
            int aux = ptr[i];
            ptr[i] = ptr[i+1];
            ptr[i+1] = aux;
            i = -1;
        }
    }
}

void printArray(int *arr, int len) {
    for (int i = 0; i < len; i++) {
        printf("%d ", arr[i]);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int *arrayPtr = NULL;
        int len = 5; // Array size

        arrayPtr = (int *) malloc(len * sizeof(int));

        for (int i = 0; i < len; i++) {
            arrayPtr[i] = arc4random_uniform(100);
        }

        dumbSort(arrayPtr, len);
        printArray(arrayPtr, len);
        free(arrayPtr);
    }
    return 0;
}
