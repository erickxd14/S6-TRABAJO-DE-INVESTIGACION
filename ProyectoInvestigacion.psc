// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion



// Ejercicios con NÚMEROS
// 1. Pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero1"
	leer num1
	Escribir "Ingrese numero2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion


//2. Dividir números por resta
Funcion DividirNumerosPorResta()
	Definir Num, div, aux, cont Como Entero
	Escribir "Ingrese un numero para dividir?";
	leer num; Escribir "Ingrese su divisor?";
	leer div;
	cont=0
	aux <- num;
	repetir
		aux <- aux - div;
		cont<- cont+1;
	hasta que aux <= 0
	si aux < 0
        entonces escribir "El resultado es: " cont-1;
        escribir "El resto es: " aux + div;
	sino escribir "El resultado es: " cont;
		escribir "El resto es: 0";
	FinSi
FinFuncion


//3. Multiplicar dos numeros por sumas
Funcion MultiplicarDosNumerosPorSumas()
	Definir num1,num2,multi,suma Como Entero
	Escribir "ingrese un numero "
	Leer num1
	Escribir "ingrese otro numero"
	Leer num2
	multi=num1*num2
	Escribir "la multiplicacion de los numeros es ",multi
	suma=num1+num2
	Escribir "la suma de los numeros es ",suma
FinFuncion


//4. Suma Pares y Productos multiplos de 5 de una secuencia de numeros
Funcion SumaParesProductosMultiplos()
	Definir total,x,contador,c2,mul Como Entero
	Definir suma,n,n1 Como Real
	Escribir "Cuantos numeros deseas ingresar"
	leer total
	x = 1
	contador = 1
	c2 = 1
	suma=0
	mul=1
	Mientras  x <= total Hacer
		Escribir "Ingresa un numero "
		leer n
		x = x + 1
		Si n mod 2=0 Entonces
			suma = suma + n
			contador = contador + 1
		Fin Si
		
		Si n mod 5==0 Entonces
			c2=c2+1
			mul=n*mul
			
		SiNo
			
		Fin Si
		
	FinMientras
	Escribir "La suma de los ",total," numeros es: ",suma
	Escribir "la multiplicacion de los numeros multiplos de 5 son :",mul
FinFuncion


//5. Presentar cantidad de digitos de cada numero de una secuencia hasta 0
Funcion PresentaCantidadDigitos()
	Definir x,total,contador Como Entero
	Definir r,n Como Real
	contador = 0
	
	Escribir "Cuantos numeros deseas ingresar"
	leer total
	x = 1
	Mientras  x <= total Hacer
		Escribir "Ingresa un numero "
		leer n
		x = x + 1
	FinMientras
	
	Mientras n >= 1 Hacer
		n = trunc(n/10)
		
		contador = contador + 1
	Fin Mientras
	Escribir "EL numero tiene ",contador," dígitos"
FinFuncion


//6. Valor de Trajes
Funcion ValorTrajes()
	Definir Valor_Traje, cantidad, Valor Como Entero
    Definir IVA, Descuento, total Como Real
    Escribir "Ingrese el Valor del Traje"
    Leer Valor_Traje
    Escribir "Ingrese la cantidad de trajes"
    Leer cantidad
    Valor <- Valor_traje
	IVA <- (Valor_Traje*Cantidad)*.12
    si Valor_Traje >= 100 Entonces
        Descuento = (cantidad*Valor_Traje)*.10
        total = (cantidad*Valor_Traje)-Descuento
    SiNo
        Descuento = (cantidad*Valor_Traje)*.5
        total = (cantidad*Valor_Traje)-Descuento
    FinSi
    Escribir "Subtotal: ",cantidad*Valor_Traje
    Escribir "Descuento: ",Descuento
    Escribir "IVA 12%: ",IVA
    Escribir "Total de Compra: ",total
FinFuncion


