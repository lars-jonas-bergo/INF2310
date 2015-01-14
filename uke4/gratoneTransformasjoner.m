clear all
close all

% Vi importerer et standardbilde fra MATLAB
I = imread('pout.tif');

% Bruker vår funksjon myHist til å finne histogrammet
[h,p,c,c_n] = myHist(I);


% Vi plotter resultatene
figure(1)
subplot(141)
imshow(I,[]);
title('Bilde');
xlabel('Gråtone');
ylabel('Antall piksler');

subplot(142)
bar(h,'r');
axis tight
title('Histogram (myHist)');
xlabel('Gråtone');
ylabel('Antall piksler');

subplot(143)
bar(p);
axis tight
title('Normalisert histogram (myHist)')
xlabel('Gråtone');
ylabel('Antall piksler');

subplot(144)
imhist(I);
axis tight
title('MATLAB histogram');
xlabel('Gråtone');
ylabel('Antall piksler');

% Og kan fra resultatene trekke slutningen at vår implementasjon virker
% korrekt

%%
figure(2)
subplot(131)
bar(c)
axis tight
title('Kumulativt histogram');
xlabel('Gråtone');
ylabel('Antall piksler');

subplot(132)
bar(c_n)
axis tight
title('Kumulativt histogram normalisert');
xlabel('Gråtone');
ylabel('Antall piksler');

subplot(133)
bar(p)
title('Normalisert histogram');
xlabel('Gråtone');
ylabel('Antall piksler');

%%
%Endre "lysheten" brightness
f = I;%Orginal bildet er i f
a = 1;
b = 256/2.5;

g = f*a+b;

figure(3)
subplot(221)
imshow(f,[]);
subplot(222)
imshow(g,[]);
subplot(223)
bar(myHist(f));
subplot(224)
bar(myHist(g));

%%Endre kontrasten
a = 1.5;
b = 0;

g = f*a+b;

figure(4)
subplot(221)
imshow(f,[]);
subplot(222)
imshow(g,[]);
subplot(223)
bar(myHist(f));
subplot(224)
bar(myHist(g));

