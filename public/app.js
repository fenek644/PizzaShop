
 // window.localStorage.setItem('iks', 0);

// function ale() {

    // var x = window.localStorage.getItem('iks');
    // x = x*1  + 1;
    // window.localStorage.iks = x;
    //
    // alert(x);
// }

function add_to_cart(id) {

    var key = 'product_' + id
    var x = window.localStorage.getItem(key);
    x++;
    window.localStorage.setItem(key, x);
    update_input();
    update_order_button()
}

function update_order_button() {

    var text = "Cart (" + total_of_order() + ")";
    $('#orders_button').val(text);
}

function update_input() {
    var orders = write_query();
    $("#orders_input").val(orders);
}

function total_of_order() 
{
    var a = {};
    var total = 0;

    for (var i=0; i<localStorage.length; i++) {
        var key = window.localStorage.key(i);
        a[key] = window.localStorage.getItem(key);
        if (key.indexOf('product_') == 0) {
            total += a[key] * 1;
        }
    }
    return total;
}

function write_query(){
    var str = '';


    for (var i=0; i<localStorage.length; i++) {
        var key = window.localStorage.key(i);
        var val = window.localStorage.getItem(key);
        if (key.indexOf("product_") == 0) {
            str += key + "=" + val + ",";
        }
    }
    return str;
}

function cancel_cart(){
    localStorage.clear();
    update_input();
    update_order_button();

    $('#cart').text('Your cart is now empty ');

    return false;
}