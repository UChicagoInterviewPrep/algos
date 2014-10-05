/* AUTHOR: Jonathan Jin
 *
 * TASK: Reverse a linked list in linear time, with constrained memory, no second container allowed. 
 */

#include <stdio.h>
#include <stdlib.h>

typedef struct int_llist {
  int val;
  struct int_llist *next;
} int_llist;

void int_llist_reverse(int_llist *list) {
  int_llist *prev = NULL;
  int_llist *next = NULL;

  while (list != NULL) {
    next       = list->next;
    list->next = prev;
    prev       = list;

    list = next;
  }

  list = prev;

  return;
}


/* testing stuff, can disregard */

void int_llist_printf(int_llist *list) {
  int_llist *node_curr = list;

  while (node_curr != NULL) {
    printf("%d ", node_curr->val);
    node_curr = node_curr->next;
  }
  putchar('\n');

  return;
}

int main() {
  int_llist *list        = malloc(sizeof(int_llist));
  list->val              = 1;
  list->next             = malloc(sizeof(int_llist));
  list->next->val        = 2;
  list->next->next       = malloc(sizeof(int_llist));
  list->next->next->val  = 3;
  list->next->next->next = NULL;

  int_llist_reverse(list);
  int_llist_printf(list);

  
}
