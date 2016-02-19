package ${package}.home;

import ${package}.account.AccountService;
import ${package}.config.WebSecurityConfigurationAware;
import org.junit.Test;
import org.mockito.Mock;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;

import java.util.Collections;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

public class HomeControllerTest extends WebSecurityConfigurationAware {

    @Mock
    private AccountService accountService;

    @Test
    public void shouldNotAccessLoggedHome() throws Exception {
        mockMvc.perform(get("/"))
                .andExpect(view().name("home.homeNotSignedIn"));
    }

    @Test
    public void shouldAccessLoggedHome() throws Exception {
        mockMvc.perform(get("/")
                .session(createFakeSession()))
                .andExpect(view().name("home.homeSignedIn"));
    }

    private MockHttpSession createFakeSession(){
        MockHttpSession session = new MockHttpSession();
        SecurityContext securityContext = new MockSecurityContext(createPrincipal());
        session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, securityContext);
        return session;
    }

    private Authentication createPrincipal(){
        SimpleGrantedAuthority role = new SimpleGrantedAuthority("ROLE_USER");
        User user = new User("user", "12345", Collections.singleton(role));
        return new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());
    }

    private class MockSecurityContext implements SecurityContext {

        private Authentication authentication;

        public MockSecurityContext(Authentication authentication) {
            this.authentication = authentication;
        }

        @Override
        public Authentication getAuthentication() {
            return this.authentication;
        }

        @Override
        public void setAuthentication(Authentication authentication) {
            this.authentication = authentication;
        }
    }
}
