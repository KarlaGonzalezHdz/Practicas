#include <windows.h>
#include <iostream>
#include <locale.h>

using namespace std;


/* Sintaxis de clase
 	class + nombre de la clase{...};
 	
*/

class telefonos {
	//atributos (las caracteristicas de los objetos de la clase en la que estan situadas.)
	private : 
	string marca;
	string modelo;
	int capacidad;
	//metodos ->son las acciones que realiza cada objeto que este dentro de la claase
	public:
	telefonos(string, string, int); //contructor
	void encender();
	void almacenamiento();
		

};


//trabajando con el constructor
telefonos::telefonos(string _marca , string _modelo ,int _capacidad){
	/*Igualar los valores del contructor con los de la clase*/
	
	marca = _marca;
	modelo = _modelo;
	capacidad = _capacidad;
	
	
}

void telefonos::encender(){
	cout << "Tu telefono de marca " << marca ;
	cout << " ha encendido correctamente\n";
}


void telefonos::almacenamiento(){
	if(capacidad <= 16){
		cout << "\nEl telefono tiene muy poco almacenamiento\n";
	}	else if (capacidad >17 && capacidad <=32){
		cout << "\nEl telefono tiene buen almacenamiento\n";
	}	else if (capacidad >=33 && capacidad <=128){
		cout << "\nEl telefono tiene muy buena almacenamiento\n";
	}
}

//funcion principal
int main()
{
	setlocale (LC_ALL , "Spanish");
	
	//crear objetos de la clase antes realizada
	
	/* nombre de la clase + nombre_del_objeto = constructor*/
	
	telefonos tel1 = telefonos("motorola", "moto g7" , 32 );
	telefonos tel2 = telefonos("hawei", "p20 mate litgh" , 64 );
	telefonos tel3 = telefonos("Samsung", "sambsung g7" , 45 );
	
	//llamar los metodos
	
	cout <<"\nObjeto 1\n";
	tel1.encender();
	tel1.almacenamiento();
	cout <<"\nObjeto 2\n";
	tel2.encender();
	tel2.almacenamiento();
	cout <<"\nObjeto 3\n";
	tel3.encender();
	tel3.almacenamiento();
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}



