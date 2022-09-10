programa
{
	funcao inicio()
	{
		/*
		 * 1. Candidato Jair Rodrigues
		 * 2. Candidato Carlos Luz
		 * 3. Candidato Neves Rocha
		 * 4. Nulo
		 * 5. Branco
		 * 6. Fechar
		 * a) O número de votos de cada candidato;
		 * b) A porcentagem de votos nulos;
		 * c) A porcentagem de votos brancos;
		 * d) O candidato vencedor.
		 */

		inteiro voto, i, votos[5] = {0, 0, 0, 0, 0}
		real percentualNulos, percentualBrancos, totalVotos = 0.0

		faca {
			escreva("\n\t--- É hora de decidir o futuro da nação ---\n")
			escreva("\n1. Candidato Jair Rodrigues")
			escreva("\n2. Candidato Carlos Luz")
			escreva("\n3. Candidato Neves Rocha")
			escreva("\n4. Nulo")
			escreva("\n5. Branco")
			escreva("\n\nEscolha seu candidato: ")
			leia(voto)
			se (voto > 0 e voto < 6) {
				votos[voto - 1]++
				totalVotos++
			}
			limpa()
		} enquanto(voto != 6)

		percentualNulos = (votos[3] / totalVotos) * 100.0
		percentualBrancos = (votos[4] / totalVotos) * 100.0

		escreva("\n\t--- O futuro foi decidido e o resultado foi ---\n")
		escreva("\nCandidato Jair Rodrigues recebeu ", votos[0], " votos")
		escreva("\nCandidato Carlos Luz recebeu ", votos[1], " votos")
		escreva("\nCandidato Neves Rocha recebeu ", votos[2], " votos")
		escreva("\nNessa eleição tivemos ", percentualNulos, "% de votos nulos")
		escreva("\nNessa eleição tivemos ", percentualBrancos, "% de votos brancos")

		escreva("\n\n\t--- E o vencedor dessa eleição foi ")
		se (votos[0] > votos[1] e votos[0] > votos[2]) {
			escreva(" Jair Rodrigues")
		} senao se (votos[1] > votos[0] e votos[1] > votos[2]) {
			escreva("Carlos Luz")
		} senao {
			escreva("Neves Rocha")
		}
		escreva(" ---")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */