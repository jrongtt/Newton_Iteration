f = @testFunc;
dfdx = @testDeriv;
tol1 = 0.001;
tol2 = 0.000000000001;
problem1_roots = [];


xmin1 = 0;
xmax1 = 0.03;
problem1_roots(end+1) = hybrid(f, dfdx, xmin1, xmax1, tol1, tol2);

xmin2 = 0.1;
xmax2 = 0.2;
problem1_roots(end+1) = hybrid(f, dfdx, xmin2, xmax2, tol1, tol2);

xmin3 = 0.2;
xmax3 = 0.4;
problem1_roots(end+1) = hybrid(f, dfdx, xmin3, xmax3, tol1, tol2);

xmin4 = 0.5;
xmax4 = 0.6;
problem1_roots(end+1) = hybrid(f, dfdx, xmin4, xmax4, tol1, tol2);


xmin5 = 0.8;
xmax5 = 0.9;
problem1_roots(end+1) = hybrid(f, dfdx, xmin5, xmax5, tol1, tol2);

xmin6 = 1.1;
xmax6 = 1.2;
problem1_roots(end+1) = hybrid(f, dfdx, xmin6, xmax6, tol1, tol2);

xmin7 = 1.4;
xmax7 = 1.5;
problem1_roots(end+1) = hybrid(f, dfdx, xmin7, xmax7, tol1, tol2);

xmin8 = 1.65;
xmax8 = 1.75;
problem1_roots(end+1) = hybrid(f, dfdx, xmin8, xmax8, tol1, tol2);

xmin8 = 1.85;
xmax8 = 1.95;
problem1_roots(end+1) = hybrid(f, dfdx, xmin8, xmax8, tol1, tol2);

xmin9 = 1.9;
xmax9 = 2;
problem1_roots(end+1) = hybrid(f, dfdx, xmin9, xmax9, tol1, tol2);

format long






Func = @testArrayFunc;
Jac = @testJacFunc;
x0 =  [-1, 0.75, 1.5]';
tol = 0.000000000001;


problem2_root = newtond(Func, Jac, x0, tol);

problem1_roots

problem2_root





