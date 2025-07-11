//this modification(combining similar always blocks)
//doesnt really matter in small projects as this one but when you are doing 
//a complex project it is better to make them at different always blocks as the normal lab
module DigCt
(
//declaring inputs
input wire IN1,
input wire IN2,
input wire IN3,
input wire IN4,
input wire CLK,

//declaring outputs
output reg OUT1,
output reg OUT2,
output reg OUT3

);
//now we need to declare 
//the intermidate signals
reg D1,D2,D3;


//making whenever there is a psitive edge 
//clock the D fliplops output there values
always@(posedge CLK)
begin 
OUT1<=D1;
OUT2<=D2;
OUT3<=D3;
end
//In a D flip-flop,anything meaningful 
//(like data being stored or output changing) 
//happens only at the clock edge.

//meaning you store the value of inputs 
//at the D and when the clock edge occurs 
//you output it
always@(*)
begin 
D1=~(IN1 | IN2);
D2= ~(IN2 & IN3);
D3=IN2 | IN3;
end

endmodule 

