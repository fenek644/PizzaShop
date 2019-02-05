
// window.localStorage.setItem('iks', 0);

function ale() {
    var x = parseInt(window.localStorage.getItem('iks'));
    alert(x);
    x = x  + 1;
    window.localStorage.setItem('iks', x);
}