module smul(output [15:0]out,input [7:0]a,input [8:0]b);

wire p[8:0][7:0];
wire [48:0] s;
wire [48:0] c;
wire x=0;

and mul00(p[0][0],a[0],b[0]);
and mul01(p[0][1],a[1],b[0]);
and mul02(p[0][2],a[2],b[0]);
and mul03(p[0][3],a[3],b[0]);
and mul04(p[0][4],a[4],b[0]);
and mul05(p[0][5],a[5],b[0]);
and mul06(p[0][6],a[6],b[0]);
and mul07(p[0][7],a[7],b[0]);

and mul10(p[1][0],a[0],b[1]);
and mul11(p[1][1],a[1],b[1]);
and mul12(p[1][2],a[2],b[1]);
and mul13(p[1][3],a[3],b[1]);
and mul14(p[1][4],a[4],b[1]);
and mul15(p[1][5],a[5],b[1]);
and mul16(p[1][6],a[6],b[1]);
and mul17(p[1][7],a[7],b[1]);

and mul20(p[2][0],a[0],b[2]);
and mul21(p[2][1],a[1],b[2]);
and mul22(p[2][2],a[2],b[2]);
and mul23(p[2][3],a[3],b[2]);
and mul24(p[2][4],a[4],b[2]);
and mul25(p[2][5],a[5],b[2]);
and mul26(p[2][6],a[6],b[2]);
and mul27(p[2][7],a[7],b[2]);

and mul30(p[3][0],a[0],b[3]);
and mul31(p[3][1],a[1],b[3]);
and mul32(p[3][2],a[2],b[3]);
and mul33(p[3][3],a[3],b[3]);
and mul34(p[3][4],a[4],b[3]);
and mul35(p[3][5],a[5],b[3]);
and mul36(p[3][6],a[6],b[3]);
and mul37(p[3][7],a[7],b[3]);

and mul40(p[4][0],a[0],b[4]);
and mul41(p[4][1],a[1],b[4]);
and mul42(p[4][2],a[2],b[4]);
and mul43(p[4][3],a[3],b[4]);
and mul44(p[4][4],a[4],b[4]);
and mul45(p[4][5],a[5],b[4]);
and mul46(p[4][6],a[6],b[4]);
and mul47(p[4][7],a[7],b[4]);

and mul50(p[5][0],a[0],b[5]);
and mul51(p[5][1],a[1],b[5]);
and mul52(p[5][2],a[2],b[5]);
and mul53(p[5][3],a[3],b[5]);
and mul54(p[5][4],a[4],b[5]);
and mul55(p[5][5],a[5],b[5]);
and mul56(p[5][6],a[6],b[5]);
and mul57(p[5][7],a[7],b[5]);

and mul60(p[6][0],a[0],b[6]);
and mul61(p[6][1],a[1],b[6]);
and mul62(p[6][2],a[2],b[6]);
and mul63(p[6][3],a[3],b[6]);
and mul64(p[6][4],a[4],b[6]);
and mul65(p[6][5],a[5],b[6]);
and mul66(p[6][6],a[6],b[6]);
and mul67(p[6][7],a[7],b[6]);

and mul70(p[7][0],a[0],b[7]);
and mul71(p[7][1],a[1],b[7]);
and mul72(p[7][2],a[2],b[7]);
and mul73(p[7][3],a[3],b[7]);
and mul74(p[7][4],a[4],b[7]);
and mul75(p[7][5],a[5],b[7]);
and mul76(p[7][6],a[6],b[7]);
and mul77(p[7][7],a[7],b[7]);

nand nmul80(p[8][0],a[0],b[8]);
nand nmul81(p[8][1],a[1],b[8]);
nand nmul82(p[8][2],a[2],b[8]);
nand nmul83(p[8][3],a[3],b[8]);
nand nmul84(p[8][4],a[4],b[8]);
nand nmul85(p[8][5],a[5],b[8]);
nand nmul86(p[8][6],a[6],b[8]);
nand nmul87(p[8][7],a[7],b[8]);