//7. Dado tres numeros indicar si el segundo es el mayor
Funcion NumeroSegundo()
	Definir a, b, c Como Entero
    a=0
    b=0
    c=0
    Escribir "Introdusca el valor a comparar de a"
    Leer a
    Escribir"Introdusca el valor a comparar de b"
    leer b
    Escribir"Introdusca el valor a comparar de c"
    leer c
	
    Si a>b y a>c Entonces
        Escribir "El segundo numero no es el mayor"
    sino
        Si b>a y b>c Entonces
            Escribir "El segundo numero es el mayor"
        SiNo
            Escribir "El segundo numero no es el mayor"
			
        FinSi
    FinSi
FinFuncion


//8. Dado una secuencia de numeros presentar su promedio
Funcion SecuenciaPromedio()
	Definir total,n,suma,div,x Como real 
    Escribir "Ingrese cuantas notas desea ingresar"
    Leer total
	suma = 0
    x = 1
    Mientras x <= total Hacer
        Escribir "Ingresa la nota"
        Leer n
        x = x + 1
        suma = suma + n
        div = suma/total
    Fin Mientras
    Escribir "Su promedio es de : ",div
FinFuncion

//9. Numeros amigos
Funcion NumerosAmigos()
	Definir a,b,c,s1,s2,r Como Entero
	Escribir "numeros amigos"
	Escribir "ingresa los numeros aqui"
	Leer a,b
	s1=0
	s2=0
	Escribir "divisores de a"
	Para c< -1 Hasta a-1
		r= a mod c
		Si r=0 Entonces
			s1=s1+c
			Escribir c
		Fin Si
	Fin Para
	Escribir "divisores de b"
	Para c< -1 Hasta b -1
		r=b mod c
		si r=0 Entonces
			s2=s2+c
			Escribir c
		FinSi
	FinPara
	si ((s1<=b) y (s2<=b)) Entonces
		Escribir "son numeros amigos"
	SiNo
		Escribir "no son numeros amigos"
	FinSi
FinFuncion

//10. Primos gemelos
Funcion PrimosGemelos()
	Definir cont,cont2,i,a,b como entero
    Escribir "Porfavor Ingrese un numero"
    Leer a
    Escribir "Ingrese otro numero"
    Leer b
    cont = 0
    cont2 = 0
    Para i<-1 Hasta a Hacer
        Si a MOD i = 0 Entonces
            cont = cont + 1
        FinSi
    Fin Para
    Para i<-1 Hasta b Hacer
        Si b MOD i = 0 Entonces
            cont2 = cont2 + 1
        FinSi
    Fin Para
    Si ((cont=2)) Y ((cont2=2)) Entonces
        Escribir "Los numeros son gemelos primos"
    SiNo
        Escribir "No son numeros gemelos primos"
    FinSi
FinFuncion



// Ejercicios con CADENAS
// 1. Presentar un nombre por caracter
Funcion NombrePorCaracter()
	Definir n1,usuario como caracter
    Escribir "Ingrese el nombre"
    Leer n1
	Usuario = " "
    usuario=Concatenar(usuario, SubCadena(n1,0,0))+" "
    usuario=Concatenar(usuario, SubCadena(n1,1,1))+" "
    usuario=Concatenar(usuario, SubCadena(n1,2,2))+" "
    usuario=Concatenar(usuario, SubCadena(n1,3,3))+" "
    usuario=Concatenar(usuario, SubCadena(n1,4,4))+" "
    usuario=Concatenar(usuario, SubCadena(n1,5,5))+" "
    usuario=Concatenar(usuario, SubCadena(n1,6,6))+" "
    usuario=Concatenar(usuario, SubCadena(n1,7,7))+" "
    usuario=Concatenar(usuario, SubCadena(n1,8,8))+" "
    usuario=Concatenar(usuario, SubCadena(n1,9,9))+" "
    usuario=Concatenar(usuario, SubCadena(n1,10,10))+" "
    Escribir usuario
