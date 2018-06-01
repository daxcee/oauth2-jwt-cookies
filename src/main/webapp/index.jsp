<!DOCTYPE html>
<!--
Licensed to the Apache Software Foundation (ASF) under one or more
contributor license agreements. See the NOTICE file distributed with
this work for additional information regarding copyright ownership.
The ASF licenses this file to You under the Apache License, Version 2.0
(the "License"); you may not use this file except in compliance with
the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Moviefun</title>
  <link href="<c:url value='/webjars/font-awesome/5.0.10/web-fonts-with-css/css/fontawesome-all.min-jsf.css'/>" rel="stylesheet">
  <link href="<c:url value='/webjars/bootstrap/4.1.0/css/bootstrap.min.css'/>" rel="stylesheet">
  <link href="<c:url value='/assets/css/style.css'/>" rel="stylesheet" type="text/css">
  <script type="text/javascript">
    window.ux = window.ux || {};
    window.ux.SESSION_ID = "<%=request.getSession().getId()%>";
    window.ux.ROOT_URL = "<c:url value='/'/>".replace(';jsessionid=' + window.ux.SESSION_ID, '');
  </script>
  <base href="<c:url value='/'/>">
</head>
<body class="ux-login">
    <div class="container">
        <div class="ux-content-area">
            <div class="back-drop login"></div>
            <div class="back-drop shadow"></div>
            <article class="text-center">
                <div class="row">
                    <div class="col-md-12">
                        <form class="form-login" action="/oauth2/cookie" method="post">
                            <input type="hidden" name="ref" value="/oauth2-jwt-cookies/main/">
                            <img class="mb-2" src="assets/img/logo.png" alt="MovieChat logo">
                            <h1 class="h4 mb-4 font-weight-light pt-4">Sign In</h1>
                            <div class="inner-addon left-addon">
                                <label for="inputUsername" class="sr-only">Username</label>
                                <i class="fa fa-user"></i>
                                <input type="text" name="username" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
                            </div>
                            <div class="inner-addon left-addon">
                                <label for="inputPassword" class="sr-only">Password</label>
                                <i class="fa fa-lock"></i>
                                <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
                            </div>
                            <input type="password" type="text" name="grant_type" value="password" hidden required>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase mt-5" type="submit">Sign in</button>
                            <p class="mt-5 mb-5 text-muted">&copy; 2018</p>
                        </form>
                    </div>
                </div>
            </article>
        </div>
    </div>
</body>
</html>
