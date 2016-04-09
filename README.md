
### <b>Problema: Modelando e Resolvendo -- 05/04/2016 </b>

##### <b>Descrição do problema</b> 
<p>O problema exposto solicitou que desenvolvêssemos uma função em C que calcule uma aproximação da raiz quadrada de um numero real com algumas restrições (sem uso do método de Newton e de conteúdos não abordados em aula).</p>
     
##### <b>Solução em Linguagem Matemática</b> 
<p>A raiz quadrada de um A é um número que quando multiplicado por si mesmo resulta em A. <br /> √A=C*C <p> A partir desta definição e do método babilônico foi possível resolver o problema, pois nem todas as raizes são exatas, como já sabemos, mas se utilizarmos das exatas para nos aproximar das inexatas teremos o solicitado: uma raiz aproximada. Segue um exemplo de resolução para melhor compreensão do método:</p>
√52<br />
<b>1</b> - Primeiro se encontra o quadrado perfeito mais próximo (sempre menor, nunca maior que o número informado, para que possamos o aproximar nas casas decimais)<br />
6\*6=36<br />
7\*7=49<br />
8\*8=64<br />
Nesse caso será o 7, chamaremos 7 de A.<br />
<b>2</b> - Então divide-se o número original por A até obter o dobro de casas decimais de A.<br />
52/7=7,4<br />
O 7,4 será chamado como B.<br />
<b>3</b> - Somamos A com B e dividimos por 2. O número encontrado será chamado C.<br />
7+7,4=14,4<br />
14,4/2=7,2<br />
<b>4</b> - Agora divide-se o número original (52) por C até que se tenha o dobro de casas decimais de C. O resultado se chamará D.<br />
52/7,2=7,2222<br />
<b>5</b> - Somamos C e D e dividimos por 2, esse número se chamará E.<br />
7,2+7,2222=14,4222<br />
14,4222/2=7,2111<br />
E é a raiz quadrada aproximada de 52. É possível fazer mais cálculos (se necessário) seguindo a mesma sequência para encontrar aproximações de 10 a 12 casas decimais, mas o resultado ficará um pouco impreciso.<br />

##### <b>Solução em Português Estruturado</b>
programa raizq<br />
```
função raizq(var: real);
inicio
     var n: real;
     leia n;
     imprima n;
     imprima raizq(n);
fim
     função raizq(n: real)
     inicio
          var A, B, C, valor: real;
          A=1;
          enquanto ((B=A*A)<=n) faça
               C=A;
               A++;
          fim_enquanto
          se ((C*C)==n) então
               retorna C;
          senão
               valor=((n/(((n/C)+C)/2))+(((n/C)+C)/2))/2;   
			retorna n/valor;
		  fim_se
	     retorna 0.0;
     fim
```
##### <b>Solução em Fluxograma</b>

<https://drive.google.com/file/d/0B4IXe958WDyhTXVtOVhnWXJTMW8/view?usp=sharing>

##### <b>Justificativa do uso do termo "polya" no nome do repositório</b> 
<p>O Matemático George Pólya (13/12/1887 - 07/11/1985) criou um método de resolução de problemas que consiste em compreender o problema, elaborar um plano de resolução, executá-lo e analisar a resposta obtida. A motivação deste ter o título como referência em nosso repositório, creio eu que partiu do desejo que elaborássemos e resolvêssemos este problema de maneira organizada e direcionada, compreeendendo-o desde seu âmbito, examinando, pesquisando e discorrendo sobre possibilidades, e ao fim, chegando a uma resposta coesa, concisa e eficaz para o problema, e não simplesmente pulando as etapas e partindo para uma possível resposta (como possivelmente faríamos).</p>
