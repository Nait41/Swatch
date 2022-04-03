<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-image: url(https://papik.pro/uploads/posts/2021-11/1636606244_1-papik-pro-p-temnii-fon-bez-risunkov-1.jpg);">
    <a class="navbar-brand text-white" href="/">Swatch</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link text-white" href="/">Home</a>
            </li>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/main">Messages</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/user-messages/${currentUserId}">My messages</a>
                </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link text-white" href="/user">User list</a>
            </li>
            </#if>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/user/profile">Profile</a>
                </li>
            </#if>
        </ul>
        <div class="navbar-text mr-3 text-white"><#if user??>${name}</#if></div>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button class="btn btn-primary" type="submit"><#if !user??>Sign In<#else>Sign Out</#if></button>
        </form>
    </div>
</nav>