clearvars
clc
T = readtable('studentlist.xlsx');
C = table2cell(T);
student_number=size(C,1);

%tf
max_tf=30;
min_tf=10;
tf=Generate_Uniform_Random_Int(min_tf,max_tf,1,student_number);

%tw
max_tw=16;
min_tw=6;
tw=Generate_Uniform_Random_Int(min_tw,max_tw,1,student_number);

%bf
max_bf=300;
min_bf=100;
bf=Generate_Uniform_Random_Int(min_bf,max_bf,1,student_number);

%h
max_h=900;
min_h=80;
h=Generate_Uniform_Random_Int(min_h,max_h,1,student_number);

output_cell=C;
for i=1:1:student_number
    output_cell(i,7)={num2str(tf(i))};
    output_cell(i,8)={num2str(tw(i))};
    output_cell(i,9)={num2str(bf(i))};
    output_cell(i,10)={num2str(h(i))};
end


for i=1:1:student_number
    name=C{i,1};
    surname=C{i,2};
    student_id=C{i,4};
    filename_id=C{i,5};
%     fid = fopen( './latex/1', 'wt' );
    fid = fopen( ['./latex/', [C{i,5}]], 'wt' );
    fprintf( fid, '%s\n', ['\def\varZero{',name,'}']);
    fprintf( fid, '%s\n', ['\def\varOne{',surname,'}']);
    fprintf( fid, '%s\n', ['\def\varTwo{',num2str(student_id),'}']);
    fprintf( fid, '%s\n', ['\def\varThree{',num2str(tf(i)),'}']);
    fprintf( fid, '%s\n', ['\def\varFour{',num2str(tw(i)),'}']);
    fprintf( fid, '%s\n', ['\def\varFive{',num2str(bf(i)),'}']);
    fprintf( fid, '%s\n', ['\def\varSix{',num2str(h(i)),'}']);
    fclose(fid);
end

% 
% fid = fopen('general_input.txt','wt');
% fprintf(fid,'%10s \t %10s \t %30s \t %s \t %s \t %s \t \t %s \t \t %s \t \t %s \t \t %s \n', 'Name','Surname','mail','ID Number','username','Dept','tf','tw','bf','h');
% for i=1:1:student_number
%     fprintf(fid,'%10s \t %10s \t %30s \t %s \t %s \t %s \t \t %s \t \t %s \t \t %s \t \t %s \n', output_cell{i,1},output_cell{i,2},output_cell{i,3},output_cell{i,4},output_cell{i,5},output_cell{i,6},output_cell{i,7},output_cell{i,8},output_cell{i,9},output_cell{i,10});
% end
% fclose(fid);
% 
% save variable.mat output_cell