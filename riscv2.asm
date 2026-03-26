.text
.globl main

main:
    # ===== x0 (zero) Demo =====
    li t0, 100            # t0 = 100
    add t1, t0, x0        # t1 = t0 + 0 = 100
    
    # ===== Temporary Registers (t0-t2) =====
    li t0, 5              # t0 = 5
    li t1, 3              # t1 = 3
    add t2, t0, t1        # t2 = 5 + 3 = 8
    mul t3, t0, t1        # t3 = 5 * 3 = 15
    
    # ===== Function Call =====
    li a0, 10             # Argument 1
    li a1, 20             # Argument 2
    jal ra, add_function  # Function call
    
    # Result a0 mein hai
    mv s0, a0             # s0 = result (save karo)
    
    # Exit
    li a7, 10
    ecall

# ===== Simple Function =====
add_function:
    add a0, a0, a1        # a0 = a0 + a1
    ret                   # Return