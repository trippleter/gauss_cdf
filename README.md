## Gaussian CDF in EVM

This code uses github.com/errcw/gaussian in order to estimate a Gaussian CDF in solidity.

**test/GaussCDF.t.sol - test the implementation**
```
forge test -vv
```

**src/GaussCDF.sol - code of the cdf implementation**

**generateTests.js - generate more tests (erases previous ones)**
```
node generateTests.js
```

**tests.txt - copy-paste them into test/GaussCDF.t.sol to run more tests**


***errcw/gaussian***

My code implements these functions considering potential under/overflows and 18 decimal fixed point parameters x, μ, σ.

e^x is estimated using taylor series.

```
var erfc = function(x) {
    var z = Math.abs(x);
    var t = 1 / (1 + z / 2);
    var r = t * Math.exp(-z * z - 1.26551223 + t * (1.00002368 +
            t * (0.37409196 + t * (0.09678418 + t * (-0.18628806 +
            t * (0.27886807 + t * (-1.13520398 + t * (1.48851587 +
            t * (-0.82215223 + t * 0.17087277)))))))))
    return x >= 0 ? r : 2 - r;
};

Gaussian.prototype.cdf = function(x) {
    return 0.5 * erfc(-(x - this.mean) / (this.standardDeviation * Math.sqrt(2)));
};
```