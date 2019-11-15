// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


// selects R0

// EDGE CASES

  @R0
  D=M
  @INPUT0
  D;JEQ
  @R1
  D=M
  @INPUT0
  D;JEQ
  @adder
  M=D

(LOOP)
  @R0
  M=M-1
  D=M
  @FILL
  D;JEQ
  @adder
  D=M
  @R1
  M=M+D
  @LOOP
  D;JGT

(FILL)
  @R1
  D=M
  @R2
  M=D
  @END
  0;JEQ

(INPUT0)
  @R2
  M=0
  @END
  0;JMP
(END)
  @END
  0;JMP  //


// selects R1
// Loops R1 times R0 plus itself
  //
// Stores the information in R2
// Loops end
