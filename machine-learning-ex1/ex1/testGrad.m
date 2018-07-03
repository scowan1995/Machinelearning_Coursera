function test_suite=testGrad
  test_functions = localfunctions();
  initTestSuite;
end

function test_basic
  assertTrue(1 == 1);
  assertEqual(4, 8 /2);
  assertFalse(2 == 9);
end

function test_getThetaAdjustments
  test_theta = [1; 99; 2];
  assertEqual(size(test_theta), size(get_theta_adjustments(test_theta)));
  assertEqual(get_theta_adjustments(test_theta), [1; 1; 1]);
end


function test_derived_inner_term
  X = [ 2;
        2;
        4];  % 3 x 2
  Y = [1; 2; 3];  % 3 x 1
  Theta = [1; 1];  % 2 X 1
  return_val = derived_inner_term(X, Y, X(:, 1), Theta);
  assertEqual(return_val, 14);
end
