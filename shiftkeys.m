


function [sloc] = shiftkeys(im, xs, ys, direction, len)


[col,row] = size(im);
figure, imshow(im, []);hold on;
k = 1;


for (i = 1:size(xs,1))
   
    s = sin(direction(i));
    c = cos(direction(i));
    x1 = 0.0;
    y1 = 0.0;
    x2 = 1.0;
    y2 = 0.0;
    
    % Apply transform
    r1 = xs(i) - len(i) * (c * y1 + s * x1);
    c1 = ys(i) + len(i) * (- s * y1 + c * x1);
    r2 = xs(i) - len(i) * (c * y2 + s * x2);
    c2 = ys(i) + len(i) * (- s * y2 + c * x2);

    
%     if ((r2>len)&(c2>len))
%         if((r2<col-len) & (c2<row-len))     
            plot(round(c2), round(r2), '.g'); hold on;
            sloc(k, 2) = round(c2);
            sloc(k, 1) = round(r2); k = k + 1;
%         end
%     end
end








