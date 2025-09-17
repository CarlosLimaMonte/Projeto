 ;---------------------------------------------------
 ; Programa: Recebe dois números e multiplica
 ; Autor: Carlos Eduardo de Lima Monte Filho
 ; Data: 17/09/2025
 ;---------------------------------------------------

I: DB 1 ; Cria a variável contador -1
MULT: DB 0 ; Cria a variável contador do multiplicador
PARC: DB 0 ; Cria a variável do valor parcial
A: DB 0 ; Cria a variável A
B: DB 0 ; Cria a Variável B

RECEBE: IN 0 ; Recebe o valor A e armazena no ACC
        STA A ; Guarda o valor no A
        IN 0 ; Recebe o valor B e armazena no ACC
        STA B ; Guarda o valor no B

INICIO: LDA I ; Joga o valor I no ACC
        NOT ; Inverter o valor de I
        ADD I ; Soma + 1 (Complemente de 2)
        STA I ; Guarda em I (I = -1)
        LDA B ; Joga o valor B no ACC
        STA MULT ; Define o MULT como B

LOOP1: LDA A ; Puxa o valor B
       JZ FIM ; Verifica se A = 0 (Se sim finaliza)

LOOP2: LDA MULT ; Puxa o valor de MULT
       JZ FIM ; Pula para o final se for
       LDA PARC ; Carrega o valor PARC
       ADD A ; Soma com A
       STA PARC ; Guarda o valor PARC
       LDA MULT ; Carrega o valor MULT
       ADD I ; Diminiu o valor de MULT em 1
       STA MULT ; Guarda o valor em MULT
       JMP LOOP2 ; Repete o loop

FIM: LDA PARC ; Puxa o valor PARC
     OUT 0 ; Exibe o valor PARC no visor
     HLT ; Imprime



