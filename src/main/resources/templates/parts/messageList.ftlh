<#include "security.ftlh">

<div class="card-columns">
    <#list messages as message>
        <div class="card my-3" style="background-image: url(https://papik.pro/uploads/posts/2021-11/1636606244_1-papik-pro-p-temnii-fon-bez-risunkov-1.jpg);">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2 text-white">
                ${message.text}<br/>
                #${message.tag}
            </div>
            <div class="card-footer text-muted">
                <a href="/user-messages/${message.author.id}">${message.authorName}</a>
                <#if message.author.id == currentUserId>
                    <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                        Edit
                    </a>
                </#if>
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>