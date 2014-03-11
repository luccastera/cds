/********************************************************************************
 *
 * ---------------------------------- stack.c ----------------------------------*
 *
 *******************************************************************************/

#include <stdlib.h>

#include "list.h"
#include "stack.h"

int stack_push(Stack *stack, const void *data) {
  // push the data onto the stack
  return list_ins_next(stack, NULL, data);
}

int stack_pop(Stack *stack, void **data) {
  // pop the data of the stack
  return list_rem_next(stack, NULL, data);
}

