<div th:fragment="alert (type, message)" class="alert alert-dismissable" th:classappend="'alert-' + ${type}">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <span th:text="${message}">Test</span>
</div>

