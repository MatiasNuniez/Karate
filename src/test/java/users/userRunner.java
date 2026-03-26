package users;

import com.intuit.karate.junit5.Karate;

class userRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run("user_create", "user_get", "user_update", "user_delete")
                .relativeTo(getClass());
    }
}