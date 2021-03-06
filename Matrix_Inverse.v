`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Dhruti chandarana
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Matrix_Inverse(clk,reset,inv_0,inv_1,inv_2,inv_3,inv_4,inv_5,inv_6,inv_7,inv_8,inv_9,inv_10,inv_11,inv_12,inv_13,inv_14,inv_15,inv_16,inv_17,inv_18,inv_19,inv_20,inv_21,inv_22,inv_23,inv_24);
//output declaration 
output reg [15:0] inv_0,inv_1,inv_2,inv_3,inv_4,inv_5,inv_6,inv_7,inv_8,inv_9,inv_10,inv_11,inv_12,inv_13,inv_14,inv_15,inv_16,inv_17,inv_18,inv_19,inv_20,inv_21,inv_22,inv_23,inv_24;

//input declaration
input clk, reset;

//reg declaration
reg [15:0]A[24:0];	//Input matrix A
reg [15:0]I[24:0];	//Identity matrix I
reg [15:0]mult;	//constant for multiplication

//integer declaration
integer i;



//at posedge of clk the outputs will be generated
always @ (posedge clk)
begin
	if(reset==1'b1)
	begin
		A[0]=16'h1;
		A[1]=16'h0;
		A[2]=16'h0;
		A[3]=16'h0;
		A[4]=16'h0;

		A[5]=16'h0;
		A[6]=16'h1;
		A[7]=16'h0;
		A[8]=16'h0;
		A[9]=16'h0;

		A[10]=16'h0;
		A[11]=16'h0;
		A[12]=16'h1;
		A[13]=16'h0;
		A[14]=16'h0;

		A[15]=16'h0;
		A[16]=16'h0;
		A[17]=16'h0;
		A[18]=16'h1;
		A[19]=16'h0;

		A[20]=16'h0;
		A[21]=16'h0;
		A[22]=16'h0;
		A[23]=16'h0;
		A[24]=16'h1;

		I[0]=16'b1;
		I[1]=16'b0;
		I[2]=16'b0;
		I[3]=16'b0;
		I[4]=16'b0;

		I[5]=16'b0;
		I[6]=16'b1;
		I[7]=16'b0;
		I[8]=16'b0;
		I[9]=16'b0;

		I[10]=16'b0;
		I[11]=16'b0;
		I[12]=16'b1;
		I[13]=16'b0;
		I[14]=16'b0;

		I[15]=16'b0;
		I[16]=16'b0;
		I[17]=16'b0;
		I[18]=16'b1;
		I[19]=16'b0;

		I[20]=16'b0;
		I[21]=16'b0;
		I[22]=16'b0;
		I[23]=16'b0;
		I[24]=16'b1;

		mult=A[0];

		A[0]=(A[0]/mult);
		A[1]=(A[1]/mult);
		A[2]=(A[2]/mult);
		A[3]=(A[3]/mult);
		A[4]=(A[4]/mult);

		I[0]=(I[0]/mult);
		I[1]=(I[1]/mult);
		I[2]=(I[2]/mult);
		I[3]=(I[3]/mult);
		I[4]=(I[4]/mult);

		mult=A[5];

		A[5]=A[5]-(A[0]*mult);
		A[6]=A[6]-(A[1]*mult);
		A[7]=A[7]-(A[2]*mult);
		A[8]=A[8]-(A[3]*mult);
		A[9]=A[9]-(A[4]*mult);

		I[5]=I[5]-(I[0]*mult);
		I[6]=I[6]-(I[1]*mult);
		I[7]=I[7]-(I[2]*mult);
		I[8]=I[8]-(I[3]*mult);
		I[9]=I[9]-(I[4]*mult);

		mult=A[10];

		A[10]=A[10]-(A[0]*mult);
		A[11]=A[11]-(A[1]*mult);
		A[12]=A[12]-(A[2]*mult);
		A[13]=A[13]-(A[3]*mult);
		A[14]=A[14]-(A[4]*mult);

		I[10]=I[10]-(I[0]*mult);
		I[11]=I[11]-(I[1]*mult);
		I[12]=I[12]-(I[2]*mult);
		I[13]=I[13]-(I[3]*mult);
		I[14]=I[14]-(I[4]*mult);

		mult=A[15];

		A[15]=A[15]-(A[0]*mult);
		A[16]=A[16]-(A[1]*mult);
		A[17]=A[17]-(A[2]*mult);
		A[18]=A[18]-(A[3]*mult);
		A[19]=A[19]-(A[4]*mult);


		I[15]=I[15]-(I[0]*mult);
		I[16]=I[16]-(I[1]*mult);
		I[17]=I[17]-(I[2]*mult);
		I[18]=I[18]-(I[3]*mult);
		I[19]=I[19]-(I[4]*mult);

		mult=A[20];

		A[20]=A[20]-(A[0]*mult);
		A[21]=A[21]-(A[1]*mult);
		A[22]=A[22]-(A[2]*mult);
		A[23]=A[23]-(A[3]*mult);
		A[24]=A[24]-(A[4]*mult);

		I[20]=I[20]-(I[0]*mult);
		I[21]=I[21]-(I[1]*mult);
		I[22]=I[22]-(I[2]*mult);
		I[23]=I[23]-(I[3]*mult);
		I[24]=I[24]-(I[4]*mult);

		//second row
		mult=A[6];
		A[5]=(A[5]/mult);
		A[6]=(A[6]/mult);
		A[7]=(A[7]/mult);
		A[8]=(A[8]/mult);
		A[9]=(A[9]/mult);

		I[5]=(I[5]/mult);
		I[6]=(I[6]/mult);
		I[7]=(I[7]/mult);
		I[8]=(I[8]/mult);
		I[9]=(I[9]/mult);

		mult=A[11];
		A[10]=A[10]-(mult*A[5]);
		A[11]=A[11]-(mult*A[6]);
		A[12]=A[12]-(mult*A[7]);
		A[13]=A[13]-(mult*A[8]);
		A[14]=A[14]-(mult*A[9]);

		I[10]=I[10]-(mult*I[5]);
		I[11]=I[11]-(mult*I[6]);
		I[12]=I[12]-(mult*I[7]);
		I[13]=I[13]-(mult*I[8]);
		I[14]=I[14]-(mult*I[9]);

		//for the third row
		mult=A[16];
		A[15]=A[15]-(mult*A[5]);
		A[16]=A[16]-(mult*A[6]);
		A[17]=A[17]-(mult*A[7]);
		A[18]=A[18]-(mult*A[8]);
		A[19]=A[19]-(mult*A[9]);

		I[15]=I[15]-(mult*I[5]);
		I[16]=I[16]-(mult*I[6]);
		I[17]=I[17]-(mult*I[7]);
		I[18]=I[18]-(mult*I[8]);
		I[19]=I[19]-(mult*I[9]);

		//for the fourth row
		mult=A[21];
		A[20]=A[20]-(mult*A[5]);
		A[21]=A[21]-(mult*A[6]);
		A[22]=A[22]-(mult*A[7]);
		A[23]=A[23]-(mult*A[8]);
		A[24]=A[24]-(mult*A[9]);

		I[20]=I[20]-(mult*I[5]);
		I[21]=I[21]-(mult*I[6]);
		I[22]=I[22]-(mult*I[7]);
		I[23]=I[23]-(mult*I[8]);
		I[24]=I[24]-(mult*I[9]);

		//for the last row
		mult=A[12];
		A[10]=(A[10]/mult);
		A[11]=(A[11]/mult);
		A[12]=(A[12]/mult);
		A[13]=(A[13]/mult);
		A[14]=(A[14]/mult);

		I[10]=(I[10]/mult);
		I[11]=(I[11]/mult);
		I[12]=(I[12]/mult);
		I[13]=(I[13]/mult);
		I[14]=(I[14]/mult);

		//
		mult=A[17];
		A[15]=A[15]-(A[10]*mult);
		A[16]=A[16]-(A[11]*mult);
		A[17]=A[17]-(A[12]*mult);
		A[18]=A[18]-(A[13]*mult);
		A[19]=A[19]-(A[14]*mult);

		I[15]=I[15]-(I[10]*mult);
		I[16]=I[16]-(I[11]*mult);
		I[17]=I[17]-(I[12]*mult);
		I[18]=I[18]-(I[13]*mult);
		I[19]=I[19]-(I[14]*mult);

		//
		mult=A[22];
		A[20]=A[20]-(A[10]*mult);
		A[21]=A[21]-(A[11]*mult);
		A[22]=A[22]-(A[12]*mult);
		A[23]=A[23]-(A[13]*mult);
		A[24]=A[24]-(A[14]*mult);

		I[15]=I[15]-(I[10]*mult);
		I[16]=I[16]-(I[11]*mult);
		I[17]=I[17]-(I[12]*mult);
		I[18]=I[18]-(I[13]*mult);
		I[19]=I[19]-(I[14]*mult);

		//
		mult=A[18];
		A[15]=(A[15]/mult);
		A[16]=(A[16]/mult);
		A[17]=(A[17]/mult);
		A[18]=(A[18]/mult);
		A[19]=(A[19]/mult);

		I[15]=(I[15]/mult);
		I[16]=(I[16]/mult);
		I[17]=(I[17]/mult);
		I[18]=(I[18]/mult);
		I[19]=(I[19]/mult);

		//
		mult=A[23];
		A[20]=A[20]-(mult*A[15]);
		A[21]=A[21]-(mult*A[16]);
		A[22]=A[22]-(mult*A[17]);
		A[23]=A[23]-(mult*A[18]);
		A[24]=A[24]-(mult*A[19]);

		I[20]=I[20]-(mult*I[15]);
		I[21]=I[21]-(mult*I[16]);
		I[22]=I[22]-(mult*I[17]);
		I[23]=I[23]-(mult*I[18]);
		I[24]=I[24]-(mult*I[19]);

		//
		mult=A[24];
		A[20]=(A[20]/mult);
		A[21]=(A[21]/mult);
		A[22]=(A[22]/mult);
		A[23]=(A[23]/mult);
		A[24]=(A[24]/mult);

		I[20]=(I[20]/mult);
		I[21]=(I[21]/mult);
		I[22]=(I[22]/mult);
		I[23]=(I[23]/mult);
		I[24]=(I[24]/mult);

		//rref
		mult=A[1];
		A[0]=A[0]-(mult*A[5]);
		A[1]=A[1]-(mult*A[6]);
		A[2]=A[2]-(mult*A[7]);
		A[3]=A[3]-(mult*A[8]);
		A[4]=A[4]-(mult*A[9]);

		I[0]=I[0]-(mult*I[5]);
		I[1]=I[1]-(mult*I[6]);
		I[2]=I[2]-(mult*I[7]);
		I[3]=I[3]-(mult*I[8]);
		I[4]=I[4]-(mult*I[9]);

		//
		mult=A[7];
		A[5]=A[5]-(mult*A[10]);
		A[6]=A[6]-(mult*A[11]);
		A[7]=A[7]-(mult*A[12]);
		A[8]=A[8]-(mult*A[13]);
		A[9]=A[9]-(mult*A[14]);

		I[5]=I[5]-(mult*I[10]);
		I[6]=I[6]-(mult*I[11]);
		I[7]=I[7]-(mult*I[12]);
		I[8]=I[8]-(mult*I[13]);
		I[9]=I[9]-(mult*I[14]);

		//
		mult=A[2];
		A[0]=A[0]-(mult*A[10]);
		A[1]=A[1]-(mult*A[11]);
		A[2]=A[2]-(mult*A[12]);
		A[3]=A[3]-(mult*A[13]);
		A[4]=A[4]-(mult*A[14]);

		I[0]=I[0]-(mult*I[10]);
		I[1]=I[1]-(mult*I[11]);
		I[2]=I[2]-(mult*I[12]);
		I[3]=I[3]-(mult*I[13]);
		I[4]=I[4]-(mult*I[14]);

		//
		mult=A[13];
		A[10]=A[10]-(mult*A[15]);
		A[11]=A[11]-(mult*A[16]);
		A[12]=A[12]-(mult*A[17]);
		A[13]=A[13]-(mult*A[18]);
		A[14]=A[14]-(mult*A[19]);

		I[10]=I[10]-(mult*I[15]);
		I[11]=I[11]-(mult*I[16]);
		I[12]=I[12]-(mult*I[17]);
		I[13]=I[13]-(mult*I[18]);
		I[14]=I[14]-(mult*I[19]);

		//
		mult=A[8];
		A[5]=A[5]-(mult*A[15]);
		A[6]=A[6]-(mult*A[16]);
		A[7]=A[7]-(mult*A[17]);
		A[8]=A[8]-(mult*A[18]);
		A[9]=A[9]-(mult*A[19]);

		I[5]=I[5]-(mult*I[15]);
		I[6]=I[6]-(mult*I[16]);
		I[7]=I[7]-(mult*I[17]);
		I[8]=I[8]-(mult*I[18]);
		I[9]=I[9]-(mult*I[19]);

		//
		mult=A[3];
		A[0]=A[0]-(mult*A[15]);
		A[1]=A[1]-(mult*A[16]);
		A[2]=A[2]-(mult*A[17]);
		A[3]=A[3]-(mult*A[18]);
		A[4]=A[4]-(mult*A[19]);

		I[0]=I[0]-(mult*I[15]);
		I[1]=I[1]-(mult*I[16]);
		I[2]=I[2]-(mult*I[17]);
		I[3]=I[3]-(mult*I[18]);
		I[4]=I[4]-(mult*I[19]);

		inv_20=(I[20]/A[24]);
		inv_21=(I[21]/A[24]);
		inv_22=(I[22]/A[24]);
		inv_23=(I[23]/A[24]);
		inv_24=(I[24]/A[24]);

		//
		mult=A[19];
		A[15]=A[15]-(mult*A[20]);
		A[16]=A[16]-(mult*A[21]);
		A[17]=A[17]-(mult*A[22]);
		A[18]=A[18]-(mult*A[23]);
		A[19]=A[19]-(mult*A[24]);

		inv_15=I[15]-(mult*I[20]);
		inv_16=I[16]-(mult*I[21]);
		inv_17=I[17]-(mult*I[22]);
		inv_18=I[18]-(mult*I[23]);
		inv_19=I[19]-(mult*I[24]);

		//
		mult=A[14];
		A[10]=A[10]-(mult*A[20]);
		A[11]=A[11]-(mult*A[21]);
		A[12]=A[12]-(mult*A[22]);
		A[13]=A[13]-(mult*A[23]);
		A[14]=A[14]-(mult*A[24]);

		inv_10=I[10]-(mult*I[20]);
		inv_11=I[11]-(mult*I[21]);
		inv_12=I[12]-(mult*I[22]);
		inv_13=I[13]-(mult*I[23]);
		inv_14=I[14]-(mult*I[24]);

		//
		mult=A[9];
		A[5]=A[5]-(mult*A[20]);
		A[6]=A[6]-(mult*A[21]);
		A[7]=A[7]-(mult*A[22]);
		A[8]=A[8]-(mult*A[23]);
		A[9]=A[9]-(mult*A[24]);

		inv_5=I[5]-(mult*I[20]);
		inv_6=I[6]-(mult*I[21]);
		inv_7=I[7]-(mult*I[22]);
		inv_8=I[8]-(mult*I[23]);
		inv_9=I[9]-(mult*I[24]);

		//
		mult=A[4];
		A[0]=A[0]-(mult*A[20]);
		A[1]=A[1]-(mult*A[21]);
		A[2]=A[2]-(mult*A[22]);
		A[3]=A[3]-(mult*A[23]);
		A[4]=A[4]-(mult*A[24]);

		inv_0=I[0]-(mult*I[20]);
		inv_1=I[1]-(mult*I[21]);
		inv_2=I[2]-(mult*I[22]);
		inv_3=I[3]-(mult*I[23]);
		inv_4=I[4]-(mult*I[24]);
	end
	
	else
	begin
		inv_0 <= 0;
		inv_1 <= 0;
		inv_2 <= 0;
		inv_3 <= 0;
		inv_4 <= 0;
		inv_5 <= 0;
		inv_6 <= 0;
		inv_7 <= 0;
		inv_8 <= 0;
		inv_9 <= 0;
		inv_10 <= 0;
		inv_11 <= 0;
		inv_12 <= 0;
		inv_13 <= 0;
		inv_14 <= 0;
		inv_15 <= 0;
		inv_16 <= 0;
		inv_17 <= 0;
		inv_18 <= 0;
		inv_19 <= 0;
		inv_20 <= 0;
		inv_21 <= 0;
		inv_22 <= 0;
		inv_23 <= 0;
		inv_24 <= 0;
	end
end

endmodule
//End of code
