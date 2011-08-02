A- Program description:

The program is written in C++ and includes five phases:

1. Parsing the input files to the internal structures. 

Class Module: represents the information for each input file. A module includes 
a list of functions. The fields header, footer presents the header, footer 
information of a file.  

Class Parser: have two functionalities: 
- Read from an input file (.s) and store the information into a coresponding module.
- Write the information of a Module to an output file.

Classes Function, BasicBlock, Instruction store the information of functions, 
basicblocks, instructions within a Module. Parser will scan through the input 
file, split the Module representing the input file into a list of functions. 
Parser also detects the branching instructions and based on the information of the 
instructions, to split a function into a list of basic blocks. The list of labels
attached to each basic block will also be created through parsing process. 

File InstructionInfo.h contain the information of MIPS instructions.

Class Tokenizer is the utility to tokenize a line with given delimiters.

The main program is stored in the Main.cpp file. The program will
take input program name and generate the tranformed code and write to output file.  

2. Generating the CFG based on the branching instructions.

Each basic block has a list of basic block successors. By analyzing the branching 
intruction that each basic block has, the method Function::generateCFG indentify 
the destination of each branching instruction. The generated CFG information will
be added to the header of each function.

3. Compute live-range analysis 
This phase is divided into two steps: compute Upward-Exposed-Use set and reaching
defintion set.

- Compute UEU sets: for each basic block, first we compute the USE set of used 
registers and DEF set of defined registers in the basic block. Afterward, we 
compute the UEU_IN set of upward exposed use variables at the entry of basic block
and UEU_OUT set of upward exposed use variables at the exit of basic blocks by
using an iterative algorithm and the data flow equations:

IN[B] = USE[B] U (OUT(B) - DEF[B])
OUT[B] = Union of all IN[P] where P is a successor of B.

- Compute reaching defintion sets: First, we compute the KILL, GEN sets and compute
the reaching defintion sets using the iterative algorithm with the dataflow 
equations:

OUT[B] = GEN[B] U (IN[B] - KILL[B])
IN[B] = Union of all IN[P] where P is a predecessor of B.

The set of registers whose live range includes the entry of basic block is the
intersection of two sets upward-exposed use and reaching definition.

4. Compute the interference graph

We compute the liverange of all basic blocks in the fuction. After that, we 
compute the the live range for each instruction by a pass through the basic block. 
Along this pass, through each instruction we update the LIVERANGE at the program
point of instruciton. If the instruction defines a new symbolic register and the 
register is used later in the program, we add the register to the LIVERANGE update the 
interference list with current LIVERANGE. Otherwise, we remove the dead register.  
In case of move instruction, we will update copy-connected list with the pair of 
registers in the instruction. 

5. Allocate the real registers for symbolic registers

We use graph coloring algorithm to allocate and assign real registers to symbolic
registers. We keep a stack to store the order that registers are removed from the graph.
The simplified allocating algorithm is described as follows:

While (the interference graph is not empty) {
   - Symplify symbolic registers with a preferred allocation
   - Coalesce symbolic registers wiht a preferred allocation
   - Simplify symbolic registers with a preferred allocation and a real-register copy
   connection
   - Simplify non-call crossing symbolic registers with a non-preffered allocation
   - Coalesce symbolic registers with a non-preferred allocation
   - Freeze a symbolic register with a preferred allocation
   - Freeze a symbolic register with a non-preffered allocation
   - Possible spill: if we can not simplify the graph anymore, we just add the register with 
   lowest cost to the stack.
}

After we allocate the symbolic registers to the stack, we will reconstruct the interference 
graph to preserve the interference information needed for the next assignment step.    
In the assignment step, we pop each symbolic register from the stack and assign the available
real registers with appropriate order (caller-saved register should be preferably allocated for non 
call-crossing register and callee-saved register should be preferably allocated for call-crossing 
registers). In case there is no available real registers, we will spill the registers to memory.

Extension: The current algorithm do not consider the cases where a symbolic register can be 
allocated to a real register for part of its live range. In opposite of coalescing, spliting 
live ranges of registers divides the liverange of registers by adding copies to the program 
and renaming the registers. Spilitting live range of registers can reduce the interferences 
then it can increase the chances to allocate the registers with less spills. By profiling the
execution of program, splitting live ranges can also help reduce the pressure on 'hot' registers.
 

B- Program usage:

1. To build the program, issue:

make clean; make

The compilation process will generate the executable named AllocateRegisters.
The syntax to run the analysis is:

./AllocateRegisters <input file> <output file>
 
2. The Inputs directory includes all input files. To run the analysis over all
input files, issue

./test.rb

The script will output the transformed code to the directory Outputs. 
