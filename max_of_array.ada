with ada.text_io, ada.integer_text_io;
use ada.text_io, ada.integer_text_io;

procedure main is
    type T_array is array (integer range 1..300) of integer;
    procedure max_min (t: T_array; max, min: out integer) is
    begin
    min:= t(1);
    max:= t(1);
    for i in 2..t'length loop  
        if t(i) > max then 
            max:= t(i);
        elsif t(i) < min then
            min:= t(i);
        end if;
    end loop;
    end max_min; 

    procedure saisie_array (t: out T_array) is
    begin
    for i in 1..t'length loop
        get(t(i));
    end loop;
    end saisie_array;

    t: T_array;
    max, min: integer;
begin
saisie_array(t);    
max_min(t, max, min);
put(max, width => 0);put(" ");put(min, width => 0);

end main;