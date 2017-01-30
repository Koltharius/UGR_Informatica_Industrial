ek_2 = ek_1;
ek_1 = ek;
pk_1 = pk;

ek = consigna - temperatura;

q0 = kp + ki + kd;
q1 = - kp - 2 * kd;
q2 = kd;

pk = pk_1 + q0 * ek + q1 * ek_1 + q2 * ek_2;


IF pk < 0 THEN
   Bombilla = 0;
ELSE
    IF pk > 10  THEN
        Bombilla = 10;
    ELSE 
        Bombilla = pk;
    ENDIF;
ENDIF;

IF pk < -100 THEN
    pk = -100;
    ELSE
        IF pk > 100 THEN
            pk = 100;
        ENDIF;
ENDIF;