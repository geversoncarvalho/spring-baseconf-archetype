package ${package};

import ${package}.account.UserAuthenticationIntegrationTest;
import ${package}.home.HomeControllerTest;
import ${package}.signup.SignupControllerTest;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Suite.class)
@Suite.SuiteClasses({
        UserAuthenticationIntegrationTest.class,
        SignupControllerTest.class,
        HomeControllerTest.class
})
public class IntegrationTestsSuite {
}
