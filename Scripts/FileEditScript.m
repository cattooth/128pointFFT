Files = dir("Butterfly*.v");
N = length(Files);
for i = 1 : N
    Filename    = Files(i).name;
    currentText = fileread(Filename);
    currentText = convertCharsToStrings(currentText);
    str1 = '        if (enb) begin';
    str2 = '        end';
    str3 = '           enb,';
    str4 = '  input   enb;';
    currentText = strrep(currentText, str1, '');
    currentText = strrep(currentText, str2, '');
    currentText = strrep(currentText, str3, '');
    currentText = strrep(currentText, str4, '');
    Filename = fopen(Filename,'wt'); 
    fprintf(Filename, currentText);
    fclose(Filename);
end
%%
File = dir("FFTblock_FP_libblocks.v");
currentText = fileread(File);
currentText = convertCharsToStrings(currentText);
str1 = '           clk_enable,';
str2 = '  input   clk_enable;';
str3 = '                                           .enb(clk_enable),';
str4 = '  input   enb;';
currentText = strrep(currentText, str1, '');
currentText = strrep(currentText, str2, '');
currentText = strrep(currentText, str3, '');
currentText = strrep(currentText, str4, '');
Filename = fopen(Filename,'wt'); 
fprintf(Filename, currentText);
fclose(Filename);