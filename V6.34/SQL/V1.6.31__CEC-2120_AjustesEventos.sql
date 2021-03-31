-- V1.60.73__CEC-2120_AjustesEventos.sql
-- Ajustes transações de Juros
delete Tpzint.Ttr_Codigo_Transacciones
 where CODIGO_OPERACION = 8383
   and CODIGO_INTERNO_MOV in (3,4);
--
insert into Tpzint.Ttr_Codigo_Transacciones (CODIGO_OPERACION, CODIGO_INTERNO_MOV, CODIGO_TRANSACCION, TZ_LOCK, TARIFA_ID)
values (8383, 3, 252, 0, 0); --C
insert into Tpzint.Ttr_Codigo_Transacciones (CODIGO_OPERACION, CODIGO_INTERNO_MOV, CODIGO_TRANSACCION, TZ_LOCK, TARIFA_ID)
values (8383, 4, 250, 0, 0); --D