FinFuncion



// 2. Presentar el primero, el medio y el ultimo caracter de una frase
Funcion PrimeroMedioUltimoCaracter()
	Definir frase, primero, medio, ultimo Como Caracter;
	Definir pos, l Como Entero;
	Escribir "Ingrese una frase";
	Leer frase;
	l = longitud (frase);
	primero = Subcadena(frase, 0,0);
	medio = Subcadena(frase, (l-1)/2, (l-1)/2)
	ultimo= Subcadena(frase, l-1,l-1);
	Escribir primero 
	Escribir medio 
	Escribir ultimo
FinFuncion



// 3. Dado dos nombres indicar si son iguales
Funcion NombresIguales()
	Definir nombre,nombre2 Como Caracter
	Escribir "ingrese el primer nombre"
	Leer nombre
	Escribir "ingrese el segundo nombre"
	Leer nombre2
	Si nombre = nombre2 Entonces
		Escribir "son nombres iguales "
	SiNo
		Escribir "no son nombres iguales "
	Fin Si
FinFuncion



// 4. Dadas dos frase indicar la de mayor longitud
Funcion DosFrasesMayorLongitud()
	Definir frase,frase2,usuario Como Caracter
	Escribir "Ingresa una frase"
	Leer frase
	Escribir "ingrese la 2 frase"
	Leer frase2
	Si Longitud(frase)>Longitud(frase2) Entonces
		Escribir "la de mayor longitud es:_ ",frase
	SiNo
		Escribir "la de mayor longitud es:_",frase2
	Fin Si
FinFuncion




// 5. Indicar cuantas ,.;: hay en una cadena
Funcion CuantosPuntosCadenas()
		Definir n,p,cm,d,pc,pos Como Entero
		Definir frase Como Caracter
		Escribir "Ingresa una frase"
		leer frase
		n = Longitud(frase)
		p = 0
		cm =0
		d = 0
		pc = 0
		pos=0
		
		Para pos<-0 Hasta n Con Paso 1 Hacer
			Si Subcadena(frase,pos,pos)="." Entonces
				p = p + 1
			SiNo
				Si Subcadena(frase,pos,pos)="," Entonces
					cm = cm + 1
				SiNo
					Si Subcadena(frase,pos,pos)=":" Entonces
						d = d + 1
					SiNo
						Si Subcadena(frase,pos,pos)=";" Entonces
							pc = pc + 1
						FinSi
					FinSi
				FinSi
			FinSi
		Fin Para
		Escribir "La frase ",frase," tiene"
		Escribir "puntos(.) :", p
		Escribir "comas(,) :",cm
		Escribir "dos puntos(:) :", d
		Escribir "punto y coma(;) :", pc
FinFuncion






// 6. Dado una cadena indicar cuantas vocales, consonantes y digitos hay
Funcion VocalesConsonantesDigitosHay()
	Definir frase,chr Como Caracter
    Definir cons,voca,x,n,c,dig Como Entero
    Escribir "ingrese su frase "
    Leer frase
    n=Longitud(frase)
    cons=-1
    voca=0
    x=0
    c=0
	dig=0
    Mientras x <= n  Hacer
        Segun Subcadena(frase,x,x)  Hacer
			
            "a" o "A":
                voca=voca+1
            "e" o "E":
                voca=voca+1
            "i"o"I":
                voca=voca+1
            "o" o "O":
                voca=voca+1
            "u" o "U":
                voca=voca+1
				
            "0" o "1":
                dig=dig+1
            "2" o "3":
                dig=dig+1
            "4"o"5":
                dig=dig+1
            "6" o "7":
                dig=dig+1
            "8" o "9":
                dig=dig+1
				
				
            De Otro Modo:
                chr=Subcadena(frase,x,x)
                Si chr<>" " Entonces
                    cons=cons+1
                Fin Si
        Fin Segun
        x=x+1
		
    Fin Mientras
    Escribir "la frase ",frase," tiene ",voca," vocales"
    Escribir "la frase ",frase," tiene ",cons," consonantes"
    Escribir "la frase ",frase," tiene ",dig," digitos"
