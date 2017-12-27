<%@ page import="net.tanesha.recaptcha.ReCaptchaImpl"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaResponse"%>

<html>
<body>
	<%
	   //get IP Addrs browser machine
        String remoteAddr = request.getRemoteAddr();
        // Connnect Google Recaptcha strore
        ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
        reCaptcha.setPrivateKey("6LdUeD4UAAAAAB_8k8jh8sJclYuUSWsd2aEkF9Wp");
         //get challenge and answer content from the enduser
        String challenge = request.getParameter("recaptcha_challenge_field");
        String answer = request.getParameter("recaptcha_response_field");
        //Validate challenge and answer
        ReCaptchaResponse res = reCaptcha.checkAnswer(remoteAddr, challenge, answer);

        if (res.isValid()) {
          out.print("Answer was entered correctly!");
        } else { %>
          <jsp:forward page="index.jsp"/>
          
       <% }
      %>
</body>
</html>