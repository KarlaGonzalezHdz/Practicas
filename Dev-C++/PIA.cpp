
/**************************************************** PROYECTO FINAL **********************************************************************
NOMBRE: KARLA JOSEFINA GONZALEZ HERNANDEZ
MATRICULA: 8076168
MODULO: 2 C++
FECHA: 24 DE MAYO DEL 2020

************************************************  DESCRIPCIÓN DEL PROYECTO ****************************************************************

EL PROYECTO QUE ESCOGÍ FUE LA FUNCIONALIDAD DE UNA PASTELERIA, EN DONDE EL USUARIO PODRA VER CUATRO SECCIONES:
1. PASTELES -> ESTE SE VA A PODER DIVIDIR EN 3 AREAS -> PASTELES DE 3 LECHES / PASTELES DE CHOCOLATE / PASTELES DE FRUTAS , AQUI 
SE VA A PODER ESCOJER Y PAGAR TU COMPRA DE PASTELES.
2- CURSOS DE REPOSTERIA -> DONDE SE PODRÁ REGISTRAR UN GRUPO DE PERSONAS PARA EL CURSO.
3- OFERTAS -> DONDE SEGÚN EL DIA EN EL QUE SE ENCUENTREN SE ARROJARÁ LA OFERTA QUE EXISTE EN LA PASTELERIA.

********************************************** FIN DEL DESCRIPCION DEL PROYECTO ************************************************************/

//PREPROCESADORES Y LIBRERIAS
#include <iostream>
#include <windows.h>
#include <locale.h>

using namespace std;

//VARIABLES GLOBALES
float pasteleria() , pasteles(), reposteria(),ofertas(),  p1() , p2(), p3() , pago, cambio, total;
int opcion, cantidad;

//FUNCION PRINCIPAL
int main()
{
	setlocale(LC_ALL, "Spanish");
	//VARIABLES LOCALES
	int sucursal , pedido, opcion, opcionSeleccionada, regresar;
	
	//USO DEL DO...WHILE
	do {
		system("cls");
		system("color 70");
		//INSTRUCCIONES COUT AND CIN
		cout << "\n************************ BIENVENIDO A LA PASTELERIA GONZÁLEZ*************************************\n";
		cout << "\nSelecciona la opcion que deseas:\n(1)Pasteles\n(2)Cursos de Reposteria\n(3)Ofertas\n(4)Salir\n\n";
		cin >> opcion;
		
		//USO DEL WHILE
		while(opcion <1 || opcion > 6)
		{
			cout << "\nError..., la opción que ingresaste no es valida, intenta de nuevo\n";
			cout << "\nSelecciona la opcion que deseas: \n(1)Pasteles\n(2)Reposteria\n(3)Ofertas\n(4)Salir\n\n";
			cin >> opcion;
		}
		
		//USO DEL SWITCH
		switch(opcion){
			case 1:
				opcionSeleccionada = pasteles();
				break;
			case 2:
				opcionSeleccionada = reposteria();
				break;
			case 3: 
				opcionSeleccionada = ofertas();
				break;
		
			case 4: 
				cout << "\n*******************************Saliendo*********************************************\n";
				break;
		}	
		
		cout << "\n¿Deseas volver al menú principal para hacer otro movimiento?\n(1)Sí\n(0)No\n";
		cin >> regresar;
		
		while(regresar<0 || regresar > 1)
		{
			cout << "\nError, opción no valida, por favor ingresa otra opción\n";
			cout << "\n¿Deseas volver al menú principal para hacer otro movimiento?\n(1)Sí\n(0)No\n";
			cin >> regresar;
		}
		
	} while(regresar==1);
	
	system("cls");
	cout << "\n***************************** GRACIAS POR  TU PREFERENCIA ***************************************\n";
	cout << "\n********************************** HASTA PRONTO *************************************************\n";
		
}


//FUNCIONES
float pasteles(){
	int opcion , opcionSeleccionada;
	//SYSTEM COLOR Y SYSTEM CLS
	system("cls");
	system ("color 5B ");
	cout << "\n******************************** BIENVENIDO AL ÁREA DE PASTELES*********************************************\n";
	cout << "Selecciona la categoria que deseas: \n(1)Pasteles de chocolate\n(2)Pasteles de frutas\n(3)Pasteles de tres leches\n(4)Salir\n\n";
	cin >> opcion;
	
	while(opcion <1 || opcion > 5)
	{
		cout << "\nError..., la opción que ingresaste no es valida, intenta de nuevo\n";
		cout << "Selecciona la categoria que deseas: \n(1)Pasteles de chocolate\n(2)Pasteles de frutas\n(3)Pasteles de tres leches\n(4)Salir\n\n";
		cin >> opcion;
	}
		
	switch(opcion){
		case 1:
			opcionSeleccionada = p1();
			break;
		case 2:
			opcionSeleccionada = p2();
			break;
		case 3:
			opcionSeleccionada = p3();
			break;
		case 4:
			opcionSeleccionada = 0;
			cout << "\n*******************************Saliendo*********************************************\n";
			break;			
	}	
	
	return opcionSeleccionada;
}

