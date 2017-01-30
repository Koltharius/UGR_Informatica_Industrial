IF valvula == 1 THEN
	tanque1 = tanque1 + 1;
	tanque2 = tanque2 - 1;
ENDIF;

IF bomba == 1 THEN
	tanque1 = tanque1 - 1;
	tanque2 = tanque2 + 1;
ENDIF;

IF tanque1 > 100 THEN
	tanque1 = 100;
ENDIF;

IF tanque1 < 0 THEN
	tanque1 = 0;
ENDIF;

IF tanque2 > 100 THEN
	tanque2 = 100;
ENDIF;

IF tanque2 < 0 THEN
	tanque2 = 0;
ENDIF;
