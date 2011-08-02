#include "InstructionInfo.h"

string jumpInsts[] = {
		"j","jal","jalr"
};
set<string> jumpInstSet (jumpInsts, jumpInsts + 3);

string moveInsts[] = {
		"move","move.s","mov.d"
};
set<string> moveInstSet (moveInsts, moveInsts + 3);

string oneOpBranchInsts[] = {
		"bgtl","bgel","bgeul","bgtul","bltl","blel","bleul","bltul","bnel",
		"b","bal","bczf","bczt","bczfl","bcztl"
};
set<string> oneOpBranchInstSet(oneOpBranchInsts, oneOpBranchInsts + 15);

string twoOpBranchInsts[] = {
		"beqz","bgez","bgtz","bgezal","bltz","bnez","beqzl","bgezl","bgtzl",
		"bgezall","bltzall","blezl","bltzl","bnezl","blez"
};
set<string> twoOpBranchInstSet (twoOpBranchInsts, twoOpBranchInsts + 15);

string threeOpBranchInsts[] = {
		"beq","beql","bgt","bge","bgeu","bgtu","blt","ble","bleu","bltu","bne"
};
set<string> threeOpBranchInstSet(threeOpBranchInsts, threeOpBranchInsts + 11);

string twoOpArithmeticInsts[] =  {
		"mult","multu","dmult","dmultu"
};
set<string> twoOpArithmeticInstSet(
		twoOpArithmeticInsts, twoOpArithmeticInsts + 4
);

string arithmeticInsts[] = {
		"add","addu","addiu","and","div","divu","xor","mul","mulo","mulou","nor",
		"or","seq","sgeu","sgtu","slt","sle","sleu","sltu","sne","sub","subu",
		"rem","remu","rol","ror","sra","sll","srl","dadd","daddu","ddiv",
		"ddivu","dmul","dmulo","dmulou","dsub","dsubu","drem","dremu","drol",
		"dror","dsra","dsll","dsrl","add.d","add.s","div.d","div.s",
		"mul.d","mul.s","sub.d","sub.s","andi","ori","xori"
};
set<string> arithmeticInstSet (arithmeticInsts, arithmeticInsts + 56);

string absNegateInsts[] = {
	"abs","neg","negu","not","dabs","dneg",
	"dnegu","abs.d","abs.s","neg.d", "neg.s"
};

set<string> absNegateInstSet(absNegateInsts, absNegateInsts + 11);

string storeInsts[] = {
		"sb","sc","sd","scd","sdl","sdr","sh","swl","swr","sw",
		"ush","usd","usw","s.d","s.s",
		///special move
		"mtlo","mthi"
};

set<string> storeInstSet (
	storeInsts, storeInsts + 17
);

string loadInsts[] = {
		"la","lb","lbu","lh","lhu","ll","lw","lwl","lwr","lwcz","ldcz","ld",
		"lld","lwu","ldl","ldr","uld","ulh","ulhu","ulw","l.d","l.s.li.d",
		"li.s", "li", "lui","rfe","li",
		///special move
		"mflo","mfhi"
};
set<string> loadInstSet (
	loadInsts, loadInsts + 29
);

string crossingRegs[] = {
		"$1","$2","$3","$4","$5","$6","$7","$8","$9","$10","$11","$12","$13",
		"$14","$15","$24","$25","$31"
};
set<string> crossingRegSet (
	crossingRegs, crossingRegs + 18
);

string callerSavedRegisters[] = {
	"$3","$8","$9","$10","$11","$12","$13","$14","$15","$24","$25","$31",
	"$7","$6","$5","$4","$2"
};

string calleeSavedRegisters[] = {
	"$16","$17","$18","$19","$20","$21","$22","$23"
};
