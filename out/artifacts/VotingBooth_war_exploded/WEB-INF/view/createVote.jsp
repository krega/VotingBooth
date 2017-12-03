<%@include file="/WEB-INF/view/template/header.jsp" %>

<link href="<c:url value="/resources/css/CreateVote.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/slider.js" />"></script>
<script src='https://cdn.firebase.com/js/client/2.2.1/firebase.js'></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.6.2/firebase.js"></script>
<form id="myForm" method="POST">

    <section id="createVote">

        <div class="wrapper aligned">
            <div class="box item1">

                <span class="label label-info" id="topic-label">Topic</span>
                <input type="topic" class="form-control" id="topicName">

            </div>
            <div class="form-group">
                <input name="group20" type="radio" id="radio120" value="1">
                <label for="radio120">Option 1</label>
                <fieldset id="myfields1">
                    <div class="box item2">
                        <div class="parent3">
                            <div class="repeatable3">
                                <div class="file3">
                                    <div class="text-area"><span style="color: red; "><textarea rows="1" cols="20"
                                                                                                class="textFiled"></textarea></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="repeat3" onclick="myFunction3()">Add Another</button>
                    </div>
                    <script>
                        function myFunction3() {

                            $(document).on('click', '.repeat3', function (e) {

                                e.preventDefault();
                                $('.repeatable3').parent('div.parent3').append($('.parent3').children('div:first').html());
                                console.log("click");
                                console.log(i);

                            });
                        }

                    </script>


                    <script>$("#radio120").click(function () {
                        $("#myfields2").prop("disabled", true);
                    });
                    $("#radio120").click(function () {
                        $("#myfields3").prop("disabled", true);
                    });
                    $("#radio120").click(function () {
                        $("#myfields1").prop("disabled", false);
                    });</script>

                    <script>document.getElementById("radio120").click();</script>

                </fieldset>
            </div>
            <div class="form-group">

                <input name="group20" type="radio" id="radio121" value="2">
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

                        <script>$("#radio121").click(function () {
                            $("#myfields1").prop("disabled", true);
                        });
                        $("#radio121").click(function () {
                            $("#myfields3").prop("disabled", true);
                        });
                        $("#radio121").click(function () {
                            $("#myfields2").prop("disabled", false);
                        });</script>

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
                <input name="group20" type="radio" id="radio122" value="3">
                <label for="radio122">Option 3</label>

                <fieldset id="myfields3">
                    <div class="box item5">
                        <span class="label label-info" id="topic-label2">Pick one</span>
                        <div class="parent2">
                            <div class="repeatable2">
                                <div class="file-loading">
                                    <input id="input-b6" name="input-b6[]" type="file" multiple class="file">
                                </div>
                                <!--   <dic class="text-area">
                                   <textarea rows="4" cols="25"></textarea>
                                </div> -->
                            </div>
                        </div>

                        <script>$("#radio122").click(function () {
                            $("#myfields1").prop("disabled", true);
                        });
                        $("#radio122").click(function () {
                            $("#myfields2").prop("disabled", true);
                        });
                        $("#radio122").click(function () {
                            $("#myfields3").prop("disabled", false);
                        });</script>
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
        <button type="button" class="btn btn-primary" onclick="start()">Primary</button>
        <script>
            function start() {
                var answer = new Object();
                var myMap = new Map();
                var myArray = [];
                var myArray1 = new Object();

                getValues();
                saveAnswers();
                console.log("asdasdasdasdasdas");

                console.log("a2123e2323");

                function getType(survey) {
                    var choice = $("input[name='group20']:checked").val();
                    if (choice == 1) {
                        survey.type = "ANSWER_TYPE_TEXT";
                    }
                    if (choice == 2) {
                        survey.type = "MULTIPLE_CHOICE_QUESTION";
                    }
                    if (choice == 3) {
                        survey.type = "SINGLE_CHOICE_QUESTION";
                    }

                }


                function getValues(topic, choice, amount, valueOfTextArea) {
                    topic = document.getElementById('topicName').value;
                    choice = $("input[name='group20']:checked").val();
                    amount = 0;
                    function getAddres(nameOfDiv) {
                        for (var i = 0; i < amount; i++) {
                            valueOfTextArea = document.getElementsByClassName(nameOfDiv)[i].value;
                            var id = saveAnswers(valueOfTextArea, choice);
                            myMap.set(id, id);
                            myArray.push(id);
                            myArray1.id = id;


                        }
                        console.log(myMap);
                        console.log(myArray1);
                        var id =  saveSurvey();
                        updateAnswer(answer, id);

                    }

                    if (choice == 1) {
                        console.log(amount);
                        amount = $("div.file3").length;
                        getAddres("textFiled");
                        console.log(amount);
                    }
                    if (choice == 2) {
                        amount = $("div.range").length;
                        getAddres("file");
                        console.log(amount);
                    }
                    if (choice == 3) {
                        console.log(amount);
                        amount = $("div.file-loading").length;
                        getAddres("file");
                        console.log(amount);
                    }
                }

                function saveAnswers(valueOfTextArea, choice) {

                    if (choice == 1) {
                        answer.type = "text";
                    }
                    if (choice == 2) {
                        answer.type = "photo";
                    }
                    if (choice == 3) {
                        answer.type = "photo";
                    }
                    answer.content = valueOfTextArea;
                    console.log(answer.content);
                    answer.votes = 0;
                    var ref = new Firebase("https://decisive-light-185518.firebaseio.com/");
                    var usersRefAnswer = ref.child("Answers");
                    answer.aid = usersRefAnswer.push().key();
                    usersRefAnswer.child(answer.aid).update(answer);

                    return answer.aid;
                }
                function updateAnswer(answer, id){
                    answer.qid = id;
                    answer.content = textfield;
                    var ref = new Firebase("https://decisive-light-185518.firebaseio.com/");
                    var usersRefAnswer = ref.child("Answers");
                    usersRefAnswer.child(answer.aid).update(answer);

                }

                function saveSurvey() {
                    var survey = new Object();
                    var ref = new Firebase("https://decisive-light-185518.firebaseio.com/");
                    var usersRefSurvey = ref.child("Surveys");

                    const xah_map_to_obj = ( myMap => {
                        let obj = {};
                        myMap.forEach ((v,k) => { obj[k] = v });
                        return obj;
                    });
                   survey.Answers = xah_map_to_obj(myMap);
                    console.log("saaegfghugtguwdhuwdhudwhudw");
                    console.log( xah_map_to_obj(myMap));
                    survey.content = document.getElementById('topicName').value;

                    /////////////////////////////////////////////////


                    console.log("aaa");
                    console.log(survey);
                    var config = {
                        apiKey: "AIzaSyBhN1uyMtaGHB3oJ6YWxhzjNFkC3Z_rcMk",
                        databaseURL: "https://decisive-light-185518.firebaseio.com"
                    };
                    var app = firebase.initializeApp(config);
                    if (firebase.auth().currentUser !== null)
                        console.log("user id: " + firebase.auth().currentUser.uid);
                    firebase.auth().onAuthStateChanged((user) => {
                        if (user) {
                            console.log(user.uid);
                            survey.ownerId = user.uid;

                        }
                        survey.ownerId = user.uid;
                    });
                    getType(survey);
                    survey.content = document.getElementById('topicName').value;
                    console.log(survey);
              survey.qid = usersRefSurvey.push().key();
               usersRefSurvey.child(survey.qid).update(survey);

                    console.log("dupa1");
                    return survey.qid;
                }

                console.log("dupa2");


            }
        </script>
    </section>
</form>


<%@include file="/WEB-INF/view/template/footer.jsp" %>
