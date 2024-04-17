Proceso Encuestas
	Definir i, nEn, tPersonas, cantBici, cantMoto, cantAuto, cantPubli Como Entero;
	Definir tipodevehiculo Como Entero;
	Definir distbici, distmoto, distauto, distpubli, dist Como Real;
	Definir distprbici, distprmoto, distprauto, distprpubli Como Real;
	Definir pAuto, pBici, pPubli Como Real;
	Definir cantTotalPersonas, cantTotalBici, cantTotalAuto, cantTotalPubli Como Entero;
	Escribir 'ingrese cantidad de encuestadores';
	Leer nEn;
	cantTotalPersonas <- 0;
	cantTotalBici <- 0;
	cantTotalAuto <- 0;
	cantTotalPubli <- 0;
	i <- 1;
	Para i<-1 Hasta nEn Con Paso 1 Hacer
		cantBici <- 0;
		cantMoto <- 0;
		cantAuto <- 0;
		cantPubli <- 0;
		distbici <- 0;
		distmoto <- 0;
		distauto <- 0;
		distpubli <- 0;
		Escribir 'Ingrese Tipo de Vehiculo - Ingrese 0 para salir';
		Leer tipodevehiculo;
		Mientras tipodevehiculo<>0 Hacer
			Escribir 'Ingrese distancia';
			Leer dist;
			Segun tipodevehiculo Hacer
				1:
					cantBici <- cantBici+1;
					distbici <- distbici+dist;
				2:
					cantMoto <- cantMoto+1;
					distmoto <- distmoto+dist;
				3:
					cantAuto <- cantAuto+1;
					distauto <- distauto+dist;
				4:
					cantPubli <- cantPubli+1;
					distpubli <- distpubli+dist;
			FinSegun
			Escribir 'Ingrese tipo de Vehiculo  - Ingrese 0 para salir';
			Leer tipodevehiculo;
		FinMientras
		tPersonas <- cantBici+cantMoto+cantAuto+cantPubli;
		Escribir 'Cantidad de Personas Encuestadas: ', tPersonas, '.';
		Si cantBici>0 Entonces
			distprbici <- distbici/cantBici;
			Escribir 'Cantidad de Personas con Bicicleta: ', cantBici, ;
			Escribir 'Distancia Promedio Personas en Bicicleta: ', distprbici, '.';
		SiNo
			Escribir 'No se registraron datos para la Categoria Bicicletas para el Encuestador ', i, '.';
		FinSi
		Si cantMoto>0 Entonces
			distprmoto <- distmoto/cantMoto;
			Escribir 'Cantidad de Personas con Moto: ', cantMoto, ;
			Escribir 'Distancia Promedio Personas en Moto: ', distprmoto, '.';
		SiNo
			Escribir 'No se registraron datos para la Categoria Bicicletas para el Encuestador ', i, '.';
		FinSi
		Si cantAuto>0 Entonces
			distprauto <- distauto/cantAuto;
			Escribir 'Cantidad de Personas con Auto: ', cantAuto, ;
			Escribir 'Distancia Promedio Personas en Auto: ', distprauto, '.';
		SiNo
			Escribir 'No se registraron datos para la Categoria Bicicletas para el Encuestador ', i, '.';
		FinSi
		Si cantPubli>0 Entonces
			distprpubli <- distpubli/cantPubli;
			Escribir 'Cantidad de Personas en Transporte Público: ', cantPubli, ;
			Escribir 'Distancia Promedio Personas en Transporte Público: ', distprpubli, '.';
		SiNo
			Escribir 'No se registraron datos para la Categoria Bicicletas para el Encuestador ', i, '.';
		FinSi
		cantTotalPersonas <- cantTotalPersonas+tPersonas;
		cantTotalBici <- cantTotalBici+cantBici;
		cantTotalAuto <- cantTotalAuto+cantAuto;
		cantTotalPubli <- cantTotalPubli+cantPubli;
	FinPara
	Escribir 'Cantidad Total de Encuestados: ', cantTotalPersonas, '.';
	Si cantTotalPersonas>0 Entonces
		pBici <- (cantTotalBici/cantTotalPersonas)*100;
		Escribir 'Porcentaje de Personas en Bicicleta: ', pBici, '%.';
		pAuto <- (cantTotalAuto/cantTotalPersonas)*100;
		Escribir 'Porcentaje de Personas en Auto: ', pAuto, '%.';
		pPubli <- (cantTotalPubli/cantTotalPersonas)*100;
		Escribir 'Porcentaje de Personas en Transporte Público: ', pPubli, '%.';
	SiNo
		Escribir 'Error, ingrese mas datos';
	FinSi
FinProceso