FinFuncion



// 7. Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras
Funcion PalabrasHayEnFrase()
	Definir frase Como Caracter
    Definir n,partes,c,espacio Como Entero
    Escribir "ingrese una frase"
    Leer frase
    n=Longitud(frase)
    c=0
    partes=0
    Mientras c<n Hacer
        c = c + 1
        Segun Subcadena(frase,c,c) Hacer
            "":
                partes=partes+1
            " ":
                partes=partes+1
            " ":
                partes=partes+1
                De Otro Modo
				
        Fin Segun
    Fin Mientras
    Escribir "tiene esta cantidad de palabras ",partes
FinFuncion


// 8. Presentar la suma de los digitos de una cedula
Funcion SumaCedula()
	Definir Num ,suma Como Entero
	Escribir "Ingresa su número de cédula"
	Leer Num
	Suma = 0
	Mientras Num > 0 Hacer
		suma = suma + (Num mod 10)
		Num = trunc (Num/10)
	FinMientras
	Escribir "La suma de los dígitos de su cédula es: " ,suma
FinFuncion



// 9. Indicar si una palabra es palindroma
Funcion PalabraPalindroma()
	Definir x,a,b Como Entero
    Definir palabra Como Caracter
    Escribir "ingrese una palabra"
    Leer palabra
    b = Longitud(palabra)
    a = 1
    x = 1
    Mientras a < b Hacer
        si Subcadena(palabra,a,a)<>Subcadena(palabra,b,b) Entonces
            x = x + 1
        FinSi
        a = a + 1
        b = b - 1
    Fin Mientras
    si x<=b Entonces
        Escribir "la palabra es palindromo"
    SiNo
        Escribir "la palabra no es palindromo"
    FinSi
FinFuncion


// 10. Presenta la posicion de un caracter cualquiera dentro de una cadena
Funcion PosicionCaracterDEntroCadena()
	//Escribir la frase en minuscula
    definir frase,carter, RESULT Como Caracter
    definir i,c Como Entero
    i=0
    Escribir "Ingrese una frase"
    leer frase
    Escribir "Ingrese el caracter que le gustaria buscar"
    leer carter
    c=Longitud(frase)
    Para i=0 Hasta c con paso 1 Hacer 
        result=Subcadena(frase,i,i)
        Si carter = result Entonces
            Mostrar "Ese caracter estan en la posicion... ",i
        FinSi
    FinPara
FinFuncion









// Ejercicios con ARREGLOS
// 1. Dado un arreglo cualquiera presentarlo
Funcion PresentarArreglo()
	Definir pos,n,cant,c,i Como Entero
	Escribir "Ingrese cantidad de numeros"
	Leer cant
	i=1
	Dimension n[cant]
	para pos=0 hasta cant-1 con paso 1 Hacer
		Escribir "Ingrese sus numeros ",i
		Leer n[pos]
		i=i+1
	FinPara
	Escribir "Los numeros ingresados son "
	para pos=0 hasta cant-1 con paso 1 Hacer
		escribir n[pos]
	FinPara
FinFuncion



// 2. Presentar los numeros pares de un arreglo
Funcion ParesDeArreglo()
	Definir pos,n,cant,c,i Como Entero
	Escribir "Ingrese la cantidad de números deseados"
	Leer cant
	i=1
	Dimension n[cant]
	para pos=0 hasta cant-1 con paso 1 Hacer
		Escribir "Ingrese el número ",i
		Leer n[pos]
		i=i+1
	FinPara
	Escribir "Los numeros pares que ingresaste son: "
	para pos=0 hasta cant-1 con paso 1 Hacer
		si n[pos] mod 2==0 Entonces
			Escribir n[pos]
		FinSi
	FinPara
