%% limpiar
clc
clear all

%% u[n}

init = 0;
fin = 7;
[s1, n] = stepseq(0, init, fin);

figure
subplot(4,1,1);
stem(n,s1,'r','filled');
title('u[n]');

%% u[n-6]

[s2, n] = stepseq(6, init, fin);

subplot(4,1,2);
stem(n,s2,'r','filled');
title('u[n-6]');
%% u[n}-u[n-6]

s3 = s1-s2;
subplot(4,1,3);
stem(n,s3,'r','filled');
title('u[n}-u[n-6]');

%% (6-n)*(u[n}-u[n-6])

s4 = (6-n).*s3;
subplot(4,1,4);
stem(n,s4,'r','filled');
title('x[n] = (6-n)*(u[n}-u[n-6])');

%% x[n]

% Sea x[n] = [6 5 4 3 2 1]

x0 = [6 0 0 0 0 0];
x1 = [0 5 0 0 0 0];
x2 = [0 0 4 0 0 0];
x3 = [0 0 0 3 0 0];
x4 = [0 0 0 0 2 0];
x5 = [0 0 0 0 0 1];

figure
subplot(6,1,1);
stem(x0,'r','filled');
title('x0');

subplot(6,1,2);
stem(x1,'r','filled');
title('x1');

subplot(6,1,3);
stem(x2,'r','filled');
title('x2');

subplot(6,1,4);
stem(x3,'r','filled');
title('x3');

subplot(6,1,5);
stem(x4,'r','filled');
title('x4');

subplot(6,1,6);
stem(x5,'r','filled');
title('x5');

%% convolucion para h[n}

h = [0 1 2 3 2 1];

h0 = conv(x0,h);
h1 = conv(x1,h);
h2 = conv(x2,h);
h3 = conv(x3,h);
h4 = conv(x4,h);
h5 = conv(x5,h);

figure
subplot(6,1,1);
stem(h0,'r','filled');
title('h0');

subplot(6,1,2);
stem(h1,'r','filled');
title('h1');

subplot(6,1,3);
stem(h2,'r','filled');
title('h2');

subplot(6,1,4);
stem(h3,'r','filled');
title('h3');

subplot(6,1,5);
stem(h4,'r','filled');
title('h4');

subplot(6,1,6);
stem(h5,'r','filled');
title('h5');









