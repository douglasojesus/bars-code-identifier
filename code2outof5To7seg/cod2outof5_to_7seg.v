/*
 * Esta descrição foi feita através de uma tabela verdade, que ativa 
 * as saídas dos LEDs representantes no display de 7 segmentos de acordo 
 * com as entradas do código 2 de 5. Sendo assim, cada saída (LED do display),
 * será ativa de acordo com a entrada possível. Devido a configuração do código 2 de 5,
 * não foi possível realizar otimizações das entradas, apenas correlacionar as saídas
 * das portas AND com outras portas OR de outros LEDs do display de 7 segmentos.
 * O display só liga se as entradas E5, E6 e E7 forem todas nível lógico baixo (ENABLE).
 * Se o ENABLE tiver em nivel lógico baixo mas o codigo inserido estiver incorreto, o código de erro também é impresso. 
*/

module cod2outof5_to_7seg(E7, E6, E5, E4, E3, E2, E1, E0, g, f, e, d, c, b, a, dig, ledR, ledG);

	//Entradas das chaves da placa LEDS CPLD
	input E0, E1, E2, E3, E4, E5, E6, E7;
	//Saídas do dígito de 7 segmentos da placa LEDS CPLD
	output g, f, e, d, c, b, a, dig, ledR, ledG;
	
	//Saídas das portas ANDs para as portas ANDs com o wENABLE
	wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, wERRO, wENABLE;
	
	//Verifica se todo o código (E4-E0) foi colocado corretamente.
	nor ENABLE (wENABLE, E7, E6, E5); 
	and dig0 (w1, ~E4, ~E3, E2, E1, ~E0);
	and dig1 (w2, E4, ~E3, ~E2, ~E1, E0);
	and dig2 (w4, ~E4, E3, ~E2, ~E1, E0);
	and dig3 (w5, E4, E3, ~E2, ~E1, ~E0);
	and dig4 (w6, ~E4, ~E3, E2, ~E1, E0);
	and dig5 (w7, E4, ~E3, E2, ~E1, ~E0);
	and dig6 (w9, ~E4, E3, E2, ~E1, ~E0);
	and dig7 (w3, ~E4, ~E3, ~E2, E1, E0);
	and dig8 (w0, E4, ~E3, ~E2, E1, ~E0);
	and dig9 (w8, ~E4, E3, ~E2, E1, ~E0);
	
	//Se o ENABLE tiver em nível lógico alto, será exibido no display de 7 segmentos.
	//Caso esteja em nível lógico baixo, todas as saídas w00-w09 ficará com 0.
	and dig0Enabled (w00, w0, wENABLE);
	and dig1Enabled (w01, w1, wENABLE);
	and dig2Enabled (w02, w2, wENABLE);
	and dig3Enabled (w03, w3, wENABLE);
	and dig4Enabled (w04, w4, wENABLE);
	and dig5Enabled (w05, w5, wENABLE);
	and dig6Enabled (w06, w6, wENABLE);
	and dig7Enabled (w07, w7, wENABLE);
	and dig8Enabled (w08, w8, wENABLE);
	and dig9Enabled (w09, w9, wENABLE);
	
	//Se houver erro, ou seja, algum código não for escrito corretamente: ligar LEDs a, f, g, e, d.
	//Se todos os wires w0-w9 forem 0, ou seja, o código inserido não for válido, haverá mensagem de erro (wERRO receberá 1).
	//A necessidade de utilizar dois wires (w0-w9 e w00-w09) surge para conseguir criar o wire de erro, pois deve ser independente do enable.
	nor ERRO (wERRO, w0, w1, w2, w3, w4, w5, w6, w7, w8, w9); 
	
	//As portas G-A podem ser ligadas caso algum dígito esteja correto e o ENABLE esteja ativado, ou seja, as saídas w00-w09
   //estejam ativas, ou caso haja erro, ou seja, caso algum código inserido seja inválido.
	or G (g, w00, w01, w02, w03, wERRO); //led g
	or F (f, w00, w02, w04, w05, w03, wERRO); //led f
	or E (e, w00, w02, w05, w06, w07, w03, w08, wERRO); //led e
	or D (d, w00, w02, w06, w03, wERRO); //led d
	and C (c, ~E7, ~E6, ~E5, ~E4, E3, ~E2, ~E1, E0); //led c
	or B (b, w00, w07, w09); //led b
	or A (a, w00, w02, w06, wERRO); //led a
	
	or acionamentoDig4 (dig, g, f, e, d, c, b, a, wERRO); //acionamento do dígito 4
	buf ledGreen (ledG, ~wERRO); //acionamento do LED green
	buf ledRed (ledR, wERRO); //acionamento do LED red
	
endmodule