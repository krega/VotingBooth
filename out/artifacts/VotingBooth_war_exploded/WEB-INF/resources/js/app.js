/**
 * Created by W10x64 on 09.11.2017.
 */
(function () {
// Initialize Firebase
    var config = {
        apiKey: "AIzaSyBhN1uyMtaGHB3oJ6YWxhzjNFkC3Z_rcMk",
        authDomain: "decisive-light-185518.firebaseapp.com",
        databaseURL: "https://decisive-light-185518.firebaseio.com",
        projectId: "decisive-light-185518",
        storageBucket: "decisive-light-185518.appspot.com",
        messagingSenderId: "370672936607"
    };
    firebase.initializeApp(config);

    //get elements
    const  txtEmail = document.getElementById('txtEmail');
    const  txtPassword = document.getElementById('txtPassword');
    const  btnLogin = document.getElementById('btnLogin');
    const  btnSignUp = document.getElementById('btnSignUp');
    const  btnLogout = document.getElementById('btnLogout');

    //Add login event
    btnLogin.addEventListener('click', e => {
        event.preventDefault();
        console.log(txtEmail);
    const  email = txtEmail.value;
    const  pass = txtEmail.value;
    const  auth = firebase.auth();
    ///Sign in
    const  promise = auth.signInWithEmailAndPassword(email, pass);

});

    btnSignUp.addEventListener('click', e => {
        event.preventDefault();
        const  email = txtEmail.value;
    const  pass = txtEmail.value;
    const  auth = firebase.auth();
    const  promise = auth.createUserWithEmailAndPassword(email, pass);
    promise.catch(e => console.log(e.message));

});

    btnLogout.addEventListener('click', e => {
        firebase.auth().signOut();
})

    firebase.auth().onAuthStateChanged(firebaseUser => {
        if(firebaseUser) {
            console.log(firebaseUser);
            btnLogout.classList.remove('hide');
        }
        else{
            console.log('not logged in');
    btnLogout.classList.add('hide');
}
});


}());