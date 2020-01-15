package icu.samnyan.aqua.sega.diva.filter;

import icu.samnyan.aqua.sega.chunithm.filter.ChuniRequestWrapper;
import icu.samnyan.aqua.sega.util.Compression;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Base64;

/**
 * @author samnyan (privateamusement@protonmail.com)
 */
@Component
public class DivaCompressionFilter extends OncePerRequestFilter {

    private static final Logger logger = LoggerFactory.getLogger(DivaCompressionFilter.class);

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {

        String encoding = request.getHeader("pragma");
        byte[] reqSrc = request.getInputStream().readAllBytes();

        byte[] reqResult;
        if (encoding != null && encoding.equals("DFI")) {
            reqResult = Base64.getMimeDecoder().decode(reqSrc);
            reqResult = Compression.decompress(reqResult);
        } else {
            reqResult = reqSrc;
        }

        ChuniRequestWrapper requestWrapper = new ChuniRequestWrapper(request, reqResult);

        filterChain.doFilter(requestWrapper, response);

    }

    @Override
    protected boolean shouldNotFilter(HttpServletRequest request) throws ServletException {
        String path = request.getServletPath();
        return !path.startsWith("/diva");
    }
}
