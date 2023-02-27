import analizador_Lexico

entrada = input("Ingrese el texto a analizar: ")

analizador = analizador_Lexico.AnalizadorLexico()
analizador.analizador(entrada)
analizador.getListaTokens()
print("Salida")
analizador.imprimirSalida()
print("\nPila")
analizador.imprimirSintactico()

