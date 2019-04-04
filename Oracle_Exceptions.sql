/*
SELECT
    my_id,
    my_name,
    salary
FROM
    temp_teste;
*/

declare
    V_BD                 VARCHAR2(8);
    V_DUMMY              PLS_INTEGER;
    V_POSICAO            PLS_INTEGER;
    P_IND_ERRO           VARCHAR2(2);
    v_time_i_one         NUMBER;
    v_time_i_one1        NUMBER;
    ERR_TRATA_ERRO            EXCEPTION;
    ERR_PREVISTO              EXCEPTION;
    ERR_NAO_PREVISTO          EXCEPTION;
       
     begin 
       P_IND_ERRO :='0';  
       select salary into v_time_i_one  from TEMP_TESTE where my_name = 'JOEJWLBDM'; --JOEJWZLBDM
       
       select salary into v_time_i_one  from TEMP_TESTE where my_name = 'QKCLVVYHGD'; --QKCLVVYHGD
         
       dbms_output.Put_line('achou' );
        
      EXCEPTION
      WHEN NO_DATA_FOUND THEN
        P_IND_ERRO := '1';
         dbms_output.Put_line('Não encontrado!!' );
        RAISE ERR_TRATA_ERRO;
        
    
  END;
