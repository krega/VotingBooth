
radioNr = 0;

function createTable(tableId)
{
    console.log(DEB + "createTable()")
    var table = document.createElement('table');
    table.id = tableId;
    table.setAttribute('class', 'table');
    return table
}

function addRow(table, name, counter, rowNr, InputType, ansType, survId)
{
    var row1 = table.insertRow(rowNr);
  
    var row1col0 = row1.insertCell(0);
    if(ansType == "text")
    {
        row1col0.innerHTML = name;
    }
    else if(ansType == "photo")
    {

        row1col0.appendChild(addPhoto(survId, name));
    }
  
    var row1col2 = row1.insertCell(1);
    row1col2.innerHTML = counter;

    var voteWidget = createVoteWidget(InputType, rowNr)       

    var row1col2 = row1.insertCell(2);
    row1col2.appendChild(voteWidget);
}

function addPhoto(survId, name)
{
    return findPhoto(survId, name);
}

function createVoteWidget(type, idNr)
{
    if(type == "RATING_QUESTION")
    {
        return createCheckButton(idNr);        
    }
    else if(type == "SINGLE_CHOICE_QUESTION")
    {
        return createRadioButton(idNr);
    }
    else
    {
        alert(type + " not known type of question")
    }
}

function createRadioButton(idNr)
{
    var radiosNr = 0
    var checkButt = document.createElement('input');
    checkButt.setAttribute('type', 'radio');

    var Id = "inp" + idNr
    checkButt.id = Id;
    
    

    checkButt.onclick = function()
    {        
        var radios = document.getElementsByTagName('input');
        for (i = 0; i < radios.length; i++)
        {
            if (radios[i].type == 'radio')
            {
                if(radios[i].id != this.id)
                {
                    radios[i].checked = false;    
                }
            }
        }
    };
    

    return checkButt;
}

function createCheckButton(idNr)
{
    var checkButt = document.createElement('input');
    checkButt.setAttribute('type', 'Checkbox');
    var Id = "inp" + idNr
    checkButt.id = Id;
    return checkButt;
}

function updateRowCounter(table, row, cell, cntVal)
{
    table.rows[row].cells[cell].innerHTML = cntVal;
}

function addToHtml(elem, divName)
{
    var div = document.getElementById(divName);
    div.appendChild(elem);
}

function createVoteButton(text, clickListener)
{
    var button = document.createElement('button');
    button.id = "voteBtn"
    button.className  = "square_btn"
    button.addEventListener("click", clickListener);
    var buttonText = document.createTextNode(text);
    button.appendChild(buttonText)
    return button;
}

function isDomCreated(id)
{
    var myEle = document.getElementById(id);
    if(myEle)
    {
        return true;
    }
    else
    {
        return false;
    }
}
