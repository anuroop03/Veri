`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    09:38:25 01/10/18
// Design Name:    
// Module Name:    fulladder_str
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module fulladder_str(sum,carry,a,b,c);
    input a,b,c;
    output sum,carry;
	 wire w1,w2,w3;
	 halfadder_str ha1(w1,w2,a,b);
	 halfadder_str ha2(sum,w3,w1,c);
	 or g3(carry,w3,w2);


endmodule
