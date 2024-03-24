b = [0.25 -0.5 1; 0 0 1; 0.25 0.5 1; 2.25 1.5 1; 4 2 1] % x^2, x, 1
yhat = [6 7 5 3 0]'
bTyhat = b'*yhat
bTb = b'*b
bTb_bTyhat = [bTb, bTyhat]
reduced_bTb_bTyhat = rref(bTb_bTyhat)
cVector = reduced_bTb_bTyhat(1:3,4)
y = b*cVector
X = b(1:5,2)

figure(3)
scatter(X,yhat); hold on
fplot(@(x) ((x^2)*cVector(1,1)+(x*cVector(2,1))+cVector(3,1)))
xlabel('yhat'); ylabel('regression')
legend('(yhat)', '(y)');
