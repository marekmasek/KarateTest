package examples.web;

import com.intuit.karate.junit5.Karate;

class GoogleRunner {
    
    @Karate.Test
    Karate testWeb() {
        return Karate.run("google").relativeTo(getClass());
    }    

}