float reposteria(){
	int oportunidad, equipo , i , edad; 
	char nombre[30];
	system("cls");
	system ("color 0F");
	cout << "\n******************************** BIENVENIDO A LOS CURSOS DE REPOSTERIA*********************************************\n\n";
	cout << "\nLa pasteleria Gonzalez quiere darle la oportunidad de que usted pueda emprender en el area de reposteria, aquí nosotros te capacitamos para que cumplas tus suenos\n\n";
	cout << "\nRequisitos:\n(1)Equipo de N personas\n(2)InformacionPersonal\n(3)Muchas ganas de aprender\n";
	cout << "\n¿Deseas aprovechar esta oportunidad?\n(1)Sí\n(0)No\n";
	cin >> oportunidad;
	
	while(oportunidad < 0  || oportunidad > 1)
	{
		cout << "\nError, Opcion no validad, porfavor ingresar otra opcion\n";
		cout << "\n¿Deseas aprovechar esta oportunidad?\n(1)Sí\n(0)No\n";
		cin >> oportunidad;
	}
	 
	 //IF SIMPLE
	if(oportunidad == 1){
		cout << "\n************************GRACIAS POR QUERER SER PARTE DE LA PASTELERIA GONZALEZ*****************************\n";
		cout << "\nIngresa la cantidad de personas que van a formar tu equipo\n";
		cin >> equipo;
		
		while(equipo <1){
			cout << "\nError, tu equipo debe ser formado por más de dos personas\n";
			cout << "\nIngresa la cantidad de personas que van a formar tu equipo\n";
			cin >> equipo;
		}
		
		// USO DEL FOR
		for(i=1; i<=equipo; i++)
		{
			cout << "\nEscribe el nombre de tu compañera de equipo numero " << i << " :\t";
			fflush(stdin);
			cin.get(nombre,30);
			cout << "\nEscribe la edad de tu compañera de quipo numero " << i << " :\t";
			cin >> edad;
				cout << "\nGRACIAS, YA ESTAS REGISTRADA EN EL CURSO DE REPOSTERIA\n";
		}
		
		return oportunidad;
	
	}
		
}

float ofertas(){
	int dia, opcion;
	system("cls");
	system ("color 79 ");
	cout << "\n******************************** BIENVENIDO AL ÁREA DE OFERTAS*********************************************\n\n";
	cout << "\nIngresa el día para conocer las ofertas que existen en la pasteleria Gonzalez\n";
	cout << "\n(1)Domingos\n(2)Lunes\n(3)Martes\n(4)Miercoles\n(5)Jueves\n(6)Viernes\n(7)Sabado\n";
	cin >> dia;
	
	while(dia<1 || dia>8)
	{
	cout << "\nIngresa el día para conocer las ofertas que existen en la pasteleria Gonzalez\n";
	cout << "\n(1)Domingos\n(2)Lunes\n(3)Martes\n(4)Miercoles\n(5)Jueves\n(6)Viernes\n(7)Sabado\n";
	cin >> dia;
	}
	
	//IF MULTIPLE
	if(dia==1){
		cout << "\n\nLO SENTIMOS, NO HAY OFERTAS POR EL MOMENTO EN PASTELES LOS DOMINGOS\n\n";
	} else if(dia==2){
		cout << "\n\nEN LUNES HAY 2X1 EN TODOS LOS PASTELES DE 3 LECHES\n\n";
	} else if(dia==3){
		cout << "\n\nEN MARTES HAY 2X 1 1/2 EN TODOS LOS PASTELES DE FRUTAS\n\n";
	} else if(dia ==4){
		cout << "\n\nEN MIERCOLES ESTA TODAS LAS ENTREGAS A DOMICIOLIOS GRATIS.\n\n";
	}else if(dia==5){
		cout << "\n\nEN JUEVES HAY 2X1 EN TODOS LOS PASTELES DE CHOCOLATE\n\n";
	}else if (dia==6){
		cout << "\n\nEN VIERNES HAY 2X 1 1/2 EN TODOS LOS PASTELES DE 3 LECHES\n\n";
	} else {
		cout << "\n\nLO SENTIMOS, NO HAY OFERTAS POR EL MOMENTO EN PASTELES LOS SABADOS\n\n";
	} 
	
}

