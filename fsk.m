function FSK(g,f0,f1)
 if nargin > 3
 error('Demasiados argumentos de entrada')
 elseif nargin==1
 f0=1;f1=2;
 elseif nargin==2
 f1=2;
 end
 
 val0=ceil(f0)-(f0);
 val1=ceil(f1)-(f1);
 if val0 ~=0 || val1 ~=0;
 error('Frecuencia debe ser un entero');
 end
 
 if f0<1 || f1<1;
 error('Frecuencia debe ser mayor que 1');
 end
 
 t=0:2*pi/99:2*pi;
 cp=[];sp=[];
 mod=[];mod1=[];bit=[];
 
 for n=1:length(g);
     if g(n)==0;
      die=ones(1,100);
     c=sin(f0*t);
     se=zeros(1,100);
     else g(n)==1;
    die=ones(1,100);
    c=sin(f1*t);
    se=ones(1,100);
 end
 cp=[cp die];
 mod=[mod c];
 bit=[bit se];
 end
 
fsk=cp.*mod;
 subplot(2,1,1);plot(bit,'LineWidth',1.5);grid on;
 title('Se�al Binaria');
 axis([0 100*length(g) -2.5 2.5]);
 subplot(2,1,2);plot(fsk,'LineWidth',1.5);grid on;
 title('Modulaci�n FSK');
 axis([0 100*length(g) -2.5 2.5]);