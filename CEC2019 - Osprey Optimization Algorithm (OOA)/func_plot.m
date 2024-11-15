%% cec2019 func_plot
function func_plot(func_name)

[lb,ub,dim,fobj]=Get_Functions_cec2019(func_name); 

switch func_name
    case 1
        x=-8192:200:8192; y=x;
    case 2
        x=-16384:300:16384; y=x;
    case 3
        x=-4:0.1:4; y=x;
    case 4
        x=-100:1:100; y=x;
    case 5
        x=-100:1:100; y=x;
    case 6
        x=-100:1:100; y=x;
    case 7
        x=-100:1:100; y=x;
    case 8
        x=-100:1:100; y=x;
    case 9
        x=-100:1:100; y=x;
    case 10
        x=-100:1:100; y=x;
end

L=length(x);                               
f=[];                                     
for i=1:L
    for j=1:L
        f(i,j)=fobj([x(i),y(j)]);
    end
end
surfc(x,y,f,'LineStyle','none');           
end

