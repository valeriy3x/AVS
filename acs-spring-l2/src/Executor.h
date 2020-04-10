
#ifndef RISCV_SIM_EXECUTOR_H
#define RISCV_SIM_EXECUTOR_H

#include "Instruction.h"

class Executor
{
public:
    void Execute(InstructionPtr& instr, Word ip)
    {
        instr->_nextIp = add(ip, 4);
        std::optional<Word> firstOperand;
        std::optional<Word> secondOperand;

        if (instr->_src1.has_value())
            firstOperand = instr->_src1Val;
        if (instr->_imm.has_value())
            secondOperand = instr->_imm;
        else if (instr->_src2.has_value())
                secondOperand = instr->_src2Val;

        Word result;

        if (firstOperand.has_value() && secondOperand.has_value())
        {
            Word firstOpVal = firstOperand.value();
            Word secondOpVal = secondOperand.value();
            switch (instr->_aluFunc) {
                case AluFunc::Add :{
                    result = add(firstOpVal, secondOpVal);
                    break;
                }
                case AluFunc::Sub: {
                    result = sub(firstOpVal, secondOpVal);
                    break;
                }
                case AluFunc::And: {
                    result = firstOpVal & secondOpVal;
                    break;
                }
                case AluFunc::Or: {
                    result = firstOpVal | secondOpVal;
                    break;
                }
                case AluFunc::Xor: {
                    result = firstOpVal ^ secondOpVal;
                    break;
                }
                case AluFunc::Slt: {
                    result = SignedWord(firstOpVal) < SignedWord(secondOpVal);
                    break;
                }
                case AluFunc::Sltu: {
                    result = firstOpVal < secondOpVal;
                    break;
                }
                case AluFunc::Sll: {
                    result = firstOpVal << (secondOpVal & 31);
                    break;
                }
                case AluFunc::Srl: {
                    result = firstOpVal >> (secondOpVal & 31);
                    break;
                }
                case AluFunc::Sra: {
                    result = SignedWord(firstOpVal) >> (secondOpVal & 31);
                    break;
                }
            }
        }
        if (instr->_type == IType::Ld || instr->_type == IType::St)
        {
            instr->_addr = result;
        }

        if (instr->_type == IType::Csrr)
            instr->_data = instr->_csrVal;
        else if (instr->_type == IType::Csrw)
            instr->_data = instr->_src1Val;
        else if (instr->_type == IType::St)
            instr->_data = instr->_src2Val;
        else if (instr->_type == IType::J || instr->_type == IType::Jr)
            instr->_data = add(ip, 4);
        else if (instr->_type == IType::Auipc)
            instr->_data = add(ip, instr->_imm.value());
        else
            instr->_data = result;

        bool transCondition = 0;

        switch(instr->_brFunc)
        {
            case BrFunc::Eq:{
                if(firstOperand.value() == secondOperand.value())
                    transCondition = 1;
                break;
            }
            case BrFunc::Neq:{
                if(firstOperand.value() != secondOperand.value())
                    transCondition = 1;
                break;
            }
            case BrFunc::Lt:{
                if(SignedWord(firstOperand.value()) < SignedWord(secondOperand.value()))
                    transCondition = 1;
                break;
            }
            case BrFunc::Ltu:{
                if(firstOperand.value() < secondOperand.value())
                    transCondition = 1;
                break;
            }
            case BrFunc::Ge:{
                if(SignedWord(firstOperand.value()) >= SignedWord(secondOperand.value()))
                    transCondition = 1;
                break;
            }
            case BrFunc::Geu:{
                if(firstOperand.value() < secondOperand.value())
                    transCondition = 1;
                break;
            }
            case BrFunc::AT:{
                transCondition = 1;
                break;
            }
            case BrFunc::NT:{
                transCondition = 0;
                break;
            }
        }

        switch (instr->_type)
        {
            case IType::Br:
            case IType ::J:{
                if(transCondition)
                    instr->_nextIp = add(ip, instr->_imm.value());
                break;
            }
            case IType::Jr:{
                if(transCondition) {
                    Word shift = add(instr->_imm.value(), firstOperand.value());
                    instr->_nextIp = add(shift, ip);
                }
                break;
            }
        }

    }

private:
    Word add(Word numberA, Word numberB)
    {
        while (numberB != 0)
        {
            Word carry = numberA & numberB;
            numberA = numberA ^ numberB;
            numberB = carry << 1;
        }
        return numberA;
    }

    Word sub(Word numberA, Word numberB)
    {
        numberB = add(~numberB, 1);
        return add(numberA, numberB);
    }

    Word mul(Word number, Word multiplier)
    {
        Word sum = number;
        while(multiplier)
        {
            sum = add(sum, number);
            --multiplier;
        }
        return sum;
    }


};

#endif // RISCV_SIM_EXECUTOR_H
