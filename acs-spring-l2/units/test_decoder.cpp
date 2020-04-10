#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "../src/Decoder.h"
#include "../src/Instruction.cpp"


TEST_CASE("Decoder Test Case"){
    Decoder _decoder;
    Word current = 0b00001100001001010010000100000011;
    InstructionPtr instr = _decoder.Decode(current);
    CHECK(instr->_type == IType::Ld);
    CHECK(instr->_aluFunc == AluFunc::Add);
    CHECK(instr->_brFunc == BrFunc::NT);
    CHECK(instr->_dst == 0b010);
    CHECK(instr->_imm == 0b000011000010);
    CHECK(instr->_src1 == 0b01010);
}