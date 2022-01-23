clc;
clear;
close;
s = input("Enter the sequence ");
disp("Entered Sequesnce is ");
disp(s);
disp("Appying Lempel-Ziv Algorthium");
for i =1 : 255
    alp(i)=ascii(i);
//    val(i)=i;
end
r=1;
p="";
c="";
p=p+part(s,1);
code = 256;
disp("Encoding started");
for i = 1:length(s)
    if(i~=length(s))
        c=c+part(s,i+1);
    end
//    for n = 1:length(alp)
//        if (p+c == alp(n))
//            got=1;
//            number =n;
//        else
//            got=0;
//        end
//    end
//    if(got)
      if(find((p+c)==alp))
        p=p+c;
    else
        output_code(r)=find(p==alp);
        lastIndex = find(alp($)==alp)+1;
        alp(lastIndex)=(p+c);
//        val(lastIndex)=code;
        code= code+1;
        r=r+1;
        p=c;
    end
    c="";
end
output_code(r)=find(p==alp);
r=r+1;
disp(output_code);


