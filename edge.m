function edge()                                     % main function
Dds('img.jpg')                                      % calling Dds function
end 

function Dds(im)                           
 original=imread(im);                               % reading image
 grayscale=rgb2gray(original);                      % converting original color image into grayscale image
 
 figure(1);
 imshow(original);                                  % displaying original color image
 figure(2);
 imshow(grayscale);                                 % displaying grayscale image
 
 k_v=[-1 0 1;-2 0 2;-1 0 1];                        % Kernel matrix for vertical edges
 k_h=[1 2 1;0 0 0;-1 -2 -1];                        % Kernel matrix for horizontal edges 
 
 vertical=conv2(double(grayscale),double(k_v));     % performing 2D covolution of grayscale image and kernel matrix
 horizontal=conv2(double(grayscale),double(k_h));   % performing 2D covolution of grayscale image and kernel matrix
 
 figure(3);
 imshow(abs(vertical),[]);                          % displaying vertical edges
 figure(4);
 imshow(abs(horizontal),[]);                        % displaying vertical edges
 
 figure(5);
 imshow((vertical.^2+horizontal.^2).^0.5,[]);       % displaying horizontal edges
 
end








 
 
 
 
 
 
 

 
 
    