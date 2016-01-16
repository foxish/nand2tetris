// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

(LOOP)

@8192
D=A

@i
M=D

// above 2 steps set the value of i

@SCREEN
D=A

@pos
M=D

// above 2 steps set pos

@24576
D=M

// check that a key is pressed.
@BLACKALL
D;JEQ

@WHITEALL
D;JMP

(END)
@END
0; JMP

(BLACKALL)

@i
D=M

@LOOP
D;JEQ

@pos
A=M
M=0

@pos
M=M+1

@i
M=M-1

@BLACKALL
0;JMP


// PART2

(WHITEALL)

@i
D=M

@LOOP
D;JEQ

@pos
A=M
M=-1

@pos
M=M+1

@i
M=M-1

@WHITEALL
0;JMP
