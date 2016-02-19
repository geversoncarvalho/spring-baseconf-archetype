<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Demo project</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/signin">
                        <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;Sign in
                    </a>
                </li>
                <li>
                    <a href="/logout" onclick="$('#form').submit();">
                        <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout
                    </a>
                    <form style="visibility: hidden" id="form" method="post" action="#" ></form>
                </li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>