float p1(){

	system("cls");
	system("color 65 ");
	cout << "\n******************************** PASTELES DE CHOCOLATE*********************************************\n";
	cout << "\nSelecciona el pastel que deseas: \n(1)Bombon\n(2)Carlos V Grande\n(3)Carlos V Mediano\n(4)Cheesecake Tortuga\n(5)Diplomatico\n(6)Pastel Aleman\n(7)Salir\n";
	cin >> opcion;
	
	while(opcion <1 || opcion > 7)
	{
		cout << "\nError..., Ingrese una opción valida\n";
		cout << "\nSelecciona el pastel que deseas: \n(1)Bombon\n(2)Carlos V Grande\n(3)Carlos V Mediano\n(4)Cheesecake Tortuga\n(5)Diplomatico\n(6)Pastel Aleman\n(7)Salir\n";
		cin >> opcion;
	}
	
	switch(opcion){
		
		case 1:
			system("cls");
			cout << "\n******************************* PASTEL DE CHOCOLATE BOMBÓN********************************\n";
			cout << "\nDESCRIPCION:\n Pastel sabor chocolate con relleno y cubierta de queso y ganashe de chocolate.\n";
			cout << "\nPRECIO: $330.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*330.00;
			break;
				
		case 2:
			system("cls");
			cout << "\n*************** PASTEL DE CHOCOLATE CARLOS V GRANDE********************************\n";
			cout << "\nDESCRIPCION:\n Pastel sabor chocolate con cubierta de queso sabor a chocolate.\n";
			cout << "\nPRECIO: $360.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*360.00;
			break;
			
		case 3: 
			system("cls");
			cout << "\n*************** PASTEL DE CHOCOLATE CARLOS V MEDIANO********************************\n";
			cout << "\nDESCRIPCION:\n Pastel sabor chocolate con cubierta de queso sabor a chocolate.\n";
			cout << "\nPRECIO: $280.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*360.00;
			break;
			
		case 4:
			system("cls");
			cout << "\n*************** PASTEL DE CHOCOLATE CHEESECAKE TORTUGA********************************\n";
			cout << "\nDESCRIPCION:\n Cheesecake con galleta de chocolate, nuez con caramelo, cajeta y chispas de chocolate.\n";
			cout << "\nPRECIO: $330.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*330.00;
			break;
			
		case 5: 
			system("cls");
			cout << "\n*************** PASTEL DE CHOCOLATE DIPLOMATICO********************************\n";
			cout << "\nDESCRIPCION:\n Pastel sabor a chocolate y flan sabor vainilla con cajeta y nuez.\n";
			cout << "\nPRECIO: $280.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea\t";
			cin >> cantidad;
			total = cantidad*280.00;
			break;
			
		case 6:
			system("cls");
			cout << "\n*************** PASTEL DE CHOCOLATE PASTEL ALEMÁN********************************\n";
			cout << "\nDESCRIPCION:\n Pastel sabor chocolate con relleno y cubierta de betún con coco y nuez.\n";
			cout << "\nPRECIO: $250.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*250.00;
			break;
			
		case 7:
			cout << "\n*******************************Saliendo*********************************************\n"; 
			break;
			
	}
			//IMPRESION DE INFORMACION
			cout << "\nEl total de tu compra es de: " << total << "\n";
			cout << "\nIngrese su pago porfavor:\t";
			cin >> pago;
			
			while(pago <total){
				cout << "Error..., ingrese una cantidad que cubra su pago\n";
				cout << "\nIngrese su pago porfavor:\t";
				cin >> pago;
			}
			
			cambio = pago - total;
			cout << "\nUsted ha pagado con:  $ " << pago << ".00 MXN " << " por lo tanto su cambio es de:  $" << cambio << ".00 MXN\n";
			return cambio;
}

