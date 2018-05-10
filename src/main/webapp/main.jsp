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
  <link href="<c:url value='/webjars/font-awesome/5.0.10/web-fonts-with-css/css/fontawesome-all.min-jsf.css'/>" rel="stylesheet" type="text/css">
  <link href="<c:url value='/webjars/bootstrap/4.1.0/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">
  <link href="<c:url value='/webjars/highlight.js/9.12.0/styles/xcode.css'/>" rel="stylesheet" type="text/css">
  <link href="<c:url value='/assets/css/style.css'/>" rel="stylesheet" type="text/css">
  <script type="text/javascript">
    window.ux = window.ux || {};
    window.ux.SESSION_ID = "<%=request.getSession().getId()%>";
    window.ux.ROOT_URL = "<c:url value='/'/>".replace(';jsessionid=' + window.ux.SESSION_ID, '');
  </script>
  <base href="<c:url value='/'/>">
</head>
<body class="ux-main">
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <div class="container-fluid">
            <div class="navbar-header navbar-nav">
                <a class="navbar-brand logo" href="main/">MovieChat</a>
                <div class="nav-item">
                    <a class="nav-link" href="login">Login page</a>
                </div>
                <div class="nav-item">
                    <a class="ux-clear nav-link" href="" onclick="event.preventDefault(); clearCookie(); location.reload();">Clear cookie</a>
                </div>
            </div>
            <div class="d-flex align-items-center text-light ux-logout-block mr-1" style="display: none!important;" >
                <img class="mr-2 rounded-circle ux-avatar" height="30" width="30">
                <div class="small mr-3">
                    <div class="small">WELCOME</div>
                    <h6 class="ux-username font-weight-normal m-0"></h6>
                </div>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="ux-content-area mt-3">
            <article>
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="card my-3">
                            <div class="card-body">
                                <h5 class="text-weight-light">Access Token</h5>
                                <code class="ux-access json"></code>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="card my-3">
                            <div class="card-body">
                                <h5 class="text-weight-light">Refresh Token</h5>
                                <code class="ux-refresh json"></code>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card my-3">
                            <div class="card-body">
                                <h5 class="text-weight-light">Cookie</h5>
                                <code class="ux-cookie json"></code>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </div>
    </div>
    <!-- <script type="text/javascript" src="<c:url value='/webjars/jquery/3.3.1/jquery.min.js'/>"></script> -->
    <!-- <script type="text/javascript" src="<c:url value='/webjars/bootstrap/4.1.0/js/bootstrap.bundle.min.js'/>"></script> -->
    <script type="text/javascript" src="<c:url value='/webjars/pako/1.0.6/dist/pako.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/webjars/highlightjs/9.8.0/highlight.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/tools/zip.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/tools/md5.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/app.js'/>"></script>
</body>
</html>
