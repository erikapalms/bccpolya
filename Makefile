comp=gcc
warning=-W -Wall -pedantic -std=c11
bibl= -lm

arq=$(wildcard *.c)
bin=$(arq:.c=)

.PHONY: compile clean remember

remember:
	@echo "Sintaxe: make <opções>"
	@echo "	Opções:"
	@echo "		remember : mostra esta mensagem"
	@echo "		compile  : compila todos os fontes da pasta"
	@echo "		clean : apaga todos os binários criados"
	@echo ""

compile: $(bin)

clean: 
	@rm -f $(bin)

%:%.c
	@echo -n "Gerando executável $@"
	@$(CC) $< -o $@ $(warning) $bibl && echo " [OK]