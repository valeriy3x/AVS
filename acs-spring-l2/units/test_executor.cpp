#include "catch.hpp"
#include "../src/Executor.h"
#include "../src/Decoder.h"


TEST_CASE("Executor Test Case"){
    Executor _exe;
    Decoder _decoder;
    Word current = 0b00001100001001010010000100000011;
    InstructionPtr instr = _decoder.Decode(current);
    instr->_src1Val = 3;
    _exe.Execute(instr, 415);
    CHECK(instr->_data == 197);
    CHECK(instr->_addr == 197);
    CHECK(instr->_nextIp == 419);
}