var storageRef = firebase.storage().ref();


function findPhoto(survId, photoName)
{
    console.log(DEB + "survId: " + survId)
    console.log(DEB + "photoName: " + photoName)
    var photoPath = survId + "/" + photoName;
    console.log(DEB + "photoPath: " + photoPath)
    var photo = document.createElement("img");
    var success = false;
    storageRef.child(photoPath).getDownloadURL().then(function(url) 
    {
        photo.setAttribute("src", url);
        photo.setAttribute("height", "100");
        photo.setAttribute("width", "100");
        photo.className += " thumbnail";
        success = true;
    }).catch(function(error) 
    {
        console.log(ERR + "IMAGE NOT FOUND !!!")
    });
    
    return photo;
}

function openNav() {
    document.getElementById("sideNavigation").style.height = "350px";
}
 
function closeNav() {
    document.getElementById("sideNavigation").style.height = "0";
}
