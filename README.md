# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |


Lab Summary: 

In this lab we implemented D flipflop, T flipflop and JK flipflop. We first started with the  D flip flop where we implemented the begin block to fix the initial state Since the D flip flop, and we are using reg Q. Then we used the always block to set Q <= D at the positive edge of the clock cycle and then assigned NotQ = ~Q. After that we created a new filer to implenent the JK flip flop; in this file we create a wire called d_input and then assigned it with the JK flip flop logic which uses d_input = (~K & Q) | (J & NotQ) and then we instantiated an instance of the D flip flop so the inputs of JK flip flop were wired together. Then lastly in the T flip flop all we did was create an instantiation of the JK flip flop and set J and K to T so they are always the same value which then follows the same logic as a T flop flop. Then finally in the Top.v we wired all the switches, button and leds together and everything worked as intended. 

## Lab Questions

### What is different between edge and level sensitive circuits?

In level sensitive circuits the stored data can change whenever the clock is high but in edge sensitive circuits the input can fluctuate while the clock is high and the output will be the constant what ever value was stored when the clock value went from 0 to 1 (if it is positive edge sensitive).  

### Why is it important to declare initial state?

It ia important to declare an initial state because when the FPGA is programmed, it has no way of knowing the state of any of the various pieces of memory within. 

### What do edge sensitive circuits let us build?

Edge sensitive circuits let us build counters, frequency dividers with clocks, etc
