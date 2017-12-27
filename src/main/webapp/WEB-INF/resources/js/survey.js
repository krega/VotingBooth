var surveyName = ""
var foundSurveyKey = "";
var displayAnotherSurvey = false
var surveys = app.database().ref('Surveys');
var anwsers = app.database().ref('Answers');
var user = app.database().ref('Users/' + localStorage.getItem("userId"));

var retAns = []
var retCnt = []
var AnsIds = []
var tableId = 'ansTable';
var surveysList = []
var votingThreshold = 300000;
var isSurveySecured = false;
var survPass = "";

collectAvailableSurveys()

function collectAvailableSurveys()
{
    surveys.on("value", function(snapshot)
    {
        snapshot.forEach(function(node)
        {
            node.forEach(function(property)
            {
                if(property.key == "content")
                {
                    surveysList.push(property.val());
                }
            });
        });
        $(function() {
            $( "#surveyName" ).autocomplete({
                source: surveysList
            });
        });
        console.log(DEB + surveysList)
        console.log(DEB + "UID: " + localStorage.getItem("userId"))
    });
}

function checkSurveys()
{
    if(surveyName === "")
    {
        alert("Provided input is incorrect");
        return false;
    }
    surveys.on("value", function(snapshot)
        {
            var surveyKey = serachInSnapshot(snapshot, surveyName);

            if(displayAnotherSurvey)
            {
                console.log("DisplaySurv: " + displayAnotherSurvey)
                var anwsersTable = document.getElementById(tableId)
                anwsersTable.innerHTML = "";
            }

            if(!surveyKey['id'])
            {
                alert(surveyName + " not found in datebase")
                return;
            }
            if(isSurveySecured)
            {
                var providedPass = prompt("Please enter password:", "");
                if(survPass != providedPass)
                {
                    alert("Password incorrect!!!");
                    return;
                }
            }

            var retrivedAns = findAnwsers(snapshot.child(surveyKey['id']).val().Answers, surveyKey['type'], surveyKey['id']);
        },
        function(error)
        {
            console.log(ERR + error.code + " checkSurveys()");
        });
    show_stats();
}

function findAnwsers(anss, voteType, survId)
{
    jsAns = anwsers.on("value", function(snapshot)
    {
        var jsAns = snapshot
        retAns = []
        retCnt = []
        AnsIds = []
        retType = ""
        for(var a in anss)
        {
            AnsIds.push(a)
            retAns.push(snapshot.child(a).val().content)
            retCnt.push(snapshot.child(a).val().votes)
            retType = snapshot.child(a).val().type
        }
        console.log(DEB + retType)
        var tableId = 'ansTable';
        var isTableCreated = isDomCreated(tableId)
        var anwsersTable;
        if(isTableCreated)
        {
            console.log(DEB + "table already created just update anwsers")
            anwsersTable = document.getElementById(tableId)
        }
        else
        {
            anwsersTable = createTable(tableId);
        }

        var rowQuantity = 0;

        for (var i = 0; i < retAns.length; i++)
        {
            if (isTableCreated && !displayAnotherSurvey)
            {
                console.log(DEB + "update path")
                updateRowCounter(anwsersTable, i, 1, retCnt[i])
            }
            else
            {
                addRow(anwsersTable, retAns[i], retCnt[i], rowQuantity, voteType, retType, survId);
            }
            rowQuantity++;
        }
        if(!isTableCreated)
        {
            addToHtml(anwsersTable, 'divTable');
            addToHtml(createVoteButton('VOTE', voteButtonFunction), 'divVote');
        }
        generateChart(retCnt, retAns);
        displayAnotherSurvey = false;
    });
}

function serachInSnapshot(snapshot, name)
{
    var retKey = {}
    snapshot.forEach(function(node)
    {
        node.forEach(function(property)
        {
            if(property.key == "content")
            {
                if(property.val() == name)
                {
                    console.log("PROP: " + property.val())
                    setText("Question", property.val())
                    retKey['id'] = node.key
                    retKey['type'] = node.val().type;
                    if(foundSurveyKey)
                    {
                        if(foundSurveyKey != node.key)
                        {
                            displayAnotherSurvey=true;
                        }
                    }

                    foundSurveyKey = node.key;
                    survPass = node.val().Password
                    if(survPass)
                    {
                        isSurveySecured = true;
                        console.log("Survey secured")
                    }
                    else
                    {
                        console.log("survet not protected")
                    }
                }

            }
        });

    });
    return retKey;
}

function retrieveInput(event) {
    var code = (event.keyCode ? event.keyCode : event.which);
    if (code == 13)
    { // as the user presses the enter key, we will attempt to save the data
        var survInput = document.getElementById('surveyName');
        surveyName = survInput.value.trim();
        checkSurveys();
        survInput.value = ""
    }
}

function setText(id,newvalue)
{
    var s= document.getElementById(id);
    s.innerHTML = newvalue;
}

function checkVoteTimestamp()
{
    user.child("votedSurvs").once('value').then(function(snap)
        {
            var snapVal = snap.child(foundSurveyKey).val()
            if(snapVal)
            {
                console.log("survVoteTimestamp: " + snapVal)
                var currentTimeStamp = Date.now();
                var diffrence = currentTimeStamp - snapVal
                console.log("diffrence: " + diffrence)
                if(diffrence < votingThreshold)
                {
                    alert("You need wait longer to vote again");
                }
                else
                {
                    var voteTimestamp = {[foundSurveyKey]: Date.now()};
                    app.database().ref('Users/' + localStorage.getItem("userId") + "/votedSurvs").update(voteTimestamp);
                    performVotingProcedure();

                }

            }
            else
            {
                if(snap.val())
                {
                    console.log("votedSurvs already exists")
                    var voteTimestamp = {[foundSurveyKey]: Date.now()};
                    app.database().ref('Users/' + localStorage.getItem("userId") + "/votedSurvs").update(voteTimestamp);
                    performVotingProcedure();
                }
                else
                {
                    console.log("snap NULL: " + foundSurveyKey + " timestamp: " + Date.now())
                    var voteTimestamp = {[foundSurveyKey]: Date.now()};
                    user.update({votedSurvs : voteTimestamp})
                    performVotingProcedure();
                }

            }
        },
        function(error) {
            console.log(ERR + error.code + " checkVoteTimestamp");
        });
}

function voteButtonFunction()
{
    checkVoteTimestamp();
}

function performVotingProcedure()
{
    var currentVals = []
    var anwsersNumber = retCnt.length;

    for(var i = 0; i < anwsersNumber; i++)
    {
        var checkButtName = "inp" + i;
        var checkButt = document.getElementById(checkButtName)
        currentVals.push(checkButt.checked)
        console.log(DEB + " " + checkButtName + " " + checkButt.checked)
    }

    console.log(DEB + retCnt)

    for(var i = 0; i < anwsersNumber; i++)
    {
        console.log(DEB + "currentVals: " + i + " " + currentVals[i])
        if(currentVals[i])
        {
            var path = "Answers/" +  AnsIds[i] + "/votes"
            console.log(DEB + path)
            app.database().ref('Answers')
            var up =  firebase.database().ref(path);
            up.transaction(function(cnt) {
                return cnt + 1;
            });
        }
        console.log(DEB + " " + i + " " + retCnt[i])
    }
}

function show_stats() {
    console.log("SHOW STATS")
    for (let el of document.querySelectorAll('.topnav')) el.style.visibility = 'visible';
}
