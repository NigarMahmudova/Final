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