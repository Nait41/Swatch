<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
        <div class="alert alert-danger" role="alert">
            ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
        </div>
    </#if>
    <#if message??>
        <div class="container-fluid d-flex h-100 justify-content-center align-items-center p-5">
            <div class="shadow-lg p-3 mb-5 bg-white rounded" style="background-image: url(https://papik.pro/uploads/posts/2021-11/1636606244_1-papik-pro-p-temnii-fon-bez-risunkov-1.jpg);">
                <h5 class="text-white">${message}</h5>
            </div>
        </div>
    </#if>
    <@l.login "/login" false/>
</@c.page>