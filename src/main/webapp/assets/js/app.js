/*!
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

(function (document, hljs, md5) {
    'use strict';

    function getCookie() {
        var matches = document.cookie.match(new RegExp(
            "(?:^|; )Bearer=([^;]*)"
        ));
        return matches ? decodeURIComponent(matches[1]) : undefined;
    }
    document.getCookie = getCookie;

    function clearCookie() {
        document.cookie = 'Bearer=; path=/; expires=Thu, 01 Jan 1970 00:00:01 GMT; Max-Age=0;';
    }
    document.clearCookie = clearCookie;

    function gravatar(emailStr) {
        const gr = (emailStr || '').trim();
        if (!gr || !gr.length) return "//www.gravatar.com/avatar/?s=90";
        return "//www.gravatar.com/avatar/" + md5(gr) + "?s=90&d=retro"
    }

    function parseResp(resp) {
        var accessJwt = resp && resp['access_token'] && window.zip.jwtDecode(resp['access_token']);
        var refreshJwt = resp && resp['refresh_token'] && window.zip.jwtDecode(resp['refresh_token']);

        return {
            cookieData: resp,
            accessJwt: accessJwt,
            refreshJwt: refreshJwt
        }
    }

    var cookieValue = getCookie();

    var data = cookieValue && JSON.parse(atob(cookieValue));

    var auth = data && parseResp(data);

    if (!!auth) {
        document.querySelector('.ux-cookie').innerText = JSON.stringify(auth.cookieData,null,'  ');
        document.querySelector('.ux-access').innerText = JSON.stringify(auth.accessJwt,null,'  ');
        document.querySelector('.ux-refresh').innerText = JSON.stringify(auth.refreshJwt,null,'  ');
        document.querySelector('.ux-username').innerText = auth.accessJwt.payload.username || auth.accessJwt.payload.name;
        document.querySelector('.ux-avatar').setAttribute('src', gravatar(auth.accessJwt.payload.email));
        document.querySelector('.ux-logout-block').style.display = '';
        Array.prototype.slice.call(document.querySelectorAll('code.json')).forEach( function (item) {
            hljs.highlightBlock(item);
        });
    }
})(document, window.hljs, window.md5);
