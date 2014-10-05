/* AUTHOR: Jonathan Jin
 *
 * TASK: Check if a binary tree is a binary search tree.
 */

typedef struct tree {
    int value;
    struct tree *branch_l;
    struct tree *branch_r;
} tree;

int tree_is_valid(tree *node) {
    /* 1. L & R
       2. L & !R
       3. R & !L
       4. !L & !R */
    int is_populated_l = node->branch_l != NULL;
    int is_populated_r = node->branch_r != NULL;
    
    if (!is_populated_l && !is_populated_r || is_empty_tree(node)) {
        return 1;

    } else if (!is_populated_l && is_populated_r) {
        return node->value <= node->branch_r->value
            && tree_is_vald(node->branch_l);

    } else if (is_populated_l && !is_populated_r) {
        return node->value > node->branch_l->value 
            && tree_is_vald(node->branch_r);

    } else {
        return node->value > node->branch_l->value 
            && node->value <= node->branch_r->value
            && tree_is_vald(node->branch_l)
            && tree_is_vald(node->branch_r);
    }
}
