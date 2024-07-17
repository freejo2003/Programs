#include<stdio.h>
#include<stdlib.h>

int main() {
    int i, n, ack, windowsize, sent;
    printf("The number of packets: ");
    scanf("%d", &n);
    printf("Enter window size: ");
    scanf("%d", &windowsize);

    sent = 0;
    while (1) {
        for (i = 0; i < windowsize; i++) {
            printf("Frame %d has been transmitted..\n", sent + 1);
            sent++;
            if (sent == windowsize) break;
        }
        ack = rand() % windowsize + 1;
        printf("Last acknowledgment received = %d\n", ack);
        if (ack == windowsize) break;
        else sent = ack;
    }
    return 0;
}
