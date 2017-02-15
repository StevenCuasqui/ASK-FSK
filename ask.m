function ASK(g,f)
if nargin > 2
    error('Demasiados argumentos de entrada')
elseif nargin==1
    f=1;
end

if f<1;
    error('Frecuencia debe ser mayor que 1');
end
 
t=0:2*pi;
cp=[];sp=[];
mod=[];mod1=[];bit=[];
 
for n=1:length(g);
    if g(n)==0;
        die=ones(1,1000);
        se=zeros(1,1000);
    else g(n)==1;
        die=2*ones(1,1000);
        se=ones(1,1000);
    end
    c=sin(f*t);
    cp=[cp die];
    mod=[mod c];
    bit=[bit se];
 
end

ask=cp.*mod;
subplot(2,1,1);plot(bit,'LineWidth',1.5);grid on;
title('Señal Binaria');
axis([0 1000*length(g) -2.5 2.5]);

subplot(2,1,2);plot(ask,'LineWidth',1.5);grid on;
title('Modulación ASK');
axis([0 1000*length(g) -2.5 2.5]);