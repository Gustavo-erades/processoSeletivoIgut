var i = setInterval(function () {
    clearInterval(i);
    document.getElementById("load").style.display = "none";
    document.getElementById("main").style.display = "block";
}, 1000);