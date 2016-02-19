<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:form class="form-narrow form-horizontal" method="post" action="/signup">
    <!--/* Show general error message when form contains errors */-->
    <spring:hasBindErrors name="signupForm">
        <div class="alert alert-dismissable alert-danger">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <span>Form contains errors. Please try again.</span>
        </div>
    </spring:hasBindErrors>
    <fieldset>
        <legend>Please Sign Up</legend>
        <div class="form-group ${fields.hasErrors('email') ? 'has-error' : ''}">
            <label for="email" class="col-lg-2 control-label">Email</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" name="email" id="email" placeholder="Email address" value="${signupForm.email}" />
                <form:errors path="signupForm.email" cssClass="help-block" element="span" />
            </div>
        </div>
        <div class="form-group ${fields.hasErrors('password') ? 'has-error' : ''}">
            <label for="password" class="col-lg-2 control-label">Password</label>
            <div class="col-lg-10">
                <input type="password" class="form-control" name="password" id="password" placeholder="Password" value="${signupForm.password}"/>
                <form:errors path="signupForm.password" cssClass="help-block" element="span" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-default">Sign up</button>
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10">
                <p>Already have an account? <a href="/signin">Sign In</a></p>
            </div>
        </div>
    </fieldset>
</form:form>