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

                var userToUpload = new Object();
                var myMap = new Map();
                var myArray = [];
                var myArray1 = new Object();

                getValues();


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

                            var id=new Object();


                            var id = saveAnswers(valueOfTextArea, choice);
                            const xah_obj_to_map = ( obj => {
                                let mp = new Map;
                                Object.keys ( obj ). forEach (k => { mp.set(k, obj[k]) });
                                return mp;
                            });

                            var res2 =  xah_obj_to_map(id);



                            myMap.set(res2.get("aid"), res2.get("aid"));
                            myArray.push(res2.get("aid"));
                            myArray1.id = res2.get("aid");
                            var obj=[];

                            obj.push(res2);


                        }

                        const xah_map_to_obj = ( myMap => {
                            let obj = {};
                            myMap.forEach ((v,k) => { obj[k] = v });
                            return obj;
                        });

                        var id =  saveSurvey();


                      for(var q=0;q<(myMap.size);q++) {
                          var answer = new Object();
                            console.log("mymap iterator" + q);
                            answer.qid =id;
                            console.log("answer.qid "+ answer.qid);
                            answer.aid=myArray[q];
                          //  console.log("answer.aid "+ answer.aid);
                          //  answer.content =document.getElementsByClassName(nameOfDiv)[q].value;
                            console.log("console "+ document.getElementsByClassName(nameOfDiv)[q].value);
                            console.log(answer.content);
                            console.log(answer);
                            var ref = new Firebase("https://decisive-light-185518.firebaseio.com/");
                            var usersRefAnswer = ref.child("Answers");

                            //   answer.aid = usersRefAnswer.push().key();
                            usersRefAnswer.child(answer.aid).update(answer);


                            console.log("answer.aid"+answer.aid);
                        }
                    }

                    if (choice == 1) {

                        amount = $("div.file3").length;
                        getAddres("textFiled");

                    }
                    if (choice == 2) {
                        amount = $("div.range").length;
                        getAddres("file");

                    }
                    if (choice == 3) {

                        amount = $("div.file-loading").length;
                        getAddres("file");

                    }
                }

                function saveAnswers( valueOfTextArea,choice) {
                    var answer = new Object();
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
                    console.log("valueOfTextArea when push"+answer.content);
                    answer.votes = 0;
                    var ref = new Firebase("https://decisive-light-185518.firebaseio.com/");
                    var usersRefAnswer = ref.child("Answers");



                    answer.aid = usersRefAnswer.push().key();
                   // usersRefAnswer.child(answer.aid).push(answer);
                    usersRefAnswer.child(answer.aid).update(answer);
                    console.log("v(answer.aid when push"+answer.aid);
                    return answer
                }

                const xah_map_to_obj = ( myMap => {
                    let obj = {};
                    myMap.forEach ((v,k) => { obj[k] = v });
                    return obj;
                });
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


                    survey.content = document.getElementById('topicName').value;

                    /////////////////////////////////////////////////




                    function getUserId() {
                        var config = {
                            apiKey: "AIzaSyBhN1uyMtaGHB3oJ6YWxhzjNFkC3Z_rcMk",
                            databaseURL: "https://decisive-light-185518.firebaseio.com"
                        };
                        var app = firebase.initializeApp(config);

                        firebase.auth().onAuthStateChanged((user) => {
                            if (user) {

                                survey.ownerId = user.uid;



                            }
                            survey.ownerId = user.uid;


                            var usersRefUsers= ref.child("Users" + "/"+ user.uid +"/" +"Surveys");
                            userToUpload = xah_map_to_obj(surveyId);


                            usersRefUsers.update(userToUpload);


                            return survey.ownerId ;
                        });


                    }
                    var  uid =getUserId();


                    getType(survey);
                    survey.content = document.getElementById('topicName').value;

                    survey.qid = usersRefSurvey.push().key();
                    var surveyId = new Map();
                    surveyId.set( survey.qid, survey.qid);
                    usersRefSurvey.child(survey.qid).update(survey);





                    //////////////




                    /////////////////////////////
                    return survey.qid;

                }




            }
        </script>
    </section>
</form>


<%@include file="/WEB-INF/view/template/footer.jsp" %>
