$(document).on("click", ".modal-btn", function (e) {
    e.preventDefault();
    let url = $(this).attr("href");
    fetch(url).then(response => {
        if (response.ok) {
            return response.text()
        }
        else {
            alert("xeta bas verdi")
            return
        }
    })
        .then(data => {
            $("#quick-view-modal").html(data)
        })
    let modal = document.querySelector('#quick-view-modal');
    modal.classList.add('open');
    //$("#quick-view-modal").modal("open")
})

$(document).on("click", "#quick-view-close", function (e) {
    e.preventDefault();
    let modal = document.querySelector('#quick-view-modal');
    modal.classList.remove('open');
})


//$(document).on("click", ".basket-add-btn", function (e) {
//    e.preventDefault();
//    let url = $(this).attr("href");
//    fetch(url).then(response => {
//        if (!response.ok) {
//            alert("Xeta bas verdi")
//        }
//        else return response.text()
//    }).then(data => {
//        $("#basketCart").html(data)
//    }).then(() => {
//        var data = $(".minicart-inner").attr("data-count");
//        $(".notification").html(data)
//    })
//})

$(document).on("click", "#basket-remove-btn", function (e) {
    e.preventDefault();
    let url = $(this).attr("href");
    fetch(url).then(response => {
        if (!response.ok) {
            alert("Xeta bas verdi")
        }
        else return response.text()
    }).then(data => {
        $("#basketCart").html(data)
    }).then(() => {
        var data = $(".minicart-inner").attr("data-count");
        $(".notification").html(data)
    })
})



//document.getElementById("submitBtn").addEventListener("click", function (event) {
//    event.preventDefault(); // Formun otomatik olarak gönderilmesini engelliyoruz

//    var productId = document.getElementById("productId").value;
//    var sizeId = document.getElementById("sizeId").value;

//    // Fetch isteği gönderiyoruz
//    fetch("/ProductController/AddToBasket?id=" + productId + "&sizeId=" + sizeId, {
//        method: "POST",
//        headers: {
//            "Content-Type": "application/json"
//        },
//    })
//        .then(response => {
//            alert("Okey");
//        })
//        .catch(error => {
//            alert("Not Okey");
//        });
//});