<%@include file="/WEB-INF/view/template/header.jsp" %>

<link href="<c:url value="/resources/css/CreateVote.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/slider.js" />"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<form method="POST">

    <section id="createVote">

        <div class="wrapper aligned">
            <div class="box item1">

                <span class="label label-info" id="topic-label">Topic</span>
                <input type="topic" class="form-control" id="topic-form">
            </div>
            <div class="form-group">
                <input name="group20" type="radio" id="radio120" >
                <label for="radio120">Option 1</label>
                <fieldset id="myfields1">
                    <div class="box item2" >

                        <button type="button" class="btn btn-primary1">YES</button>
                        <button type="button" class="btn btn-primary2">NO</button>
                    </div>


                        <script>$("#radio120").click(function () {$("#myfields2").prop("disabled", true);});
                      $("#radio120").click(function () {$("#myfields3").prop("disabled", true);});
                        $("#radio120").click(function () {$("#myfields1").prop("disabled", false);});</script>

                    <script>document.getElementById("radio120").click();</script>

            </fieldset>
            </div>
            <div class="form-group">

                <input name="group20" type="radio" id="radio121">
                <label for="radio121">Option 2</label>
                <fieldset id="myfields2">
                    <div class="box item4" id="prop2">
                        <div class="parent">
                            <div class="repeatable">
                                <div class="range">
                                    <input type="range" min="1" max="5" steps="1" value="1">
                                </div>

                                <ul class="range-labels">
                                    <li class="active selected"></li>
                                    <li>1</li>
                                    <li>2</li>
                                    <li>3</li>
                                    <li>4</li>
                                    <li>5</li>

                                </ul>

                                <input id="input-b1" name="input-b1" type="file" class="file">
                            </div>
                        </div>

                        <script>$("#radio121").click(function () {$("#myfields1").prop("disabled", true);});
                        $("#radio121").click(function () {$("#myfields3").prop("disabled", true);});
                        $("#radio121").click(function () {$("#myfields2").prop("disabled", false);});</script>

                        <button class="repeat" onclick="myFunction()">Add Another</button>
                    </div>
                </fieldset>
                <script>
                    function myFunction() {

                        $(document).on('click', '.repeat', function (e) {

                            e.preventDefault();
                            $('.repeatable').parent('div.parent').append($('.parent').children('div:first').html());
                            console.log("click");
                            console.log(i);

                        });
                    }

                </script>


            </div>
            <div class="form-group">
                <input name="group20" type="radio" id="radio122">
                <label for="radio122">Option 3</label>

            <fieldset id="myfields3">
                <div class="box item5">
                    <span class="label label-info" id="topic-label">Pick one</span>
                    <div class="parent2">
                        <div class="repeatable2">
                            <div class="file-loading">
                                <input id="input-b6" name="input-b6[]" type="file" multiple>
                            </div>
                        </div>
                    </div>

                    <script>$("#radio122").click(function () {$("#myfields1").prop("disabled", true);});
                    $("#radio122").click(function () {$("#myfields2").prop("disabled", true);});
                    $("#radio122").click(function () {$("#myfields3").prop("disabled", false);});</script>


                <script>
                    $(document).on('ready', function () {
                        $("#input-b6").fileinput({
                            showUpload: false,
                            maxFileCount: 10,
                            mainClass: "input-group-lg"
                        });
                    });
                </script>

            <button class="repeat2" onclick="myFunction2()">Add Another</button>
                    </div>
            <script>
                function myFunction2() {

                    $(document).on('click', '.repeat2', function (e) {

                        e.preventDefault();
                        $('.repeatable2').parent('div.parent2').append($('.parent2').children('div:first').html());
                        console.log("click");
                        console.log(i);

                    });
                }

            </script>




            </fieldset>

        </div>
        </div>

    </section>
</form>


<%@include file="/WEB-INF/view/template/footer.jsp" %>
