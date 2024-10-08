module full_subtractor(input a,b,cin,output D,B);
  assign D=(a^b^cin);
  assign B=~(a&b)|(~(a^b)&cin);
endmodule
