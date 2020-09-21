package tomorn.in.th.jsf_primefaces;

import javax.faces.webapp.FacesServlet;

import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

/**
 *
 * @author tomornw
 */
@EnableAutoConfiguration
@ComponentScan({ "tomorn.in.th.jsf_primefaces" })
public class Application extends SpringBootServletInitializer {

    public static void main(final String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(final SpringApplicationBuilder application) {
        return application.sources(Application.class, Initializer.class);
    }

    @Bean
    public ServletRegistrationBean servletRegistrationBean() {
        final FacesServlet servlet = new FacesServlet();
        return new ServletRegistrationBean(servlet, "*.jsf");
    }
}
