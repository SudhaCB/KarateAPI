package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersTest {
//    
//    @Karate.Test
//    Karate testUsers() {
//        return Karate.run("25092023_Conduit_App_APITesting.feature").relativeTo(getClass());
//    } 
    
    @Karate.Test
    Karate testUsers1() {
        return Karate.run().tags("@debug").relativeTo(getClass());
    } 

}











