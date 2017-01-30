consigna = 45;
error = 5;

IF Temperatura > (consigna + error)  THEN
    Bombilla = 0;
    Ventilador = 10;
ENDIF;

IF Temperatura < (consigna - error)  THEN
    Bombilla = 10;
    Ventilador = 0;
ENDIF;
