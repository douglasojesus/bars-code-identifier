/*******************************************************************************
Autor: Douglas Oliveira de Jesus
Componente Curricular: MI Circuitos Digitais
Concluido em: 10/03/2023
Declaro que este código foi elaborado por mim de forma individual e não contém nenhum
trecho de código de outro colega ou de outro autor, tais como provindos de livros e
apostilas, e páginas ou documentos eletrônicos da Internet. Qualquer trecho de código
de outra autoria que não a minha está destacado com uma citação para o autor e a fonte
do código, e estou ciente que estes trechos não serão considerados para fins de avaliação.
******************************************************************************************/

module identificadorDeCodigoDeBarras(E7, E6, E5, E4, E3, E2, E1, E0, g, f, e, d, c, b, a, ledR, 
ledG, L0, L1, L2, L3, L4, L5, L6, C0, C1, C2, C3, C4, dig1seg, dig2seg, dig3seg, dig4seg);

	//Definição de entradas e saídas
	input E0, E1, E2, E3, E4, E5, E6, E7;
	output L0, L1, L2, L3, L4, L5, L6, C0, C1, C2, C3, C4, g, f, e, d, c, b, a, dig1seg, dig2seg, dig3seg, dig4seg, ledR, ledG;

	//Importação dos módulos
	matrizDeLeds inst1 (.E7(E7), 
					  .E6(E6), 
					  .E5(E5),
					  .E4(E4), 
					  .E3(E3), 
					  .E2(E2), 
					  .E1(E1), 
					  .E0(E0), 
					  .L0(L0), 
					  .L1(L1), 
					  .L2(L2), 
					  .L3(L3), 
					  .L4(L4), 
					  .L5(L5), 
					  .L6(L6), 
					  .C0(C0), 
					  .C1(C1), 
					  .C2(C2), 
					  .C3(C3), 
					  .C4(C4)
	);
					  
	cod2outof5_to_7seg inst2 (.E7(E7), 
					  .E6(E6), 
					  .E5(E5),
					  .E4(E4), 
					  .E3(E3), 
					  .E2(E2), 
					  .E1(E1), 
					  .E0(E0), 
					  .g(g), 
					  .f(f), 
					  .e(e), 
					  .d(d), 
					  .c(c), 
					  .b(b), 
					  .a(a), 
					  .dig1seg(dig1seg), 
					  .dig2seg(dig2seg), 
					  .dig3seg(dig3seg), 
					  .dig4seg(dig4seg),
					  .ledR(ledR), 
					  .ledG(ledG)
	);
					  
endmodule