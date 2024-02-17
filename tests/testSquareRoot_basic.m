classdef testSquareRoot_basic < matlab.unittest.TestCase
   
    methods (TestClassSetup)
        function addTestContentToPath(testCase)
        if ispc
            userHome = getenv('USERPROFILE');
        elseif isunix
            userHome = getenv('HOME');
        else
            error('Platform not supported');
        end
        sourceDir = fullfile(userHome, 'CircleCI_project', 'source');
        
        % Add the 'source' directory to the MATLAB search path
        addpath(sourceDir);
        end
    end       
    
    
    methods (Test)
        function testValues(testCase)
            testCase.verifyEqual(squareRoot(16),4);
            testCase.verifyEqual(squareRoot(81),9);            
        end
        
    end
   
end
