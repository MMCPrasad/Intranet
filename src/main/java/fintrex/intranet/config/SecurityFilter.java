package fintrex.intranet.config;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/*")
public class SecurityFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        String uri = req.getRequestURI();
        System.out.println(uri);

        if (uri.endsWith("/admincontrol")) {
            if (req.getSession().getAttribute("uid") == null) {
                resp.sendRedirect("login");
                return;
            }
        } else if (uri.endsWith("/view_policy")) {
            if (req.getSession().getAttribute("uid") == null) {
                resp.sendRedirect("login_policy");
                return;
            }
        }

        // Continue with the filter chain
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }

}