FinFuncion



// 3. Dado una serie de numeros guardar en un arreglo solo los numeros negativos
Funcion GuardarNumeroEnArregloNegativos()
	Definir pos,n,cant,c,i Como Entero
	Escribir "Ingrese la cantidad de números deseados"
	Leer cant
	i=1
	Dimension n[cant]
	para pos=0 hasta cant-1 con paso 1 Hacer
		Escribir "Ingrese el número ",i
		Leer n[pos]
		i=i+1
	FinPara
	Escribir "Los números negativos del Arreglo son: "
	para pos=0 hasta cant-1 con paso 1 Hacer
		si n[pos] < 0 entonces
			Escribir n[pos]
		FinSi
	FinPara
FinFuncion



// 4. Dado un arreglo de nombres presentar el primer caracter de cada nombre
Funcion PresentarPrimerCaracterDENombre()
	Definir cantidad, i Como Entero;
    Definir nom, x, primera Como Caracter;
    Escribir "Ingresar la cantidad de arreglos";
    Leer cantidad;
    Dimension x[cantidad];
    Para i <- 0 Hasta cantidad-1 Con Paso 1 Hacer
        Escribir "Ingresar nombre";
        leer nom;
        x[i] = nom;
    Fin Para
    Para i <- 0 Hasta cantidad-1 Con Paso 1 Hacer
        primera= Subcadena(x[i],0,0);
        Escribir "La inicial de cada nombre ingresado es: ", primera;
    Fin Para
FinFuncion




// 5. Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo
Funcion TotalCantidadPromedioArreglo()
	Definir cant,pos,i,i1,c,n,acu,pro Como Real
	Escribir "Ingrese la cantidad de números deseados"
	Leer cant
	dimension n[cant]
	i=1;acu=0;i1=0;pro=1
	Para pos=0 hasta cant-1 Con Paso 1 Hacer
		Escribir "Ingrese el número ", i
		Leer n[pos]
		acu=acu+n[pos]
		i=i+1
		i1=i1+1
	FinPara
	pro=acu/cant
	Escribir "El total de los números es: " acu
	Escribir "La cantidad de los números es: " i1
	Escribir "El promedio de los números es: " pro
FinFuncion




// 6. Dado un arreglo presentarlo al revez solo los numeros multiplos de 5
Funcion PresentarAlREvezMultiplosDe5()
	Definir arreglo,n,pos,c Como Entero
	Dimension arreglo[20]
	Escribir "Ingrese la cantidad de números deseados"
	leer n
	para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese los números"
		Leer arreglo[pos]
	FinPara
	Escribir "Numeros multiplos de 5 al revez:"
	para pos=n-1 Hasta 0 Con Paso -1 Hacer
		si arreglo[pos] mod 5 = 0 Entonces
			Escribir " " arreglo[pos] Sin Saltar
			esperar 1 Segundos
		FinSi
	FinPara
FinFuncion



// 7. Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo
Funcion PrimeroMedioUltimoElementoArreglo()
	Definir pos,n,arreglo,c Como Entero
	Dimension arreglo[20]
	Escribir "Ingrese la cantidad de números deseados"
	leer n
	para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese el número"
		Leer arreglo[pos]
	FinPara
	c=trunc(n/2)
	Escribir "Primer Elemento: " arreglo[0] "; Medio Elemento: " arreglo[c] "; Ultimo Elemto: " arreglo[n-1]
FinFuncion


// 8. Dado un arreglo copiarlo en otro y presentarlo
Funcion CopiarUnArregloEnOtro()
	Definir arreglo1,arreglo2,pos,long Como Entero
	Dimension arreglo1[10] ,arreglo2[10]
	long=0;pos=0
	Escribir "Cantidad de Elementos"
	leer long
	Para pos=0 Hasta long-1 Con Paso 1 Hacer
		Escribir "Número ",pos+1
		Leer arreglo1[pos] 
	Fin Para
	Escribir "segundo arreglo"
	Para pos=0 Hasta long-1 Con Paso 1 Hacer
		arreglo2[pos]=arreglo1[pos]
		Escribir "Número ",pos+1
		Escribir arreglo2[pos]
	Fin Para
