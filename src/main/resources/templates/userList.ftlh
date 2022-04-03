<#import "parts/common.ftlh" as c>

<@c.page>
    <h2>List of User</h2>
    <div class="card-columns">
        <#list users as user>
            <div class="card my-3" style="background-image: url(https://papik.pro/uploads/posts/2021-11/1636606244_1-papik-pro-p-temnii-fon-bez-risunkov-1.jpg);">
            <div class="card-footer text-muted">
                <div class="card-body">
                        <h4 class="card-title text-white">
                            <a class="text-white">Username:</a>
                            ${user.username}
                        </h4>
                        <h5>
                            <a class="text-white">Role:</a>
                            <a class = "text-white"><#list user.roles as role>${role}<#sep>, </#list></a>
                        </h5>
                        <a href = "/user/${user.id}" class="btn btn-primary">Edit</a>
                </div>
            </div>
            </div>
        </#list>
    </div>
</@c.page>