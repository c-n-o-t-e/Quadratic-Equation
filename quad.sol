pragma solidity 0.5.1;

contract QuadEqu {
   
    function sqrt(int x) internal pure returns (int y) {
       
        if (x == 0) return 0;
        else if (x <= 3) return 1;
        int z = (x + 1) / 2;
        y = x;
        while (z < y)
        {
            y = z;
            z = (x / z + z) / 2;
        }
    }
    
    
    function getAnswers(int a, int b, int8 c) public pure returns (int, int ) {
        
       uint t = uint(b);
        int k = a * c;
        int s = 4 * k;
        int o = 2 * a;
        int g = int8(t ** 2); 
        int h = g - s;
        int m;
        int n;
        n = (int(-t) - sqrt(h)) / o;
        m =  (int(-t) + sqrt(h)) / o;
        
        
        return (m, n);
    }
    
 

}
