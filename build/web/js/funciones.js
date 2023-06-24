$(document).ready(function () {
    $("a.btnDelete").click(function () {
        var idp = $(this).parent().find(".idp").val();
        swal({
            title: "¿Está seguro de eliminar?",
            text: "Una vez eliminado, no se puede recuperar.",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        }).then((willDelete) => {
            if (willDelete) {
                eliminar(idp);
            } else {
                swal("El registro no ha sido eliminado.");
            }
        });
    });

    function eliminar(idp) {
        var url = "Controlador?accion=Delete";
        $.ajax({
            type: 'POST',
            url: url,
            data: "idp=" + idp,
            success: function (data, textStatus, jqXHR) {
                swal("¡Ha sido eliminado!", {
                    icon: "success"
                }).then((willDelete) => {
                    if (willDelete) {
                        location.reload();
                    }
                });
            }
        });
    }

    $("input#Cantidad").change(function () {
        var idp = $(this).parent().find("input#idpro").val();
        var cantidad = $(this).val();
        var url = "Controlador?accion=ActualizarCantidad";
        $.ajax({
            type: 'POST',
            url: url,
            data: {
                idp: idp,
                Cantidad: cantidad
            },
            success: function (data, textStatus, jqXHR) {
                location.reload(); // Recargar la página actual
            }
        });
    });
});
