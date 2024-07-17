#include<stdio.h>
#include<stdlib.h>

int main() {
    int i, n, packet_index, no_ack, windowsize, sent;
    printf("The number of packets: ");
    scanf("%d", &n);
    printf("Enter window size: ");
    scanf("%d", &windowsize);

    sent = 1;
    while (sent <= n) {
        printf("Sending packets from %d to %d\n", sent, windowsize + sent - 1);
        for (i = 0; i < windowsize; i++) {
            packet_index = sent + i;
            if (packet_index > n) break;
            printf("Transmission packet %d\n", packet_index);
        }
        no_ack = sent + rand() % windowsize;
        if (no_ack == sent) {
            printf("Acknowledged=%d\n", windowsize + sent);
            sent += windowsize;
            continue;
        }
        printf("NACK=%d\n", no_ack);
        printf("Sending packet %d\n", no_ack);
        printf("Acknowledged=%d\n", no_ack + 1);
        printf("Acknowledged=%d\n", windowsize + sent);
        sent += windowsize;
    }
    return 0;
}
