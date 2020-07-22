function [X] = myEdgeDetector(P, thresh)
    Fx = [1, 0, -1; 1, 0, -1; 1, 0, -1];
    Fy = [1, 1, 1; 0, 0, 0; -1, -1, -1];
    Ph = myFilterer(P, Fx);
    Pv = myFilterer(P, Fy);
    X = Pv + Ph;
    X = im2bw(X, thresh);
end