ha a1(c[0],s[0],p[0][6],p[1][5]);
fa a2(c[1],s[1],p[0][7],p[1][6],p[2][5]);
ha a3(c[2],s[2],p[3][4],p[4][3]);
fa a4(c[3],s[3],p[1][7],p[2][6],p[3][5]);
fa a5(c[4],s[4],p[4][4],p[5][3],p[6][2]);
ha a6(c[5],s[5],p[7][1],p[8][0]);
fa a7(c[6],s[6],p[2][7],p[3][6],p[4][5]);
fa a8(c[7],s[7],p[5][4],p[6][3],p[7][2]);
fa a9(c[8],s[8],p[3][7],p[4][6],p[5][5]);

ha a10(c[9],s[9],p[0][4],p[1][3]);
fa a11(c[10],s[10],p[0][5],p[1][4],p[2][3]);
ha a12(c[11],s[11],p[3][2],p[4][1]);
fa a13(c[12],s[12],s[0],p[2][4],p[3][3]);
fa a14(c[13],s[13],p[4][2],p[5][1],p[6][0]);
fa a15(c[14],s[14],c[0],s[1],s[2]);
fa a16(c[15],s[15],p[5][2],p[6][1],p[7][0]);
fa a17(c[16],s[16],c[1],c[2],s[3]);
fa a18(c[17],s[17],s[4],s[5],1'b1);
fa a19(c[18],s[18],c[3],c[4],c[5]);
fa a20(c[19],s[19],s[6],s[7],p[8][1]);
fa a21(c[20],s[20],c[6],c[7],s[8]);
fa a22(c[21],s[21],p[6][4],p[7][3],p[8][2]);
fa a23(c[22],s[22],c[8],p[4][7],p[5][6]);
fa a24(c[23],s[23],p[6][5],p[7][4],p[8][3]);
fa a25(c[24],s[24],p[5][7],p[6][6],p[7][5]);

ha a26(c[25],s[25],p[0][3],p[1][2]);
fa a27(c[26],s[26],p[2][2],p[3][1],p[4][0]);
fa a28(c[27],s[27],s[10],s[11],p[5][0]);
fa a29(c[28],s[28],c[11],s[12],s[13]);
fa a30(c[29],s[29],c[13],s[14],s[15]);
fa a31(c[30],s[30],c[15],s[16],s[17]);
fa a32(c[31],s[31],c[17],s[18],s[19]);
fa a33(c[32],s[32],c[19],s[20],s[21]);
fa a34(c[33],s[33],c[21],s[22],s[23]);
fa a35(c[34],s[34],c[23],s[24],p[8][4]);
fa a36(c[35],s[35],p[6][7],p[7][6],p[8][5]);

ha a37(c[36],s[36],p[0][2],p[1][1]);
fa a38(c[37],s[37],s[25],p[2][1],p[3][0]);
fa a39(c[38],s[38],s[9],c[25],s[26]);
fa a40(c[39],s[39],c[9],c[26],s[27]);
fa a41(c[40],s[40],c[10],c[27],s[28]);
fa a42(c[41],s[41],c[12],c[28],s[29]);
fa a43(c[42],s[42],c[14],c[29],s[30]);
fa a44(c[43],s[43],c[16],c[30],s[31]);
fa a45(c[44],s[44],c[18],c[31],s[32]);
fa a46(c[45],s[45],c[20],c[32],s[33]);
fa a47(c[46],s[46],c[22],c[33],s[34]);
fa a48(c[47],s[47],c[24],c[34],s[35]);
fa a49(c[48],s[48],c[35],p[7][7],p[8][6]);

cslawoc clsa1(out,{p[8][7],s[48:36],p[0][1],p[0][0]},{c[48:36],p[2][0],p[1][0],x});

endmodule