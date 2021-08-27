#include <stdio.h>
#include <string.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

#define NUM_QUESTIONS 1
#define NAME "MARIO SIEG"

static const char* const QUESTIONS[NUM_QUESTIONS] = {
    "Q"
};

static const char* const ANSWERS[NUM_QUESTIONS] = {
    "A"
};

int main(const int _argc, const char* const* const _argv) {
    (void)_argc, (void)_argv;
    char line[0xFF];
    for(register size_t i = 0; __builtin_expect(i < NUM_QUESTIONS, 1); ++i) {
        const char* const question = QUESTIONS[i];
        const char* const answer = ANSWERS[i];
        printf("%s?\n", question);
        register _Bool correct = 0;
        do {
            memset(line, 0, sizeof line);
            FILE* const input = stdin;
            fgets(line, sizeof line, input);
            correct = __builtin_expect(!strncmp(line, answer, strlen(answer)), 0);
            if (__builtin_expect(!correct, 0)) {
                printf("Leider ist die Antwort falsch :(\n");
            }
        } while(__builtin_expect(!correct, 1));
    }
    printf("Yay! Ihr habt es geschafft!\n");
    const char name[] = NAME;
    printf("Euer neuer Ansprechpartner ist: ");
    register const char* letter = name;
    register const char* end = name + sizeof(name);
    for (; __builtin_expect(letter < end, 1); ++letter) {
        if (__builtin_expect(*letter != ' ' && *letter != '\0', 1)) {
            printf("%d ", *letter - 'A' + 1);
        }
    }
    for(;;);
    return 0;
}
