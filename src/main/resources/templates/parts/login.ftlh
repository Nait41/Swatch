<#macro login path isRegisterForm>
    <div class="container-fluid d-flex h-100 justify-content-center align-items-center p-5">
        <div class="shadow-lg p-3 mb-5 bg-white rounded" style="background-image: url(https://papik.pro/uploads/posts/2021-11/1636606244_1-papik-pro-p-temnii-fon-bez-risunkov-1.jpg);">
            <form action="${path}" method="post">
                <#if isRegisterForm> ````````````
                <div class="form-group row col-sm-6">
                    <h5 class="text-white">Sign Up</h5>
                </div>
                </#if>
                <#if !isRegisterForm>
                    <div class="form-group row col-sm-6">
                        <h5 class="text-white">Login</h5>
                    </div>
                </#if>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label text-white font-weight-bold">User Name :</label>
                    <div class="col-sm-6">
                        <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                               class="form-control ${(usernameError??)?string('is-invalid', '')}"
                               placeholder="User name" />
                        <#if usernameError??>
                            <div class="invalid-feedback">
                                ${usernameError}
                            </div>
                        </#if>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label text-white font-weight-bold">Password:</label>
                    <div class="col-sm-6">
                        <input type="password" name="password"
                               class="form-control ${(passwordError??)?string('is-invalid', '')}"
                               placeholder="Password" />
                        <#if passwordError??>
                            <div class="invalid-feedback">
                                ${passwordError}
                            </div>
                        </#if>
                    </div>
                </div>
                <#if isRegisterForm>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label font-weight-bold text-white">Password:</label>
                    <div class="col-sm-6">
                        <input type="password" name="password2"
                               class="form-control ${(password2Error??)?string('is-invalid', '')}"
                               placeholder="Retype password" />
                        <#if password2Error??>
                            <div class="invalid-feedback">
                                ${password2Error}
                            </div>
                        </#if>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label font-weight-bold text-white">Email:</label>
                    <div class="col-sm-6">
                        <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                               class="form-control ${(emailError??)?string('is-invalid', '')}"
                               placeholder="some@some.com" />
                        <#if emailError??>
                            <div class="invalid-feedback">
                                ${emailError}
                            </div>
                        </#if>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="g-recaptcha" data-sitekey="6LfpgGUfAAAAALLMfToHdUSMnuYrKp8-T5cT0Pgs"></div>
                    <#if captchaError??>
                        <div class="alert alert-danger" role="alert">
                            ${captchaError}
                        </div>
                    </#if>
                </div>
                <div class="col-sm-6">
                    </#if>
                    <input type="hidden" name="_csrf" value="${_csrf.token}" />
                    <#if !isRegisterForm><a href="/registration">Add new user</a><br/></#if><br/>
                    <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>
                </div>
            </form>
        </div>
    </div>
</#macro>