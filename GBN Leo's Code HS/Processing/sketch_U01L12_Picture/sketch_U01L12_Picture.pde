
int rectsize = 10;
int recty = 0;
size(180, 180);
//DARK YELLOW-FFC800,GREY-808080,YELLOW-FFFF00,WHITE-FFFFFF,BLACK-000000
int[] row1 = {#FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF};
int[] row2 = {#FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #000000, #FFFFFF, #000000, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF};
int[] row3 = {#FFFFFF, #FFFFFF, #FFFFFF, #000000, #000000, #FFFF00, #000000, #FFFF00, #000000, #000000, #FFFFFF, #000000, #FFFFFF, #FFFFFF, #FFFFFF, #000000, #000000, #000000};
int[] row4 = {#FFFFFF, #000000, #000000, #000000, #FFFF00, #000000, #000000, #FFFF00, #000000, #FFFF00, #000000, #FFFF00, #000000, #FFFFFF, #000000, #FFFF00, #FFFF00, #000000};
int[] row5 = {#FFFFFF, #000000, #FFFF00, #000000, #FFFF00, #FFFF00, #FFFF00, #000000, #FFFF00, #FFFF00, #FFFF00, #000000, #FFFF00, #000000, #FFC800, #FFFF00, #FFFF00, #000000};
int[] row6 = {#000000, #FFFF00, #FFFF00, #000000, #FFC800, #808080, #FFFF00, #FFFF00, #000000, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFC800, #FFC800, #000000, #FFFFFF};
int[] row7 = {#FFFFFF, #000000, #FFC800, #FFFF00, #000000, #FFC800, #808080, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFC800, #000000, #FFFFFF};
int[] row8 = {#000000, #FFFF00, #FFFF00, #FFFF00, #000000, #000000, #FFC800, #808080, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #000000, #FFFFFF, #FFFFFF};
int[] row9 = {#FFFFFF, #000000, #FFC800, #FFFF00, #000000, #FFFFFF, #000000, #FFC800, #FFC800, #000000, #000000, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #000000, #FFFFFF};
int[] row10 = {#FFFFFF, #000000, #FFC800, #FFC800, #FFC800, #000000, #FFFFFF, #FFC800, #FFC800, #000000, #FFFFFF, #000000, #FFFF00, #FFFF00, #FFFF00, #FFFF00, #000000, #FFFFFF};
int[] row11 = {#FFFFFF, #FFFFFF, #000000, #FFC800, #000000, #FFFFFF, #FFFFFF, #000000, #FFC800, #FFC800, #000000, #000000, #FFC800, #FFC800, #FFFF00, #000000, #FFFFFF, #FFFFFF};
int[] row12 = {#FFFFFF, #FFFFFF, #000000, #FFC800, #FFC800, #000000, #FFFFFF, #FFFFFF, #000000, #000000, #FFC800, #FFC800, #FFC800, #FFC800, #000000, #FFFFFF, #000000, #FFFFFF};
int[] row13 = {#FFFFFF, #FFFFFF, #000000, #FFC800, #FFC800, #000000, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #000000, #000000, #000000, #000000, #FFFFFF, #FFFFFF, #000000, #FFFFFF};
int[] row14 = {#FFFFFF, #FFFFFF, #000000, #FFC800, #FFC800, #000000, #000000, #FFFFFF, #000000, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #000000, #FFFFFF, #FFFFFF};
int[] row15 = {#FFFFFF, #FFFFFF, #FFFFFF, #000000, #000000, #FFFFFF, #FFFFFF, #000000, #FFC800, #000000, #FFFFFF, #000000, #000000, #FFFFFF, #000000, #FFFFFF, #FFFFFF, #FFFFFF};
int[] row16 = {#FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #000000, #FFC800, #FFC800, #000000, #000000, #FFC800, #FFC800, #000000, #FFFFFF, #FFFFFF, #FFFFFF};
int[] row17 = {#FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #000000, #FFFF00, #FFC800, #FFFF00, #000000, #000000, #000000, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF};
int[] row18 = {#FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #000000, #000000, #000000, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF};
 

for (int i = 0; i < row1.length; i++) { 
  fill( row1[i] );
  stroke( row1[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row2.length; i++) { 
  fill( row2[i] );
  stroke( row2[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row3.length; i++) { 
  fill( row3[i] );
  stroke( row3[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row4.length; i++) { 
  fill( row4[i] );
  stroke( row4[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row5.length; i++) { 
  fill( row5[i] );
  stroke( row5[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row6.length; i++) { 
  fill( row6[i] );
  stroke( row6[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row7.length; i++) { 
  fill( row7[i] );
  stroke( row7[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row8.length; i++) { 
  fill( row8[i] );
  stroke( row8[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row9.length; i++) { 
  fill( row9[i] );
  stroke( row9[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row10.length; i++) { 
  fill( row10[i] );
  stroke( row10[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row11.length; i++) { 
  fill( row11[i] );
  stroke( row11[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row12.length; i++) { 
  fill( row12[i] );
  stroke( row12[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row13.length; i++) { 
  fill( row13[i] );
  stroke( row13[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row14.length; i++) { 
  fill( row14[i] );
  stroke( row14[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row15.length; i++) { 
  fill( row15[i] );
  stroke( row15[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row16.length; i++) { 
  fill( row16[i] );
  stroke( row16[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row17.length; i++) { 
  fill( row17[i] );
  stroke( row17[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;
for (int i = 0; i < row18.length; i++) { 
  fill( row18[i] );
  stroke( row18[i] );
  rect(rectsize*i,recty,rectsize,rectsize);
}
recty+=rectsize;