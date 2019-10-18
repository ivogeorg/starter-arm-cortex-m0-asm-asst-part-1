// A function that returns its
// argument negated
int negate(int a) {
    return (-1) * a;
}

// Every program in the C language always starts in the 'main()' function
int main() {
    int value = 6;

    // Calling another function will
    // cause a new stack frame to be
    // set up for it
    if (value > 0)
        value = negate(value);

    return 0;
}
