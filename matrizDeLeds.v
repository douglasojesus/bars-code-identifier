//E=entrada do chaveamento CH.
//L=linha da matriz de leds
//C=Coluna da matriz de leds

module matrizDeLeds (E7, E6, E5, E4, E3, E2, E1, E0, L0, L1, L2, L3, L4, L5, L6, C0, C1, C2, C3, C4);

	input E0, E1, E2, E3, E4, E5, E6, E7;
	output L0, L1, L2, L3, L4, L5, L6, C0, C1, C2, C3, C4;
	wire wENABLE, wERRO;
	wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9;

	//Define a linha da matriz de leds de acordo com as entradas E0-E7
	//As linhas são ativadas em nível lógico baixo
	nand linha0 (L0, ~E7, ~E6, E5);
	nand linha1 (L1, ~E7, E6, ~E5);
	nand linha2 (L2, ~E7, E6, E5);
	nand linha3 (L3, E7, ~E6, ~E5);
	nand linha4 (L4, E7, ~E6, E5);
	nand linha5 (L5, E7, E6, ~E5);
	nand linha6 (L6, E7, E6, E5);

	//Verifica se todo o código (E4-E0) foi colocado corretamente.
	nor ENABLE (wENABLE, E7, E6, E5); 
	and dig0 (w0, ~E4, ~E3, E2, E1, ~E0);
	and dig1 (w1, E4, ~E3, ~E2, ~E1, E0);
	and dig2 (w2, ~E4, E3, ~E2, ~E1, E0);
	and dig3 (w3, E4, E3, ~E2, ~E1, ~E0);
	and dig4 (w4, ~E4, ~E3, E2, ~E1, E0);
	and dig5 (w5, E4, ~E3, E2, ~E1, ~E0);
	and dig6 (w6, ~E4, E3, E2, ~E1, ~E0);
	and dig7 (w7, ~E4, ~E3, ~E2, E1, E0);
	and dig8 (w8, E4, ~E3, ~E2, E1, ~E0);
	and dig9 (w9, ~E4, E3, ~E2, E1, ~E0);
	
	//Se todos os wires w0-w9 forem 0, ou seja, o código inserido não for válido, a matriz de LED não será ativada.
	nor ERRO (wERRO, w0, w1, w2, w3, w4, w5, w6, w7, w8, w9); 
	
	//Passa para as colunas as entradas inseridas caso não haja erro.
	and coluna0 (C4, E0, ~wERRO);
	and coluna1 (C3, E1, ~wERRO);
	and coluna2 (C2, E2, ~wERRO);
	and coluna3 (C1, E3, ~wERRO);
	and coluna4 (C0, E4, ~wERRO);

endmodule