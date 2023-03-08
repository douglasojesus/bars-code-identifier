module identificadorDeCodigoDeBarras(E7, E6, E5, E4, E3, E2, E1, E0, g, f, e, d, c, b, a, dig, ledR, 
ledG, L0, L1, L2, L3, L4, L5, L6, C0, C1, C2, C3, C4);

	input E0, E1, E2, E3, E4, E5, E6, E7;
	output L0, L1, L2, L3, L4, L5, L6, C0, C1, C2, C3, C4, g, f, e, d, c, b, a, dig, ledR, ledG;

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
					  .dig(dig), 
					  .ledR(ledR), 
					  .ledG(ledG)
	);
					  
endmodule