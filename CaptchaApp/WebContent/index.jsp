<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
    <%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>

    <html>
      <body>
        <form action="verify.jsp" method="post">
        <%
          //ReCaptcha c = ReCaptchaFactory.newReCaptcha("your_public_key", "your_private_key", false);
        
        
        ReCaptcha captcha = ReCaptchaFactory.newReCaptcha("6LdUeD4UAAAAAMN3yxaaf78NESWMcvLvbRBw4Dit", "6LdUeD4UAAAAAB_8k8jh8sJclYuUSWsd2aEkF9Wp", false);
          out.print(captcha.createRecaptchaHtml(null, null));
        %>
        <input type="submit" value="submit" />
        </form>
      </body>
    </html>
