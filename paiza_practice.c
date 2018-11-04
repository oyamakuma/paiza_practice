#include <stdio.h>

typedef enum Bool {
    False,
    True
} Bool;

Bool is_leap_year(int);

int main(void) {
    int argc = '\0';
    int year = '\0';

    scanf("%d", &argc);

    for (int index = 0; index < argc; index++) {
        scanf("%d", &year);
        if (is_leap_year(year)) {
            printf("%d is a leap year\n", year);
        } else {
            printf("%d is not a leap year\n", year);
        }
    }

    return 0;
}

Bool is_leap_year(int year) {
    if (year % 4 != 0) {
        return False;
    } else if (year % 100 != 0 || year % 400 == 0) {
        return True;
    }
    return False;
}
