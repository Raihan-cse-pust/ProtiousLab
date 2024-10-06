void main(void) {

    TRISB = 0x00;
    PORTB.RB0 = 0x00;    // Set RB0 as output (for controlling the relay)


    while(1) {
        // Turn ON relay
        PORTB.RB0 = 0xff;  // Set RB0 HIGH to activate relay
        delay_ms(1000);   // Wait for 1 second

        // Turn OFF relay
        PORTB.RB0 = 0x00;  // Set RB0 LOW to deactivate relay
        delay_ms(1000);   // Wait for 1 second
    }
}