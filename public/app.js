
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

    var a = {};

    var total = 0;

    for (var i=0; i<localStorage.length; i++) {
        var key = window.localStorage.key(i);
        // a.push([key, localStorage[key]]);
        a[key] = window.localStorage.getItem(key);
        total += a[key]*1
    }

    // alert(total);

}