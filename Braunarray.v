`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    09:41:37 03/07/18
// Design Name:    
// Module Name:    braun
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
				 
module braun(p,x,y);
input[3:0]x,y;
output[7:0]p;
wire[15:0]a;
wire[11:0]s;
wire[11:0]c;
and g0(a[0],x[0],y[0]);
and g1(a[1],x[1],y[0]);
and g2(a[2],x[2],y[0]);
and g3(a[3],x[3],y[0]);							  
and g4(a[4],x[0],y[1]);
and g5(a[5],x[1],y[1]);
and g6(a[6],x[2],y[1]);
and g7(a[7],x[3],y[1]);
and g8(a[8],x[0],y[2]);
and g9(a[9],x[1],y[2]);
and g10(a[10],x[2],y[2]);	
and g11(a[11],x[3],y[2]);
and g12(a[12],x[0],y[3]);
and g13(a[13],x[1],y[3]);
and g14(a[14],x[2],y[3]);
and g15(a[15],x[3],y[3]);
fulladder_str f0(s[0],c[0],a[1],a[4],0);
fulladder_str f1(s[1],c[1],a[2],a[5],0);
fulladder_str f2(s[2],c[2],a[3],a[6],0);
fulladder_str f3(s[3],c[3],s[1],a[8],c[0]);
fulladder_str f4(s[4],c[4],s[2],a[9],c[1]);
fulladder_str f5(s[5],c[5],a[7],a[10],c[2]);
fulladder_str f6(s[6],c[6],s[4],a[12],c[3]);
fulladder_str f7(s[7],c[7],s[5],a[13],c[4]);
fulladder_str f8(s[8],c[8],a[11],a[14],c[5]);
fulladder_str f9(s[9],c[9],s[7],c[6],0);
fulladder_str f10(s[10],c[10],s[8],a[4],c[7]);
fulladder_str f11(s[11],c[11],a[15],a[4],c[8]);
assign
p[0]=a[0],
p[1]=s[0],
p[2]=s[3],
p[3]=s[6],
p[4]=s[9],
p[5]=s[10],
p[6]=s[11],
p[7]=c[11];
endmodule








