// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.




(CHECK)
  @24576
  M=A
  D=M // Check if key is pressed
  @BLACK // yes ? -> Go to Black Loop
  D;JNE
  @WHITE
  D;JEQ // no ? -> Go to White Loop

(BLACK)
@SCREEN
D=M
@CHECK
D;JLT

@8192
M = A
D = M
@SCREEN
D = A + D
A = D

(BLACKLOOP)
D = D - 1
A = D
M = -1

@BLACKLOOP
D;JGT
@CHECK
D;JEQ


(WHITE)
@SCREEN
D=M
@CHECK
D;JEQ
@8192
M = A
D = M
@SCREEN
D = A + D
A = D
(WHITELOOP)
D = D - 1
A = D
M = 0

@WHITELOOP
D;JGT
@CHECK
D;JEQ
// Iterate on each row
// Whiten the row
