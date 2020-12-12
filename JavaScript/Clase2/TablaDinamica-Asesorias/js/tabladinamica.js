function Add_Row(){
    //Obtención de datos
    var Nombre = ObtenerValor("New_Name");
    var Ciudad = ObtenerValor("New_City");
    var Edad = ObtenerValor("New_Age");
    var Table = document.getElementById("Data_Table");
    var TableSize = Table.rows.length - 1 ; //Resta la fila de nuevo contenido
 
    //Datos de Resultado                    //Procesamiento de datos
    Table.insertRow(TableSize).outerHTML = CreateRow(TableSize, Nombre, Ciudad, Edad);
 
    //Limpieza
    ResetValues()
    Hide("Button_Save"+TableSize);
    Show("Button_Edit"+TableSize);
}
 
//Se utiliza para obtener el valor de un objeto (Inputs)
function ObtenerValor(IDInput){
    return document.getElementById(IDInput).value;
}
 
//Obtener el valor del codigo de HTML (Ej. Valores que se encuentro dentro de una etiqueta <h1>TITULO<h1>)
function ObtenerRegistro(IDEtiqueta){
    return document.getElementById(IDEtiqueta).innerHTML;
}
 
function ObtenerObjeto(IDEtiqueta){
    return document.getElementById(IDEtiqueta);
}
 
function CreateRow(Numero, Nombre, Ciudad, Edad){
    return '<tr id="Row_'+ Numero +'"><td id = "Name_Row'+ Numero+'">'+ Nombre +'</td><td id = "City_Row'+ Numero +'">' + Ciudad + '</td><td id = "Age_Row' + Numero +'">' + Edad + '</td><td><input id="Button_Edit' + Numero +'" type="button" onclick="Edit_Row('+Numero+');" value="Editar" class="btn btn-outline-warning btn-sm"/><input id="Button_Save' + Numero +'" type="button" onclick="Save_Row('+Numero+');" value="Guardar" class="btn btn-outline-success btn-sm"/><input id="Button_Delete' + Numero +'" type="button" onclick="Delete_Row('+Numero+');" value="Eliminar" class="btn btn-outline-danger btn-sm"/></td></tr>';
}
 
function ResetValues()
{
    document.getElementById("New_Name").value = "";
    document.getElementById("New_City").value = "";
    document.getElementById("New_Age").value = "";
}
 
function Edit_Row(Row_Number)
{
    Show("Button_Save"+Row_Number);
    Hide("Button_Edit"+Row_Number);
    var Cell_Name = ObtenerRegistro("Name_Row" + Row_Number);
    var Cell_City = ObtenerRegistro("City_Row" + Row_Number);
    var Cell_Age = ObtenerRegistro("Age_Row" + Row_Number);
 
    Object_Name = ObtenerObjeto("Name_Row" + Row_Number);
    Object_City = ObtenerObjeto("City_Row" + Row_Number);
    Object_Age = ObtenerObjeto("Age_Row" + Row_Number);
 
    Object_Name.innerHTML = '<input type="text" id="Edit_Name'+ Row_Number +'" value = "' + Cell_Name + '" />';
    Object_City.innerHTML = '<input type="text" id="Edit_City'+ Row_Number +'" value = "' + Cell_City + '" />';
    Object_Age.innerHTML = '<input type="text" id="Edit_Age'+ Row_Number +'" value = "' + Cell_Age + '" />';
}
 
function Save_Row(Row_Number)
{
    Hide("Button_Save"+Row_Number);
    Show("Button_Edit"+Row_Number);
 
    var Cell_Name = ObtenerValor("Edit_Name"+Row_Number);
    var Cell_City = ObtenerValor("Edit_City"+Row_Number);
    var Cell_Age = ObtenerValor("Edit_Age"+Row_Number);
 
    Object_Name = ObtenerObjeto("Name_Row" + Row_Number);
    Object_City = ObtenerObjeto("City_Row" + Row_Number);
    Object_Age = ObtenerObjeto("Age_Row" + Row_Number);
 
    Object_Name.innerHTML = Cell_Name;
    Object_City.innerHTML = Cell_City;
    Object_Age.innerHTML = Cell_Age;
}
 
function Delete_Row(Row_Number)
{
    Row_Data = ObtenerObjeto("Row_"+ Row_Number);
    Row_Data.innerHTML = "";
}
 
function Hide(IDObject)
{
    document.getElementById(IDObject).style.display = "none";
}
 
function Show(IDObject)
{
    document.getElementById(IDObject).style.display = "block";
}