
var promise;



 (function()
 {
     var config = {
         apiKey: "AIzaSyBhN1uyMtaGHB3oJ6YWxhzjNFkC3Z_rcMk",
         authDomain: "decisive-light-185518.firebaseapp.com",
         databaseURL: "https://decisive-light-185518.firebaseio.com",
         projectId: "decisive-light-185518",
         storageBucket: "decisive-light-185518.appspot.com",
         messagingSenderId: "370672936607"
     };
     firebase.initializeApp(config);


    const txtEmail = document.getElementById('txtEmail');
    const txtPassword = document.getElementById('txtPassword');
    const btnLogin = document.getElementById('btnLogin');
    const btnSignUp = document.getElementById('btnSignUp');
    firebase.auth().signOut();

    btnLogin.addEventListener('click', e => {
        const email = txtEmail.value;
        const pass = txtPassword.value;
        const auth = firebase.auth();
        promise = auth.signInWithEmailAndPassword(email, pass);

        promise.catch(e => console.log(e.message));
    });


    btnSignUp.addEventListener('click', e => {

        console.log(txtEmail.value)
        const email = txtEmail.value;
        //Check for real email
        const pass = txtPassword.value;
        const auth = firebase.auth();
        
        const NewUserPromise = auth.createUserWithEmailAndPassword(email, pass);

        NewUserPromise.catch(e => console.log(e.message));
        saveUser();
    });

    firebase.auth().onAuthStateChanged(firebaseUser => {
        if(firebaseUser) {
            console.log("PRZEMEK!: " + firebaseUser.uid)
            localStorage.setItem("userId", firebaseUser.uid);
            window.location="D:\\myFireBaseApp\\jsFire_main_repo\\app.html";          
            btnLogout.classList.remove('hide');
        } else {
          console.log('not logged in')
        }

    })
     function saveUser(){
         var rootRef = firebase.database().ref();



         firebase.auth().onAuthStateChanged((user) => {
             if (user) {
                 var user1 = new Object();
                 user1.dispalyName  = document.getElementById('nickname').value;
                 user1.premiumStatus = "PREMIUM_STATUS_DEFAULT";

                 user1.uid = user.uid;

                 console.log("User "+ user1);
                 console.log("Usernick "+ user1.dispalyName);
                 console.log("User "+ user1.premiumStatus);
                 console.log("Useruid1 "+ user1.uid);
                 var ref = new Firebase("https://decisive-light-185518.firebaseio.com/");
                 var usersRefAnswer = ref.child("Users" + "/" +  user1.uid);

                 usersRefAnswer.update(user1);
             }


         });
     }
}());

