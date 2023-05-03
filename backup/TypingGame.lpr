// Hecho el 26/10/2019
// Por: BlackTomb7 (AKA -- Tomas Rueda)

PROGRAM TypingGame;
USES crt;

VAR
  rndNum, mult, combo, puntos, cant, delayTime: integer;
  timer: real;
  rndWord: array[0..99] of string;
  word1, word2, word3, word4, word5: string;
  key, selMenu, selModo, selTime: char;
  bucle: boolean;

BEGIN
  cursoroff();

  //Menu
  textbackground(black);
  textcolor(lightcyan);
  writeln();
  writeln('       TYPER!');
  writeln();
  writeln('By: BlackTomb7 AKA Tur AKA Tomas Rueda');
  textcolor(lightgreen);
  writeln();
  writeln(' Simplemente deberas escribir la palabra superior lo mas rapido que puedas!');
  writeln();
  writeln(' Elige una opcion:');
  writeln('       1. JUGAR');
  writeln('       2. SALIR');
  selMenu := readkey();
  clrscr();

  ///////////////////////////// OPCION 1.JUGAR /////////////////////////////
  if selMenu = '1' then
  begin

   ///// MODO DE JUEGO /////
   writeln();
   writeln('  Selecciona el modo de juego: ');
   writeln();
   writeln();
   writeln('   1. ARCADE -- Tendras 2 segundos para escribir cada palabra ');
   writeln('                y deberas conseguir la mayor puntuacion! ');
   writeln();
   writeln('   2. CONTRARRELOJ -- Tendras determinado tiempo para escribir ');
   writeln('                      la mayor cantidad de palabras que puedas!');
   selModo := readkey();
   clrscr();

   ///// LISTA DE PALABRAS /////
   rndWord[0] := 'Palabra ';
   rndWord[1] := 'Juego ';
   rndWord[2] := 'Hola ';
   rndWord[3] := 'Numero ';
   rndWord[4] := 'Persona ';
   rndWord[5] := 'Universo ';
   rndWord[6] := 'Risa ';
   rndWord[7] := 'Suma ';
   rndWord[8] := 'Resta ';
   rndWord[9] := 'Prueba ';
   rndWord[10] := 'Azucar ';
   rndWord[11] := 'Arbol ';
   rndWord[12] := 'Carro ';
   rndWord[13] := 'Fregadero ';
   rndWord[14] := 'Columpio ';
   rndWord[15] := 'Juguetes ';
   rndWord[16] := 'Vestido ';
   rndWord[17] := 'Pera ';
   rndWord[18] := 'Limon ';
   rndWord[19] := 'Cabeza ';
   rndWord[20] := 'Sucio ';
   rndWord[21] := 'Estatua ';
   rndWord[22] := 'Perro ';
   rndWord[23] := 'Botella ';
   rndWord[24] := 'Humano ';
   rndWord[25] := 'Leche ';
   rndWord[26] := 'Bocadillo ';
   rndWord[27] := 'Hermana ';
   rndWord[28] := 'Servilleta ';
   rndWord[29] := 'Ropa ';
   rndWord[30] := 'Castillo ';
   rndWord[31] := 'Enfermo ';
   rndWord[32] := 'Barriga ';
   rndWord[33] := 'Bicicleta ';
   rndWord[34] := 'Botas ';
   rndWord[35] := 'Zapatos ';
   rndWord[36] := 'Futbol ';
   rndWord[37] := 'Foca ';
   rndWord[38] := 'Pato ';
   rndWord[39] := 'Hermana ';
   rndWord[40] := 'Perro ';
   rndWord[41] := 'Sombrilla ';
   rndWord[42] := 'Tienda ';
   rndWord[43] := 'Lobo ';
   rndWord[44] := 'Cocodrilo ';
   rndWord[45] := 'Silla ';
   rndWord[46] := 'Cinco ';
   rndWord[47] := 'Falda ';
   rndWord[48] := 'Oso ';
   rndWord[49] := 'Verde ';
   rndWord[50] := 'Globos ';
   rndWord[51] := 'Abuelo ';
   rndWord[52] := 'Percha ';
   rndWord[53] := 'Sarten ';
   rndWord[54] := 'Verano ';
   rndWord[55] := 'Moto ';
   rndWord[56] := 'Camisa ';
   rndWord[57] := 'Hombro ';
   rndWord[58] := 'Tia ';
   rndWord[59] := 'Gaviota ';
   rndWord[60] := 'Gracias ';
   rndWord[61] := 'Enfermo ';
   rndWord[62] := 'Gorra ';
   rndWord[63] := 'Mar ';
   rndWord[64] := 'Pared ';
   rndWord[65] := 'Piel ';
   rndWord[66] := 'Tres ';
   rndWord[67] := 'Platano ';
   rndWord[68] := 'Lechuga ';
   rndWord[69] := 'Frutilla ';
   rndWord[70] := 'Mendigo ';
   rndWord[71] := 'Pista ';
   rndWord[72] := 'Tabaco ';
   rndWord[73] := 'Telefono ';
   rndWord[74] := 'Salvaje ';
   rndWord[75] := 'Dificil ';
   rndWord[76] := 'Literatura ';
   rndWord[77] := 'Granero ';
   rndWord[78] := 'Prevenir ';
   rndWord[79] := 'Tallarines ';
   rndWord[80] := 'Sifon ';
   rndWord[81] := 'Planeta ';
   rndWord[82] := 'Hermoso ';
   rndWord[83] := 'Cerrar ';
   rndWord[84] := 'Paz ';
   rndWord[85] := 'Ducha ';
   rndWord[86] := 'Llamar ';
   rndWord[87] := 'Amistoso ';
   rndWord[88] := 'Reflector ';
   rndWord[89] := 'Ocupado ';
   rndWord[90] := 'Bate ';
   rndWord[91] := 'Disfraz ';
   rndWord[92] := 'Envolver ';
   rndWord[93] := 'Muchos ';
   rndWord[94] := 'Usar ';
   rndWord[95] := 'Heroe ';
   rndWord[96] := 'Pluton ';
   rndWord[97] := 'Asfalto ';
   rndWord[98] := 'Cajonera ';
   rndWord[99] := 'Velero ';


    //Tiempo segun modo de juego
    if selModo = '1' then timer := 2 * 60 //Arcade
    else if selModo = '2' then //Contrarreloj
     begin
      writeln();
      writeln('  Elige cuanto tiempo deseas: ');
      writeln();
      writeln();
      writeln('  1. 15 segundos');
      writeln('  2. 30 segundos');
      writeln('  3. 60 segundos');
      selTime := readkey();

      case selTime of
       '1': timer := 15 * 60;  //Todos los valores te tiempo se multiplican por 60
       '2': timer := 30 * 60;
       '3': timer := 60 * 60;
       else exit();
      end;
     end
    else exit();

    clrscr();

    //Elegir palabra
    randomize(); //Evita que la funcion "Random" siempre de los mismos valores
    rndNum := Random(100); //"0" incluido y "100" excluido, 100 opciones en total
    word1 := rndWord[rndNum];
    rndNum := Random(100);
    word2 := rndWord[rndNum];
    rndNum := Random(100);
    word3 := rndWord[rndNum];
    rndNum := Random(100);
    word4 := rndWord[rndNum];
    rndNum := Random(100);
    word5 := rndWord[rndNum];

    //Se escriben las palabras por primera vez
    gotoxy(2, 2); textcolor(white);
    write(word1); textcolor(lightgreen);
    gotoxy(2, 3);
    write(word2);
    gotoxy(2, 4);
    write(word3);
    gotoxy(2, 5);
    write(word4);
    gotoxy(2, 6);
    write(word5);

    //Tiempo antes de empezar
    for delayTime := 3 downto 0 do
    begin
     gotoxy(3, 8);
     write('Empezando en ', delayTime);
     delay(1000);
     gotoxy(3, 8);
     write('                '); //Borrar texto "Empezando en"
    end;


    puntos := 0;  //Inicializar las variables de puntaje
    mult := 1;
    combo := 0;
    cant := 0;

    ///// BUCLE PRINCIPAL /////
    bucle := true; //Bucle por palabra
    while bucle = true do
     begin

      if timer = 0 then //Si se termina el tiempo
       begin
        clrscr();
        writeln();
        writeln('  Total de palabras escritas: ', cant);
        writeln('  Puntaje final: ', puntos);

        writeln();

        //Tiempo antes de salir
        for delayTime := 5 downto 0 do
          begin
           gotoxy(3, 8);
           write('Saliendo en ', delayTime);
           delay(1000);
           gotoxy(3, 8);
           write('                '); //Borrar texto "Saliendo en"
          end;

        exit();
       end;

      textcolor(lightcyan);
      gotoxy(3, 9);
      writeln('PUNTAJE: ', puntos);
      gotoxy(3, 10);
      writeln('MULTIPLICADOR: x', mult, '          '); //10 espacios para eliminar cifras sobrantes al reiniciar
      gotoxy(3, 11);
      writeln('COMBO: ', combo, '          '); //10 espacios para eliminar cifras sobrantes al reiniciar
      gotoxy(3, 12);
      writeln('TOTAL: ', cant, '          ');
      gotoxy(3, 14);
      writeln('TIEMPO: ', (timer/60):0:0, '          '); //10 espacios para eliminar cifras sobrantes al reiniciar

      textcolor(lightgreen);
      gotoxy(2, 2); textcolor(white);
      write(word1); textcolor(lightgreen);

      if keypressed() then //Si se presiona una tecla
       begin
        key := lowercase(readkey); //Se lee la tecla
        //Si la letra ingresada es la primera letra de la palabra
        if key = lowercase(word1[1]) then
         begin
           delete(word1, 1, 1); //Borra 1 caracter empezando en la posicion 1 de la variable "word1"
         end
        else //Al equivocarse
         begin
          combo := 0; //Reiniciar combo
         end;
       end;

      //Al terminar de escribir la palabra
      if length(word1) = 1 then
       begin
         //Puntaje
         puntos := puntos + (10 * mult); //Sumar puntos
         combo := combo + 1; //Añadir 1 al combo
         if (combo = 0) then mult := 1 //Reiniciar multiplicador si el combo es 0
         else if (combo mod 5 = 0) then mult := mult+1; //Sumar 1 al multiplicador por cada 5 de combo

         //Las palabras cambian de lugar
         word1 := word2;
         word2 := word3;
         word3 := word4;
         word4 := word5;

         //Se genera una nueva palabra en la ultima posicion
         rndNum := Random(100);
         word5 := rndWord[rndNum];

         //Se limpia la pantalla
         clrscr();

         //Se vuelven a escribir las palabras
         gotoxy(2, 2); textcolor(white);
         write(word1); textcolor(lightgreen);
         gotoxy(2, 3);
         write(word2);
         gotoxy(2, 4);
         write(word3);
         gotoxy(2, 5);
         write(word4);
         gotoxy(2, 6);
         write(word5);

         //Se añade 1 al contador de palabras
         cant := cant + 1;

         //Se reinicia el tiempo en arcade
         if selModo = '1' then timer := 2 * 60;
       end;

      timer := timer - 1;
     end;

   end;


  ///////////////////////////// OPCION 2.Salir /////////////////////////////
  if selMenu = '2'then exit();

  readkey();
END.
