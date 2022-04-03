<#import "parts/common.ftlh" as c>

<@c.page>
    <h3>${userChannel.username}</h3>
    <#if !isCurrentUser>
        <#if !isSubscriber>
            <a class="btn btn-info" href="/user/subscribe/${userChannel.id}">Subscribe</a>
        <#else>
            <a class="btn btn-info" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
        </#if>
    </#if>
    <div class="container my-3">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body" style="background-image: url(https://papik.pro/uploads/posts/2021-11/1636606244_1-papik-pro-p-temnii-fon-bez-risunkov-1.jpg);">
                        <div class="card-title text-white">Subscriptions</div>
                        <h3 class="card-text">
                            <a href="/user/subscriptions/${userChannel.id}/list}">${subscriptionsCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body" style="background-image: url(https://papik.pro/uploads/posts/2021-11/1636606244_1-papik-pro-p-temnii-fon-bez-risunkov-1.jpg);">
                        <div class="card-title text-white">Subscribers</div>
                        <h3 class="card-text">
                            <a href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <#if isCurrentUser>
        <#include "parts/messageEdit.ftlh"/>
    </#if>

    <#include "parts/messageList.ftlh"/>

</@c.page>