FinFuncion



// 9. Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos
Funcion DosArreglosCopiarOtroArreglo() 
	Definir arreglo1,arreglo2,arreglo3,pos,lon,num Como Entero
	Dimension arreglo1[10] ,arreglo2[10], arreglo3[10]
	lon=0;pos=0
	Escribir "Cantidad de Elementos"
	leer lon
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir " Primer Arreglo Número ",pos+1
		Leer arreglo1[pos] 
	Fin Para
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir " Segundo Arreglo Número#",pos+1
		Leer arreglo2[pos] 
	Fin Para
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		arreglo3[pos]=arreglo2[pos]+arreglo1[pos]
		Escribir "Suma de arreglos Número",pos+1
		Escribir arreglo1[pos] "+" arreglo2[pos] "=" arreglo3[pos]
	Fin Para
FinFuncion


// 10. Dado una serie de numeros guarda en un arreglo los factoriales
Funcion GuardaNumerosEnArregloFactorial()
	Definir arreglo1,arreglo2,pos,lon,x,n,factorial Como Entero
	lon=0;pos=0;x=1
	Dimension arreglo1[10] ,arreglo2[10]
	lon=0;pos=0
	Escribir "Cantidad de elementos de la serie"
	leer lon
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Numero",pos+1
		Leer arreglo1[pos] 
	Fin Para
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		n=1;factorial=1
		Mientras n<=arreglo1[pos] Hacer
			factorial=factorial*n
			n=n+1
		FinMientras
		arreglo2[pos]=factorial
		Escribir arreglo2[pos] " " sin saltar
	FinPara	
FinFuncion








// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Mayor de 2 Numeros"
	menuNumeros[1] = "  2)Dividir dos numeros por restas"
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas"
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros "
	menuNumeros[4] = "  5)Presentar cantidad de digitos de cada numero de una secuencia hasta 0"
	//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	menuNumeros[5] = "  6)Mostrar El valor, descuento, iva y pago de n trajes"
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor"
	// la secuencia termina cuando se ingres eun numero negativo
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio"
	// dos numeros son amigos cunado la sum de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	menuNumeros[8] = "  9)Numeros amigos "
	// dos numeros son primos gemelos si ambos son primos
	menuNumeros[9] = "  10)Primos gemelos"
	menuNumeros[10]= "  11)Salir"
	
	// arreglos submenu cadenas
	menuCadenas[0] = "  1)Presentar un nombre por caracter"
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase"
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales"
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud"
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula"
	menuCadenas[8] = "  9)Indicar si una palabra es palindroma"
	menuCadenas[9] = "  10)Presenta rla posicion de un caracter cualquiera dentro de una cadena"
	menuCadenas[10] = "  11)Salir"
	
	// arreglo submenu arreglos
	menuArreglos[0]= "1)Dado un arreglo cualquiera presentarlo"
	menuArreglos[1]= "2)Presentar los numeros pares de un arreglo"
    menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
    menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
    menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
    menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
    menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
    menuArreglos[7]= "8)Dado un arreglo copiarlo en otro y presentarlo"
	menuArreglos[8]= "9)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
    menuArreglos[9]= "10)Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10]="11) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
		"1":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Numeros",menuNumeros,11)
				Segun opcn Hacer
					"1":
						Escribir "Mayor de dos Numeros"
						mayorDosNumeros()
						Esperar 3 Segundos
					"2":
						Escribir "Dividir Numeros Por Resta"
						DividirNumerosPorResta()
						Esperar 3 Segundos
					"3":
						Escribir "Multiplicar Dos Números por Suma"
						MultiplicarDosNumerosPorSumas()
						Esperar 3 Segundos
					"4":
						Escribir "Suma Pares y Productos Multiplos de 5"
						SumaParesProductosMultiplos()
						Esperar 3 Segundos
					"5":
						Escribir "Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
						CuantosPuntosCadenas()
						Esperar 3 Segundos
					"6":
						Escribir "Valor de Traje"
						ValorTrajes()
						Esperar 3 Segundos
					"7":
						Escribir "Indicar si el segundo es el mayor"
						NumeroSegundo()
						Esperar 3 Segundos
					"8":
						Escribir "Sumar numeros de dígitos de cédula"
						SecuenciaPromedio()
						Esperar 3 Segundos
					"9":
						Escribir "Indicar si una palabra es palindroma"
						NumerosAmigos()
						Esperar 3 Segundos
					"10":
						Escribir "Primos Gemelos"
						PrimosGemelos()
						Esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalidad..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		    
		"2":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Cadenas",menuCadenas,11)
				Segun opcn Hacer
					"1":
						Escribir "Presentar un nombre por caracter"
						NombrePorCaracter()
						Esperar 3 Segundos
					"2":
						Escribir "Presentar el primero, el medio y el ultimo caracter de una frase"
						PrimeroMedioUltimoCaracter()
						Esperar 3 Segundos
					"3":
						Escribir "Dado dos nombres indicar si son iguales"
						NombresIguales()
						Esperar 3 Segundos
					"4":
						Escribir "Dadas dos frase indicar la de mayor longitud"
						DosFrasesMayorLongitud()
						Esperar 3 Segundos
					"5":
						Escribir "Indicar cuantas ,.;: hay en una cadena"
						CuantosPuntosCadenas()
						Esperar 3 Segundos
					"6":
						Escribir "Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
						VocalesConsonantesDigitosHay()
						Esperar 3 Segundos
					"7":
						Escribir "Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
						PalabrasHayEnFrase()
						Esperar 3 Segundos
					"8":
						Escribir "Presentar la suma de los digitos de una cedula"
						SumaCedula()
						Esperar 3 Segundos
					"9":
						Escribir "Indicar si una palabra es palindroma"
						PalabraPalindroma()
						Esperar 3 Segundos
					"10":
						Escribir "Presenta la posicion de un caracter cualquiera dentro de una cadena"
						PosicionCaracterDEntroCadena()
						Esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalidad..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		"3":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Arreglos",menuArreglos,11)
				Segun opcn Hacer
					"1":
						Escribir "Dado un arreglo cualquiera presentarlo"
						PresentarArreglo()
						Esperar 3 Segundos
					"2":
						Escribir "Presentar los numeros pares de un arreglo"
						ParesDeArreglo()
						Esperar 3 Segundos
					"3":
						Escribir "Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
						GuardarNumeroEnArregloNegativos()
						Esperar 3 Segundos
					"4":
						Escribir "Dado un arreglo de nombres presentar el primer caracter de cada nombre"
						PresentarPrimerCaracterDENombre()
						Esperar 3 Segundos
					"5":
						Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
						TotalCantidadPromedioArreglo()
						Esperar 3 Segundos
					"6":
						Escribir "Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
						PresentarAlREvezMultiplosDe5()
						Esperar 3 Segundos
					"7":
						Escribir "Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
						PrimeroMedioUltimoElementoArreglo()
						Esperar 3 Segundos
					"8":
						Escribir "Dado un arreglo copiarlo en otro y presentarlo"
						CopiarUnArregloEnOtro()
						Esperar 3 Segundos
					"9":
						Escribir "Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
						DosArreglosCopiarOtroArreglo() 
						Esperar 3 Segundos
					"10":
						Escribir "Dado una serie de numeros guarda en un arreglo los factoriales"
						GuardaNumerosEnArregloFactorial()
						Esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalidad..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		"4":
			Escribir "Gracias por usar el Sistema"
			Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo
