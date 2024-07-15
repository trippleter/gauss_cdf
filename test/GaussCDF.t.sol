// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {GaussCDF} from "../src/GaussCDF.sol";
import "forge-std/console.sol";

contract GaussCDFTest is Test {
    GaussCDF public cdf;
    int256 constant public PRECISION = 1e8;

    function setUp() public {
        cdf = new GaussCDF(PRECISION);
    }

    function abs(int x) internal pure returns(int) {
        return x >= 0 ? x : -x;
    }

    // pasted 100 tests from tests.txt, can generate more through generateTests.js
    function testCDF1() external view {
        int256 x = 36015694059503985613;
        int256 mu = 19969961962628431706;
        uint sigma = 834153892679010411;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 1 is not within precision");
    }


    function testCDF2() external view {
        int256 x = -6287046926575651895;
        int256 mu = -30863053517483379551;
        uint sigma = 4599548386707647651;

        int256 errcw_result = 999999954323589013;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 2 is not within precision");
    }


    function testCDF3() external view {
        int256 x = 109856692015960391018;
        int256 mu = 46213684665621457270;
        uint sigma = 4333721957592297613;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 3 is not within precision");
    }


    function testCDF4() external view {
        int256 x = -79367942513688788608;
        int256 mu = -79106911113248514766;
        uint sigma = 7481368150465503852;

        int256 errcw_result = 486083347064677374;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 4 is not within precision");
    }


    function testCDF5() external view {
        int256 x = -133970026791586576564;
        int256 mu = -53443241507593299389;
        uint sigma = 6237271856477222265;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 5 is not within precision");
    }


    function testCDF6() external view {
        int256 x = -326542414278705451;
        int256 mu = -99113590659557800677;
        uint sigma = 7700115336962596757;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 6 is not within precision");
    }


    function testCDF7() external view {
        int256 x = 117305363281575893097;
        int256 mu = 81814336752037320366;
        uint sigma = 3037103969191172759;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 7 is not within precision");
    }


    function testCDF8() external view {
        int256 x = -13545335205042720261;
        int256 mu = -15756775752589106787;
        uint sigma = 5283868491439267956;

        int256 errcw_result = 662219011536584468;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 8 is not within precision");
    }


    function testCDF9() external view {
        int256 x = 32154782928897247984;
        int256 mu = 30929842823751130254;
        uint sigma = 3131166049622304826;

        int256 errcw_result = 652178600305951317;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 9 is not within precision");
    }


    function testCDF10() external view {
        int256 x = -5478788117127777468;
        int256 mu = -85309249125872185004;
        uint sigma = 7788706231684860981;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 10 is not within precision");
    }


    function testCDF11() external view {
        int256 x = -50976135664483450682;
        int256 mu = -95360016538797111707;
        uint sigma = 3262760154576738181;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 11 is not within precision");
    }


    function testCDF12() external view {
        int256 x = 82235353722606021165;
        int256 mu = 50661236449859103459;
        uint sigma = 1870137714866624279;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 12 is not within precision");
    }


    function testCDF13() external view {
        int256 x = -142082306258932646870;
        int256 mu = -69492175720710577025;
        uint sigma = 4042707292819549991;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 13 is not within precision");
    }


    function testCDF14() external view {
        int256 x = 68189845174030949693;
        int256 mu = 94269551593398858813;
        uint sigma = 5615747545311339906;

        int256 errcw_result = 1708380270607;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 14 is not within precision");
    }


    function testCDF15() external view {
        int256 x = -90096748045698859642;
        int256 mu = -92493775102886701234;
        uint sigma = 2891087689779843206;

        int256 errcw_result = 796478660062853727;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 15 is not within precision");
    }


    function testCDF16() external view {
        int256 x = 24639261022573972326;
        int256 mu = 1327092852390606481;
        uint sigma = 1282848288173070728;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 16 is not within precision");
    }


    function testCDF17() external view {
        int256 x = -213772437253583859729;
        int256 mu = -84380035904122379975;
        uint sigma = 8282119276533038033;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 17 is not within precision");
    }


    function testCDF18() external view {
        int256 x = 98665143149962588609;
        int256 mu = 1770050289200142402;
        uint sigma = 7716371248485853762;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 18 is not within precision");
    }


    function testCDF19() external view {
        int256 x = -63539792929152348222;
        int256 mu = -62620181398569926046;
        uint sigma = 9170860151121098980;

        int256 errcw_result = 460062822102412450;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 19 is not within precision");
    }


    function testCDF20() external view {
        int256 x = -2293555535015928015;
        int256 mu = -12417962632309453852;
        uint sigma = 1051917177038259599;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 20 is not within precision");
    }


    function testCDF21() external view {
        int256 x = 59484813750265267629;
        int256 mu = 11528543541868785383;
        uint sigma = 2455685201657786809;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 21 is not within precision");
    }


    function testCDF22() external view {
        int256 x = 93237471050422200847;
        int256 mu = 97026115478263108116;
        uint sigma = 6030538683030830072;

        int256 errcw_result = 264922322333838722;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 22 is not within precision");
    }


    function testCDF23() external view {
        int256 x = 30621947680702056971;
        int256 mu = -18217288589975353830;
        uint sigma = 6398347246433536029;

        int256 errcw_result = 999999999999988565;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 23 is not within precision");
    }


    function testCDF24() external view {
        int256 x = -133423656392233169754;
        int256 mu = 45190254855650920263;
        uint sigma = 9191709618374856561;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 24 is not within precision");
    }


    function testCDF25() external view {
        int256 x = 56803124261263562289;
        int256 mu = 37353021571441900051;
        uint sigma = 6015517961101036093;

        int256 errcw_result = 999388200776714863;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 25 is not within precision");
    }


    function testCDF26() external view {
        int256 x = 153879089065797074909;
        int256 mu = 36985054807679631494;
        uint sigma = 9004660683619247763;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 26 is not within precision");
    }


    function testCDF27() external view {
        int256 x = 23964257505033092599;
        int256 mu = 14226285335333301418;
        uint sigma = 3699797539003450986;

        int256 errcw_result = 995756161673482687;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 27 is not within precision");
    }


    function testCDF28() external view {
        int256 x = -45281971183225678601;
        int256 mu = -73840071347199966567;
        uint sigma = 2518243723672124457;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 28 is not within precision");
    }


    function testCDF29() external view {
        int256 x = 105102104643938645268;
        int256 mu = 48891549414560984133;
        uint sigma = 2847323710538234298;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 29 is not within precision");
    }


    function testCDF30() external view {
        int256 x = 28520491033985866380;
        int256 mu = 48064590545674121813;
        uint sigma = 6561286319728056426;

        int256 errcw_result = 1447373177626487;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 30 is not within precision");
    }


    function testCDF31() external view {
        int256 x = -68851822929634849402;
        int256 mu = -76791147269683648346;
        uint sigma = 4093315720445918515;

        int256 errcw_result = 973784789475046986;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 31 is not within precision");
    }


    function testCDF32() external view {
        int256 x = 63458524498101212430;
        int256 mu = -90305664317232896110;
        uint sigma = 9927030197011735169;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 32 is not within precision");
    }


    function testCDF33() external view {
        int256 x = 17212361734878157904;
        int256 mu = -98537203960776281519;
        uint sigma = 7243422696205059630;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 33 is not within precision");
    }


    function testCDF34() external view {
        int256 x = -61652269854560934448;
        int256 mu = -4643865940460173647;
        uint sigma = 4640673298973830185;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 34 is not within precision");
    }


    function testCDF35() external view {
        int256 x = -27014966396987432518;
        int256 mu = -28242442341541675432;
        uint sigma = 4025669161749125813;

        int256 errcw_result = 619783505348338482;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 35 is not within precision");
    }


    function testCDF36() external view {
        int256 x = -61492196772855692188;
        int256 mu = -89616252880736752218;
        uint sigma = 4468166822840588637;

        int256 errcw_result = 999999999845621379;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 36 is not within precision");
    }


    function testCDF37() external view {
        int256 x = 70850626931440928047;
        int256 mu = 73328758027576242284;
        uint sigma = 326254953667701741;

        int256 errcw_result = 15308;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 37 is not within precision");
    }


    function testCDF38() external view {
        int256 x = 75307155022402255895;
        int256 mu = 4206794719820194928;
        uint sigma = 8061771413204581904;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 38 is not within precision");
    }


    function testCDF39() external view {
        int256 x = -1356122918365088026;
        int256 mu = -38398260549745486969;
        uint sigma = 6879859299948261508;

        int256 errcw_result = 999999963604437769;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 39 is not within precision");
    }


    function testCDF40() external view {
        int256 x = -162280694074048966513;
        int256 mu = -75718067819972830534;
        uint sigma = 4727852067043841089;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 40 is not within precision");
    }


    function testCDF41() external view {
        int256 x = 127659212545223908819;
        int256 mu = -518368506151574593;
        uint sigma = 9103184475367891437;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 41 is not within precision");
    }


    function testCDF42() external view {
        int256 x = -91962996889749774709;
        int256 mu = -99716658583238213964;
        uint sigma = 441313763385726698;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 42 is not within precision");
    }


    function testCDF43() external view {
        int256 x = 41258781896157394442;
        int256 mu = 97653628118391054613;
        uint sigma = 5493888259702579546;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 43 is not within precision");
    }


    function testCDF44() external view {
        int256 x = 163855875885330021902;
        int256 mu = 54138651726593735702;
        uint sigma = 7242324661471775116;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 44 is not within precision");
    }


    function testCDF45() external view {
        int256 x = 132585004039594480219;
        int256 mu = 59776010091031224647;
        uint sigma = 4242984358742816653;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 45 is not within precision");
    }


    function testCDF46() external view {
        int256 x = 162445576618840817673;
        int256 mu = 38742737551772961524;
        uint sigma = 8204225964192765730;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 46 is not within precision");
    }


    function testCDF47() external view {
        int256 x = 82140417987635800046;
        int256 mu = -28224315340080210035;
        uint sigma = 6244175603957156540;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 47 is not within precision");
    }


    function testCDF48() external view {
        int256 x = -195388041684463303227;
        int256 mu = -55783096852454420400;
        uint sigma = 8721909628966537653;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 48 is not within precision");
    }


    function testCDF49() external view {
        int256 x = 16851049993369684898;
        int256 mu = 31133040885206412440;
        uint sigma = 5063578188241439904;

        int256 errcw_result = 2397194866319836;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 49 is not within precision");
    }


    function testCDF50() external view {
        int256 x = -1796718441908367936;
        int256 mu = -97794748982200019327;
        uint sigma = 5817612390059220928;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 50 is not within precision");
    }


    function testCDF51() external view {
        int256 x = -27678877915733195891;
        int256 mu = 73323217098116487023;
        uint sigma = 6008144233198815520;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 51 is not within precision");
    }


    function testCDF52() external view {
        int256 x = 39733441836881404186;
        int256 mu = 54994566343961139410;
        uint sigma = 1867871274528523085;

        int256 errcw_result = 154;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 52 is not within precision");
    }


    function testCDF53() external view {
        int256 x = -69975375690070976020;
        int256 mu = -5817649056048963985;
        uint sigma = 3691397222137178247;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 53 is not within precision");
    }


    function testCDF54() external view {
        int256 x = 42120864976956312375;
        int256 mu = -29457519488451922030;
        uint sigma = 5212801471314671531;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 54 is not within precision");
    }


    function testCDF55() external view {
        int256 x = -210355765245108187855;
        int256 mu = -67115319472119949751;
        uint sigma = 7265208084350874174;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 55 is not within precision");
    }


    function testCDF56() external view {
        int256 x = -9387324856718445076;
        int256 mu = -1779204087324345096;
        uint sigma = 1307081417757005593;

        int256 errcw_result = 2930191223;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 56 is not within precision");
    }


    function testCDF57() external view {
        int256 x = 66976259446793150687;
        int256 mu = 91934622674455596325;
        uint sigma = 7529538198496117829;

        int256 errcw_result = 458663431154870;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 57 is not within precision");
    }


    function testCDF58() external view {
        int256 x = -96366193586777086466;
        int256 mu = -3511528527563939406;
        uint sigma = 9808846611180715769;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 58 is not within precision");
    }


    function testCDF59() external view {
        int256 x = -22967814213179114091;
        int256 mu = -21561673647554258082;
        uint sigma = 4950992286655737651;

        int256 errcw_result = 388200657776899161;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 59 is not within precision");
    }


    function testCDF60() external view {
        int256 x = 66748386674316833478;
        int256 mu = 34588305357322383315;
        uint sigma = 9793698977971192932;

        int256 errcw_result = 999487825371443872;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 60 is not within precision");
    }


    function testCDF61() external view {
        int256 x = 52190192236242317847;
        int256 mu = -57353440565295564113;
        uint sigma = 6029281885342108183;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 61 is not within precision");
    }


    function testCDF62() external view {
        int256 x = 109144163727116350060;
        int256 mu = 70636694548370257962;
        uint sigma = 5355770174479608237;

        int256 errcw_result = 999999999999675815;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 62 is not within precision");
    }


    function testCDF63() external view {
        int256 x = -28408096730756085435;
        int256 mu = 61172387872865044756;
        uint sigma = 7876252727272074594;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 63 is not within precision");
    }


    function testCDF64() external view {
        int256 x = 136962153690367572;
        int256 mu = 14444790492906150803;
        uint sigma = 1429683574554674319;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 64 is not within precision");
    }


    function testCDF65() external view {
        int256 x = -64599447575399153720;
        int256 mu = -87205860907979015906;
        uint sigma = 2783094002284427493;

        int256 errcw_result = 999999999999999778;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 65 is not within precision");
    }


    function testCDF66() external view {
        int256 x = -66030110854097515016;
        int256 mu = -69195083931389291365;
        uint sigma = 1196844029211321381;

        int256 errcw_result = 995908597125968686;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 66 is not within precision");
    }


    function testCDF67() external view {
        int256 x = 59872887953264651628;
        int256 mu = 40518599522473010666;
        uint sigma = 9935501652814560103;

        int256 errcw_result = 974292106420420745;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 67 is not within precision");
    }


    function testCDF68() external view {
        int256 x = 264629767302074810686;
        int256 mu = 84292807597356357974;
        uint sigma = 9355990328219711216;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 68 is not within precision");
    }


    function testCDF69() external view {
        int256 x = -60056429650235827467;
        int256 mu = -35187738559403399563;
        uint sigma = 1425041620731140046;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 69 is not within precision");
    }


    function testCDF70() external view {
        int256 x = 57582649206696515876;
        int256 mu = 31524434352881684163;
        uint sigma = 4925676314426990388;

        int256 errcw_result = 999999938935919097;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 70 is not within precision");
    }


    function testCDF71() external view {
        int256 x = 109705524597549583632;
        int256 mu = 50101783860834188999;
        uint sigma = 5162685987613699901;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 71 is not within precision");
    }


    function testCDF72() external view {
        int256 x = 126375164303963828161;
        int256 mu = 81107894526251300249;
        uint sigma = 2607422382316690879;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 72 is not within precision");
    }


    function testCDF73() external view {
        int256 x = 39500026973972587996;
        int256 mu = 39927080159845644403;
        uint sigma = 6896349101092294376;

        int256 errcw_result = 475311424770760493;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 73 is not within precision");
    }


    function testCDF74() external view {
        int256 x = -66665217885093625227;
        int256 mu = -71025159020977383761;
        uint sigma = 3637595211976532017;

        int256 errcw_result = 884653929227927627;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 74 is not within precision");
    }


    function testCDF75() external view {
        int256 x = -24805863583956536900;
        int256 mu = -58779193603661909151;
        uint sigma = 1761941455548781121;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 75 is not within precision");
    }


    function testCDF76() external view {
        int256 x = -66615374579700500135;
        int256 mu = -92622092454336879541;
        uint sigma = 7191725122054739572;

        int256 errcw_result = 999850520393153475;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 76 is not within precision");
    }


    function testCDF77() external view {
        int256 x = -7349751737624693249;
        int256 mu = -43479194547461965215;
        uint sigma = 3958074721444428956;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 77 is not within precision");
    }


    function testCDF78() external view {
        int256 x = 150915448052903343523;
        int256 mu = 94647744867961051796;
        uint sigma = 4350013938111674250;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 78 is not within precision");
    }


    function testCDF79() external view {
        int256 x = -51490264323832946047;
        int256 mu = -51786124693749748360;
        uint sigma = 18592993871626717;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 79 is not within precision");
    }


    function testCDF80() external view {
        int256 x = -91058034354559652002;
        int256 mu = -58028559378585775619;
        uint sigma = 9981295093508212091;

        int256 errcw_result = 467919846219223;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 80 is not within precision");
    }


    function testCDF81() external view {
        int256 x = 47741830499407612365;
        int256 mu = 27240615294925518697;
        uint sigma = 1872054226126833587;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 81 is not within precision");
    }


    function testCDF82() external view {
        int256 x = 137924259414269869239;
        int256 mu = 91220858434794621417;
        uint sigma = 7313712285505353350;

        int256 errcw_result = 999999999914709781;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 82 is not within precision");
    }


    function testCDF83() external view {
        int256 x = 91476864261250881327;
        int256 mu = 52389378931455070187;
        uint sigma = 6398740746634397070;

        int256 errcw_result = 999999999497523384;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 83 is not within precision");
    }


    function testCDF84() external view {
        int256 x = -57129163219347105951;
        int256 mu = 45536655059511758736;
        uint sigma = 9147587974957900769;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 84 is not within precision");
    }


    function testCDF85() external view {
        int256 x = -121823453809625718236;
        int256 mu = 2849657986284000799;
        uint sigma = 9575003751395529505;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 85 is not within precision");
    }


    function testCDF86() external view {
        int256 x = -989006646584428495;
        int256 mu = -30053389050542065775;
        uint sigma = 8593822288413257127;

        int256 errcw_result = 999640210744679902;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 86 is not within precision");
    }


    function testCDF87() external view {
        int256 x = 119777439458970206942;
        int256 mu = 72299851959723781647;
        uint sigma = 7240910457621874130;

        int256 errcw_result = 999999999972522535;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 87 is not within precision");
    }


    function testCDF88() external view {
        int256 x = 12078446199091374069;
        int256 mu = -23584426808732132486;
        uint sigma = 6846458201725034165;

        int256 errcw_result = 999999905044952508;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 88 is not within precision");
    }


    function testCDF89() external view {
        int256 x = -246200940339115618372;
        int256 mu = -95957015897734095233;
        uint sigma = 8749554732490878450;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 89 is not within precision");
    }


    function testCDF90() external view {
        int256 x = 110315283771106692257;
        int256 mu = 49064456221110845036;
        uint sigma = 9206538533196047425;

        int256 errcw_result = 999999999985638155;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 90 is not within precision");
    }


    function testCDF91() external view {
        int256 x = -76187376294532256793;
        int256 mu = 28311488500540406221;
        uint sigma = 5694611814707317698;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 91 is not within precision");
    }


    function testCDF92() external view {
        int256 x = 47419445719546999385;
        int256 mu = 75856673193033060443;
        uint sigma = 2349302581027559178;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 92 is not within precision");
    }


    function testCDF93() external view {
        int256 x = -14169365374728286611;
        int256 mu = 83320185916757168343;
        uint sigma = 6452463255536766695;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 93 is not within precision");
    }


    function testCDF94() external view {
        int256 x = -53795824400276359256;
        int256 mu = -22479132437341547757;
        uint sigma = 1703421286877471186;

        int256 errcw_result = 0;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 94 is not within precision");
    }


    function testCDF95() external view {
        int256 x = 21402999749660263973;
        int256 mu = 5351225200987386188;
        uint sigma = 991371376121925607;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 95 is not within precision");
    }


    function testCDF96() external view {
        int256 x = -90692908379886844727;
        int256 mu = -98491883353745677709;
        uint sigma = 695353706895485146;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 96 is not within precision");
    }


    function testCDF97() external view {
        int256 x = -20303760728571099037;
        int256 mu = -37439000039557200239;
        uint sigma = 2676913530392182050;

        int256 errcw_result = 999999999922878358;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 97 is not within precision");
    }


    function testCDF98() external view {
        int256 x = 73622337335380208856;
        int256 mu = 56087044973561148709;
        uint sigma = 965816339096960963;

        int256 errcw_result = 1000000000000000000;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 98 is not within precision");
    }


    function testCDF99() external view {
        int256 x = 86608350998381723684;
        int256 mu = 89380052582156054086;
        uint sigma = 8748543084017425642;

        int256 errcw_result = 375690616492528551;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 99 is not within precision");
    }


    function testCDF100() external view {
        int256 x = 85664068498882500080;
        int256 mu = 15479330892609382886;
        uint sigma = 9523605247472472612;

        int256 errcw_result = 999999999999914402;
        int256 my_result = cdf.cdf(x, mu, sigma);

        assertTrue(abs(errcw_result - my_result) < PRECISION, "Result of test 100 is not within precision");
    }



}
