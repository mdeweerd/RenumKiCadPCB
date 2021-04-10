#
# 'RenumKiCadPCB' Makefile 
#
ifeq ($(OS),Windows_NT)
    EXEEXT := 
else
    EXEEXT := .EXE
endif


RNK_SRC=RenumKiCadPCB.c
RNK_EXE=RenumKiCadPCB$(EXEEXT)

RNK_EXE:
	gcc -O3 $(RNK_SRC) -o $(RNK_EXE)
	strip $(RNK_EXE)
