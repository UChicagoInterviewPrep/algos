def rotate_matrix(matrix):
    # assuming square matrix
    n = len(matrix)
    '''
    1 2 3    7 4 1
    4 5 6 => 8 5 2
    7 8 9    9 6 3
    '''
    # transposing matrix across diagonal line
    for i in range(n):
        for j in range(i+1, n):
            tmp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = tmp
            
    # swapping columns of matrix
    for i in range(n/2):
        for j in range(n):
            tmp = matrix[j][i]
            matrix[j][i] = matrix[j][n - i - 1]
            matrix[j][n - i - 1] = tmp


def simpler_rotate(matrix):
    # generating new matrix
    n = len(matrix)
    new_matrix = [[0 for l in range(n)] for k in range(n)]
    for i in range(n):
        for j in range(n):
            new_matrix[j][n-1-i] = matrix[i][j]
    return new_matrix

def print_matrix(matrix):
    for row in matrix:
        print row

        
def main():
    matrix = [[1,2,3],
              [4,5,6],
              [7,8,9]]

    print 'initial matrix'
    print_matrix(matrix)

    rotate_matrix(matrix)
    print 'final matrix'
    print_matrix(matrix)

if __name__ == '__main__':
    main()
