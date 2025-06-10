import math
import numpy as np

print("Level 1")
for A in range(1, 10):
    for B in range(1, 10):
        for C in range(1, 10):
            for D in range(1, 10):
                for E in range(1, 10):
                    if A == 2 * B and B % 3 == 0 and C == A + 1 and D % 3 == 0 and E % B == 2:
                        print(A, B, C, D, E)

print("Level 2")
for A in range(0, 10):
    for B in range(0, 10):
        for C in range(0, 10):
            for D in range(0, 10):
                for E in range(0, 10):
                    if (
                        A == (B // 2) and
                        A != math.sqrt(3**2 + 4**2) - abs(math.sqrt(13**2 - 12**2)) and
                        B % 3 == 0 and
                        C == A + 1 and
                        D % 3 == 0 and
                        E == A * D - B * C
                    ):
                        print(A, B, C, D, E)


print("Level 3")
for A in range(0, 10):
    for B in range(0, 10):
        for C in range(0, 10):
            for D in range(0, 10):
                for E in range(0, 10):
                    # Condition 0: All digits must be different.
                    if len(set([A, B, C, D, E])) == 5:
                        
                        # Compute determinant of a 2x2 matrix
                        matrix = np.array([[A, C], [E, D]])
                        det = round(np.linalg.det(matrix))  # Round due to floating-point error

                        # Constraint: A must be equal to that determinant
                        if A == det:
                            
                            # Constraint: B must be A + E
                            if B == A + E:
                                
                                # Constraint: C < D
                                if C < D:
                                    
                                    # Constraint: Sum must equal 21
                                    if A + B + C + D + E == 21:
                                        
                                        # Check if D is factorial(C) minus a prime in [2, 3, 5, 7]
                                        fact_C = math.factorial(D-1)
                                        prime_diffs = [fact_C - p for p in [2, 3, 5, 7]]

                                        if D in prime_diffs and C % A == 1:
                                            
                                            print(A, B, C, D, E)


print("Level 4")
for A in range(1, 10):
    for B in range(1, 10):
        for C in range(1, 10):
            for D in range(1, 10):
                for E in range(0, 10):
                    # We must always check that all 5 digits are different.
                    if len(set([A, B, C, D, E])) == 5:
                        if (
                            # A is the smallest prime number.
                            A == 2 and
                            # A, B, and C form a geometric progression (e.g., 2, 4, 8).
                            B / A == C / B and
                            # The product of B and E is 28.
                            B * E == 28 and
                            # D is the difference between the largest and smallest of the first three numbers (A, B, C).
                            D == max(A, B, C) - min(A, B, C) and
                            # The sum of all five digits is a multiple of 9.
                            (A + B + C + D + E) % 9 == 0
                        ):
                            print(A, B, C, D, E)
