sensibilidad = 0.2;
medidaplaca1 =PLACA1;
medidaplaca2 =PLACA2;

IF reset == 0  AND (NOT( placa1anterior == medidaplaca1 AND placa2anterior == medidaplaca1 ) ) THEN

    placa1anterior=medidaplaca1;
    placa2anterior=medidaplaca2;

    diferencia = medidaplaca1 - medidaplaca2;

    IF(diferencia < 0) THEN
        diferencia = diferencia * (-1);
    ENDIF;

    IF diferencia > sensibilidad THEN
        IF PLACA1 < PLACA2 THEN
            grado = grado - 1*diferencia;
        ELSE
            grado = grado + 1*diferencia;
        ENDIF;
    ENDIF;

    IF (grado > 180) THEN
        grado = 180;
    ENDIF;
    IF (grado < 0) THEN
        grado = 0;
    ENDIF;
    
    SERVOMOTOR= (grado * 10)/180;

ELSE 
    grado = 0;
    SERVOMOTOR = grado;
ENDIF;