package ${package};

import ${package}.account.AccountServiceTest;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Suite.class)
@Suite.SuiteClasses({
        AccountServiceTest.class
})
public class UnitTestsSuite {
}
