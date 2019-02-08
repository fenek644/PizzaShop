
 // window.localStorage.setItem('iks', 0);

function ale() {
    // var x = parseInt(window.localStorage.getItem('iks'));
    var x = window.localStorage.getItem('iks');
    // x++
    x = x*1  + 1;
    // window.localStorage.setItem('iks', x);
    window.localStorage.iks = x;

    alert(x);
}

function add_to_cart(id) {

    var key = 'product_' + id
    var x = window.localStorage.getItem(key);
    x++;
    window.localStorage.setItem(key, x);
}