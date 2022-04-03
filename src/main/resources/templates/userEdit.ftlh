<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="container-fluid d-flex h-100 justify-content-center align-items-center p-5">
    <div class="shadow-lg p-3 mb-5 bg-white rounded" style="background-image: url(https://papik.pro/uploads/posts/2021-11/1636606244_1-papik-pro-p-temnii-fon-bez-risunkov-1.jpg);">
    <div><h2 class="text-white">User edittor</h2></div>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
       Edit
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form action = "/user" method="post">
                <input type="text" name="username" value="${user.username}">
                <#list roles as role>
                    <div>
                        <label class = "text-white"><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
                    </div>
                </#list>
                <input type="hidden" value="${user.id}" name="userId">
                <input type="hidden" value="${_csrf.token}" name = "_csrf">
                <div>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
    <div class="form-group mt-3">
        <form action = "/user/user_delete" method="get">
            <input type="hidden" value="${user.id}" name="userId">
            <input type="hidden" value="${_csrf.token}" name = "_csrf">
            <button type="submit" class="btn btn-primary">Delete</button>
        </form>
    </div>
    </div>
    </div>
</@c.page>