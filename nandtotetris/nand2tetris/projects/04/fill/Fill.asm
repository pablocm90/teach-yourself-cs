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
D = A
@counter
M = D

(BLACKLOOP)
  @counter
  D = M
  @SCREEN
  A = A + D
  M = -1
  @counter
  M = M - 1
  D = M
  @BLACKLOOP
  D;JGE
  @CHECK
  D;JLT




(WHITE)
@SCREEN
D=M
@CHECK
D;JEQ

@8192
D = A
@counter
M = D

(WHITELOOP)
  @counter
  D = M
  @SCREEN
  A = A + D
  M = 0
  @counter
  M = M - 1
  D = M
  @WHITELOOP
  D;JGE
  @CHECK
  D;JLT
