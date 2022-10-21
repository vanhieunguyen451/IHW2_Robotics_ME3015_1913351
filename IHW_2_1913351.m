function IHW2(student_ID)
    ZZZ = mod(student_ID,1000);
    student_ID = (student_ID - ZZZ)/1000;
    YY = mod(student_ID,100);
    student_ID = student_ID - YY;
    XX = student_ID/100;
    ZZZ = ZZZ*pi/180;   %rad
    fprintf('Initially: ')
    T = eye(4)
    % Step 1
    T(1,4) = XX;
    fprintf("After 1 step")
    T1 = T
    % Step 2
    R = [cos(ZZZ) 0 sin(ZZZ) 0;
         0 1 0 0;
         -sin(ZZZ) 0 cos(ZZZ) 0;
         0 0 0 1];
    fprintf("After 2 steps")
    T2 = T1*R
    % Step 3
    R = [cos(ZZZ) -sin(ZZZ) 0 0;
         sin(ZZZ) cos(ZZZ) 0 0;
         0 0 1 0;
         0 0 0 1];
    fprintf("After 3 steps")
    T3 = T2*R
    % Step 4
    P = [1 0 0 YY;
         0 1 0 0;
         0 0 1 0;
         0 0 0 1];   
    fprintf("After 4 steps")
    T4 = T3*P
    % Coordinate of P
    fprintf("Coordinate of P")
    Rp = T4*[1;1;1;1]
end