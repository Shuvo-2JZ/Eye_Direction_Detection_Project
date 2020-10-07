clear;clc; 

I=imread('image/a20.jpg' );

I=rgb2gray(I);

figure;

S=imread('STRAIGHT.png'  );

R=imread('RIGHT.png'   );

L=imread('LEFT.png' );

U=imread('UP.png'  );

D=imread('DOWN.png' );

subplot(2,2,1); imshow(I); title('Original Image' );

Eyes=I;

[row , col]=size(Eyes);

[centers, radii, metric] = imfindcircles(Eyes, [25 60], 'ObjectPolarity','dark', 'Sensitivity', 0.93);

viscircles(centers, radii,'Color','b');

disp(row);

disp(col);

disp(round(centers));



a=round(centers(1));

b=round(col/2);

a1=round(centers(2));

b1=round(row/2);

disp(a);

disp(b);

disp(a1);

disp(b1);

if(a>b)
    subplot(2,2,3); imshow(R);
    
    disp(a);
    
   else subplot(2,2,3);
       
      imshow(L)
      
      disp(b)
      
    end

     if(a1>b1)
         
    subplot(2,2,4); imshow(U);
    
    disp(a1);
    
   else subplot(2,2,4); 
       
      imshow(D)
      
      disp(b1);
end
        
   

    
 
        
