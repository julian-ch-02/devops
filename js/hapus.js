$(document).ready(function () {
  $("#modal-konfirmasi").on("show.bs.modal", function (event) {
    var div = $(event.relatedTarget);

    var id = div.data("id");

    var modal = $(this);

    modal.find("#hapus-true-data").attr("href", "data_del.php?id=" + id);
  });
});
