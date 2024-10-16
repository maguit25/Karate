package petShop;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class PetShopTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:petShop")
                .outputCucumberJson(true)
                .karateEnv("dev")
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
