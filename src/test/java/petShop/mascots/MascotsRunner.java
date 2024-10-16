package petShop.mascots;

import com.intuit.karate.junit5.Karate;

class MascotsRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("mascots").relativeTo(getClass());
    }    

}