float p2(){

	system("cls");
	system("color 70");
	cout << "\n******************************** PASTELES DE FRUTAS*********************************************\n";
	cout << "\nSelecciona el pastel que deseas: \n(1)Capricho de Mango\n(2)Cheesecake Fresas\n(3)Fresas con Crema\n(4)Pastel de Zanahoria\n(5)Salir\n";
	cin >> opcion;
	
	while(opcion <1 || opcion > 5)
	{
		cout << "\nError..., Ingrese una opción valida\n";
		cout << "\nSelecciona el pastel que deseas: \n(1)Capricho de Mango\n(2)Cheesecake Fresas\n(3)Fresas con Crema\(4)Pastel de Zanahoria\n(5)Salir\n";
		cin >> opcion;
	}
	
	switch(opcion){
		case 1:
			system("cls");
			cout << "\n*************** PASTEL DE FRUTAS CAPRICHO DE MANGO ********************************\n";
			cout << "\nDESCRIPCION:\n Pastel sabor vainilla con relleno cremoso sabor queso y mango, cubierto con crema sabor mango, mango y cereza.\n";
			cout << "\nPRECIO: $330.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*330.00;
			break;
			
		case 2:
			system("cls");
			cout << "\n*************** PASTEL DE FRUTAS CHEESECAKES FRESAS ********************************\n";
			cout << "\nDESCRIPCION:\n Cheesecake con cubierta de crema sabor nata y fresas\n";
			cout << "\nPRECIO: $360.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*360.00;
			break;
			
		case 3:
			system("cls");
			cout << "\n*************** PASTEL DE FRUTAS FRESAS CON CREMAS ********************************\n";
			cout << "\nDESCRIPCION:\n Pastel sabor vanilla relleno y cubierta de crema sabor a yogurt y mermelada de fresa y fresas\n";
			cout << "\nPRECIO: $240.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*240.00;

			break;
			
		case 4: 
			system("cls");
			cout << "\n*************** PASTEL DE ZANAHORIAS ********************************\n";
			cout << "\nDESCRIPCION:\n Pastel sabor a especias con zanahoria, nuez y pasas con relleno y cubierta de queso, nuez y ganashe de chocolate.\n";
			cout << "\nPRECIO: $330.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*330.00;
	
			break;
			
		case 5:
			cout << "\n*******************************Saliendo*********************************************\n";
			break;
	}
		cout << "\nEl total de tu compra es de: " << total << "\n";
			cout << "\nIngrese su pago porfavor:\t";
			cin >> pago;
			
			while(pago <total)
			{
				cout << "Error..., ingrese una cantidad que cubra su pago\n";
				cout << "\nIngrese su pago porfavor:\t";
				cin >> pago;
			}
			
			cambio = pago - total;
			cout << "\nUsted ha pagado con:  $ " << pago << ".00 MXN" << "por lo tanto su cambio es de: " << cambio << "\n";
}

float p3(){
	system("cls");
	system("color 0F");
	cout << "\n******************************** PASTELES DE TRES LECHES*********************************************\n";
	cout << "\nSelecciona el pastel que deseas: \n(1)3 Leches C/Fresas\n(2)fusion Choco Almendras\n(3)3 leches de chocolate\(4)Fusion Moras\n(5)Salir\n";
	cin >> opcion;
	
	while(opcion <1 || opcion > 7)
	{
		cout << "\nError..., Ingrese una opción valida\n";
		cout << "\nSelecciona el pastel que deseas: \n(1)3 Leches C/Fresas\n(2)fusion Choco Almendras\n(3)3 leches de chocolate\(4)Fusion Moras\n(5)Salir\n";
		cin >> opcion;
	}
	
	switch(opcion){
		case 1:
			system("cls");
			cout << "\n*************** PASTEL DE 3 LECHES C/FRESAS********************************\n";
			cout << "\nDESCRIPCION:\n Pastel mojado con mezcla de leches, con crema sabor nata y fresas.\n";
			cout << "\nPRECIO: $280.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*280.00;
			break;
		case 2:
			system("cls");
			cout << "\n*************** PASTEL DE FUSION CHOCO ALMENDRAS********************************\n";
			cout << "\nDESCRIPCION:\n Pastel 3 leches sabor chocolate, relleno con base cheesecake, con cobertura cremosa de chocolate y almendras.\n";
			cout << "\nPRECIO: $380.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*380.00;
	
			break;
		case 3:
			system("cls");
			cout << "\n*************** PASTEL DE  3 LECHES DE CHOCOLATE********************************\n";
			cout << "\nDESCRIPCION:\n Pastel sabor chocolate con relleno y cubierta de queso y ganashe de chocolate.\n";
			cout << "\nPRECIO: $280.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*280.00;
			break;
		case 4:
			system("cls");
			cout << "\n*************** PASTEL DE FUSION MORAS********************************\n";
			cout << "\nDESCRIPCION:\n Pastel 3 leches, relleno con base cheesecake, cobertura de moras, decorado con fresa, cereza y moras azules.\n";
			cout << "\nPRECIO: $380.00 MXN\n";
			cout << "\nIngresa la cantidad de pasteles que usted desea:\t";
			cin >> cantidad;
			total = cantidad*380.00;
			break;
		
		case 5:
			cout << "\n*******************************Saliendo*********************************************\n";
			break;
	}
	
			cout << "\nEl total de tu compra es de: " << total << "\n";
			cout << "\nIngrese su pago porfavor:\t";
			cin >> pago;
			
			while(pago <total){
				cout << "\nError..., ingrese una cantidad que cubra su pago\n";
				cout << "\nIngrese su pago porfavor:\t";
				cin >> pago;
			}
			cambio = pago - total;
			cout << "\nUsted ha pagado con:  $ " << pago << ".00 MXN" << "por lo tanto su cambio es de: " << cambio << "\n";
			
			return cambio;
}
