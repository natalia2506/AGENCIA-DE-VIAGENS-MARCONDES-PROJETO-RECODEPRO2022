Algoritmo "Ag�ncia_de_viagens_Marcondes"

Var

clientes: vetor [0..1] de caracter
cliente: caracter
clienteJaExiste: logico
destino: vetor [0..2] de caracter
i, j: inteiro
opcao: inteiro
enter: logico

Procedimento inicializa()

Inicio

enquanto op��o <> 5 fa�a
         escreval("*******************************")
         escreval("*Ag�ncia de viagens Marcondes*")
         escreval("*******************************")
         escreval("**Cadastro de clientes**")
         escreval()
         escreval("Digite(1)para dar inicio ao cadastro de cliente")
         escreval("Digite(2)para listar os clientes cadastrado")
         escreval("Digite(3)para dar inicio a pesquisa de clientes")
         escreval("Digite(4)para listar os dentinos dispon�veis na ag�ncia")
         escreval("Digite(5)para sair")
         escreval()
         
leia(opcao)
           se opcao = 1 entao
           limpatela
                    realizar_cadastro_de_cliente ()
           fimse
           
           se opcao = 2 entao
           limpatela
                    realizar_busca_dos_clientes ()
           fimse
           
           se opcao = 3 entao
           limpatela
                    realizar_pesquisa_de_cliente ()
           fimse
           
           se opcao = 4 entao
           limpatela
                    realizar_buscas_por_destinos ()
           fimse
           
           se opcao = 5 entao
              para i de 0 at� 1 faca
               clientes[i] <-"x"
              fimpara
              escreval ()
              escreval ("Opc�o v�lida,saindo!")
              leia (enter)
              limpatela
           fimse
           
           se opcao > 5 entao
              escreval ()
              escreval ("Opc�o inv�lida,aperte para voltar!")
              leia (enter)
              limpatela
           fimse
fimenquanto
fimprocedimento

procedimento realizar_cadastro_de_cliente ()
inicio

      para i de 0 ate 1 faca
           se(clientes[i]="") entao
            escreva ("Nome do(a) cliente: ")
            leia (clientes[i])
            escreva ("Nome social: ")
            leia (nomeSocial[i])
            escreva ("Identidade: ")
            leia (identidade[i])
            escreva ("CPF: ")
            leia (cpf[i])
            escreva ("Contato: ")
            leia (contato[i])
            escreva ("Endere�o: ")
            leia (endereco[i])
            i <- i+1
            escreval ()
            escreval ("*** Cadasto do cliente realizado com sucesso ***")
            escreval ()
            escreval ("Aperte enter para voltar para a p�gina inicial")
            leia (enter)
           limpatela
           inicializa ()
         fimse
      fimpara
       escreval ("*No momento n�o ser� poss�vel realizar o cadastro, aperte enter para voltar para a p�gina inicial*")
       leia (enter)
       limpatela
       inicializa ()
fimprocedimento

procedimento realizar_pesquisa_de_cliente ()
inicio

      escreval(" Inicie a pesquisa digitando o nome do cliente: ")
      leia (cliente)
      clienteJaExiste <- falso
              para i de 0 ate 1 faca
              se cliente=clientes[i] entao
              clienteExiste <- verdadeiro
               escreval("*Este s�o os dados do cliente*")
               escreval("Nome do(a) cliente: ", clientes[i])
               escreval("Nome Social: ", nomeSocial[i])
               escreval("Identidade: ", identidade[i])
               escreval("CPF: ", cpf[i])
               escreval("Contato: ", contato[i])
               escreval("Endere�o: ", endereco[i])
               escreval()
               i <-1
      escreval ("Para voltar, aperte enter")
      leia(enter)
    fimse
fimpara
se clienteJaExiste = falso entao
   escreval()
   escreval("Na pesquisa realizada o cliente n�o foi encontrado")
   escreval()
   escreval("Para voltar, aperte enter")
   leia(enter)
  fimse
limpatela
inicializa()
fimprocedimento

procedimento realizar_busca_dos_clientes ()
inicio

se clientes[i] = "" entao
   escreval ()
   escreval ("N�o foi encontrado nenhum cliente!")
   escreval ()
senao
     escreval ("Todos clientes cadastrados: ")
     escreval ()
     para i de 0 ate 1 faca
     escreval ()
     escreval("Nome do(a) cliente: ", clientes[i])
     escreval("Nome Social: ", nomeSocial[i])
     escreval("Identidade: ", identidade[i])
     escreval("CPF: ", cpf[i])
     escreval("Contato: ", contato[i])
     escreval("Endere�o: ", endereco[i])
     escreval ()
    fimpara
   fimse
     escreval ("Para voltar, aperte enter")
     leia(enter)
     limpatela
     inicializa ()
     limpatela
fimprocedimento


procedimento realizar_buscas_por_destinos ()
inicio

escreva ("Inicie a pesquisa digitando o nome do cliente: ")
escreval ()
leia (cliente)
para i de 0 ate 1 faca
     se cliente=clientes[i] entao
        escreval("Nome do(a) cliente: ", clientes[i])
        escreval("Nome Social: ", nomeSocial[i])
        escreval("Identidade: ", identidade[i])
        escreval("CPF: ", cpf[i])
        escreval("Contato: ", contato[i])
        escreval("Endere�o: ", endereco[i])
        escreval ("Cliente encontrado")
        escreval ()
        escreval ("Destino selecionado")
        escreval ()
        escreval ("Para voltar, aperte enter")
        leia(enter)
        limpatela
        inicializa ()
     senao
          escreval()
          escreval("Cliente n�o encontrao")
          escreval("Para voltar, aperte enter")
          leia(enter)
          limpatela
       fimse
     limpatela
     inicializa()
  fimpara
limpatela
fimprocedimento
inicio
inicializa ()

Fimalgoritmo