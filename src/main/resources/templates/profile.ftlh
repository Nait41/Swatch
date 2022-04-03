<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="container-fluid d-flex h-100 justify-content-center align-items-center p-5">
    <div class="shadow-lg p-3 mb-5 bg-white rounded" style="background-image: url(https://papik.pro/uploads/posts/2021-11/1636606244_1-papik-pro-p-temnii-fon-bez-risunkov-1.jpg);">
    <h5 class="text-white">${username}</h5>
    ${message?ifExists}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label text-white">Password:</label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label text-white">Email:</label>
                <div class="col-sm-6">
                    <input type="email" name="email" class="form-control" placeholder="some@some.com" value="${email!''}"/>
                </div>
            </div>
        <input type = "hidden" name = "_csrf" value="${_csrf.token}"/>
        <button class="bth btn-primary" type="submit">Save</button>
    </form>
    </div>
    </div>
</@c.page>