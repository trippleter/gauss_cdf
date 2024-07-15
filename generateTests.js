const gaussian = require('gaussian');
const fs = require('fs')
const ethers = require('ethers')

// generates 100 tests and writes them to tests.txt (later copy-paste them to GaussCDF.t.sol in foundry)

// install dependencies:
// npm i gaussian fs ethers

// run:
// node generateTests.js

function generateTests() {
  const number_of_tests = 100
  fs.writeFileSync('./tests.txt', '')

  for (let i = 0; i < number_of_tests; ++i) {

    // mean is from -100 to 100
    const mean = (Math.random() * 200) - 100;  
    // standardDeviation is from 0 to 10
    const standardDeviation = Math.random() * 10; 
    // x is from -20 to 20 standard deviations from the mean (this way the tests are more reasonable)
    let x = mean + 20 * ((Math.random() * 2) - 1) * standardDeviation;

    let retries = 0
    while (x > 10000 || x < -10000 && retries < 5) {
      x = mean + 15 * ((Math.random() * 2) - 1) * standardDeviation;
      retries++
      if (retries == 4) {
        console.log(`Couldn't generate adequate x for test #${i+1}, setting x to 100`)
        x = 100
      }
    }

    // test random x, but such condition will mostly throw edge cases, where x is too far from the mean
    // const x = (Math.random() * 20000) - 10000; // x is from -10000 to 10000

    // variance = std^2
    const distribution = gaussian(mean, standardDeviation**2)
    const result = distribution.cdf(x)

    // append the test to tests.txt
    fs.appendFileSync('./tests.txt', `
    function testCDF${i + 1}() external view {
        int256 x = ${ethers.parseEther(x.toFixed(18))};
        int256 mu = ${ethers.parseEther(mean.toFixed(18))};
        uint sigma = ${ethers.parseEther(standardDeviation.toFixed(18))};

        int256 errcw_result = ${ethers.parseEther(result.toFixed(18))};
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test ${i+1} is not within precision");
    }\n\n`);
  }
  console.log("Written tests to tests.txt")
}

generateTests()