#include <stdio.h>
#include <string.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

#define NUM_QUESTIONS 1
#define NAME "mario sieg"

static const char* const QUESTIONS[NUM_QUESTIONS] = {
    "Question"
};

static const char* const ANSWERS[NUM_QUESTIONS] = {
    "Answer"
};

static inline void Reverse(void* const _buf, const size_t _size) {
    register uint8_t* restrict lo = (uint8_t*)_buf;
    register uint8_t* restrict hi = lo + _size - 1;
    register uint8_t tmp;
    while (lo < hi) {
        tmp = *lo;
        *lo++ = *hi;
        *hi-- = tmp;
    }
}

int main(const int _argc, const char* const* const _argv) {
    (void)_argc, (void)_argv;
    char line[0xFF];
    for(register unsigned i = 0; i < NUM_QUESTIONS; ++i) {
        const char* const question = QUESTIONS[i];
        const char* const answer = ANSWERS[i];
        printf("%s?\n", question);
        register _Bool correct = 0;
        do {
            memset(line, 0, sizeof line);
            FILE* const input = stdin;
            fgets(line, sizeof line, input);
            correct = !strncmp(line, answer, strlen(answer));
            if (!correct) {
                printf("Leider ist die Antwort falsch :(\n");
            }
        } while(!correct);
    }
    printf("Yay! Ihr habt es geschafft!\n");
    const char name[] = NAME;
    Reverse((void*)&name[0], sizeof(name) - 1);
    printf("Euer neuer Ansprechpartner ist: %s\n", name);
    return 0;
}
