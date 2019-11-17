#include <stdio.h>
#include <stdlib.h>

#define PAGE_TABLE_SIZE 2097152

typedef struct
{
    int valid;
    int dirty;
} page_t;

unsigned get_addr_shift(unsigned page_size_kb)
{
    unsigned tmp = page_size_kb * 1024;
    unsigned addr_shift = 0;
    while (tmp > 1)
    {
        tmp = tmp >> 1;
        addr_shift++;
    }
    return addr_shift;
}

unsigned get_addr_page(unsigned addr, unsigned addr_shift)
{
    return addr >> addr_shift;
}

int get_swapped_page(page_t *page_table, char *swap_strategy)
{
    for (int i = 0; i < PAGE_TABLE_SIZE; i++)
    {
        if (page_table[i].valid)
        {
            return i;
        }
    }
    return -1;
}

int main(int argc, char *argv[])
{
    printf("Executando o simulador...\n");

    char *swap_strategy = argv[1];
    char *addr_file_name = argv[2];
    int page_size_kb = atoi(argv[3]);
    int mem_size_kb = atoi(argv[4]);

    printf("Arquivo de entrada: %s\n", addr_file_name);
    printf("Tamanho da memoria: %d KB\n", mem_size_kb);
    printf("Tamanho das páginas: %d KB\n", page_size_kb);
    printf("Tecnica de reposicao: %s\n", swap_strategy);

    page_t *page_table = malloc(PAGE_TABLE_SIZE * sizeof(page_t));
    for (int i = 0; i < PAGE_TABLE_SIZE; i++)
    {
        page_table[i].valid = 0;
        page_table[i].dirty = 0;
    }

    FILE *addr_file = fopen(addr_file_name, "r");

    int page_faults = 0;
    int dirty_writes = 0;

    int frames_total = mem_size_kb / page_size_kb;
    int frames_filled = 0;

    unsigned addr;
    char rw;
    unsigned addr_shift = get_addr_shift(page_size_kb);
    unsigned addr_page;
    unsigned swapped_page;
    while (!feof(addr_file))
    {
        fscanf(addr_file, "%x %c", &addr, &rw);
        addr_page = get_addr_page(addr, addr_shift);

        if (rw == 'W')
        {
            page_table[addr_page].dirty = 1;
        }

        if (page_table[addr_page].valid)
        {
            continue;
        }

        page_faults++;

        if (frames_filled < frames_total)
        {
            page_table[addr_page].valid = 1;
            frames_filled++;
            continue;
        }

        swapped_page = get_swapped_page(page_table, swap_strategy);
        if (page_table[swapped_page].dirty)
        {
            dirty_writes++;
        }
        page_table[swapped_page].valid = 0;
        page_table[swapped_page].dirty = 0;

        page_table[addr_page].valid = 1;
    }

    printf("Paginas lidas: %d\n", page_faults);
    printf("Paginas escritas: %d\n", dirty_writes);

    fclose(addr_file);
    free(page_table);

    return 0;
}