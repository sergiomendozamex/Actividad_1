clc
clear all


img= imread('C:\Users\SERGIO MENDOZA DIAZ\Documents\8vo Semestre\Recursamiento procesamiento digital de imagenes\dibujo.png');

[f,c,k]=size(img);

R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

his= zeros(1, 256);


for i=1:f
    for j=1:c
        n=R(i,j)+1;
        his(n) = his(n)+1;
    end
end


%H= histogram(R);

fi=1;
co=3;

%mostrar imagenes

subplot(fi,co,1) 
imshow(img)
title('Imagen original')

subplot(fi,co,2) 
imshow(R)
title('Rojo')

subplot(fi,co,3) 
plot(his)
title('Histograma')

