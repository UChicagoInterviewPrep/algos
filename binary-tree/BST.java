public class BST {
    public static Integer last_printed = null;
    public static boolean checkBST(TreeNode n) {
	if (n == null) return true;

	// Check / recurse left
	if (!checkBST(n.left)) return false;

	// Check current
	if (last_printed != null && n.data <= last_printed) {
	    return false;
	}
	last_printed = n.data;

	// Check / recurse right
	if (!checkBST(n.right)) return false;

	return true; // All good!
    }
}
