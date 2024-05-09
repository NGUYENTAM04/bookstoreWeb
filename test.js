function calculate() {
    var item = document.querySelector('.input-qty')
    var txtNum = item.value
    var num = Number(txtNum)
    var btn_sub = document.querySelector('.minus')
    var btn_plus = document.querySelector('.plus')
    btn_plus.addEventListener("click", function () {
        num += 1
        if (num > 10) {
            num = 10
        }
        item.value = num

    })

    btn_sub.addEventListener("click", function () {
        num -= 1
        if (num < 0) {
            num = 0
        }
        item.value = num
    })
}


    function decreaseQuantity() {
        var txtQuantity = document.getElementById('<%= txtQuantity.ClientID %>');
    var quantity = parseInt(txtQuantity.value);
        if (quantity > 0) {
        txtQuantity.value = (quantity - 1).toString();
        }
    return false; // Prevent postback
    }

    function increaseQuantity() {
        var txtQuantity = document.getElementById('<%= txtQuantity.ClientID %>');
    var quantity = parseInt(txtQuantity.value);
    if (quantity < 10) {
        txtQuantity.value = (quantity + 1).toString();
        }
    return false; // Prevent postback
    }

    function validateQuantity(input) {
        var value = parseInt(input.value);
    if (isNaN(value)) {
        input.value = "";
        } else if (value > 10) {
        alert("Không thể nhập giá trị lớn hơn 10.");
    input.value = "10";
        }
    }
