function confirmDelete(codigo){
Swal.fire({
    icon: 'warning',
    title: '¿Estas seguro?',
    text: 'No podras deshacer esta accion!',
    showCancelButton: true,
    cancelButtonColor: "#d33",
    confirmButtonText: "Si, Eliminar!",
    confirmButtonColor: '#3085d6',
    cancelButtonText: "Cancelar"
}).then((result) => {
    if (result.value) {
        Swal.fire(
            'Eliminado!',
            'Producto Eliminado Correctamente.',
            'success'
        ).then(function () {
            window.location.href = "/eliminar_producto/" + codigo + "/";
        })
    }
})

}



 // BORRAR CLIENTE
function confirmDeletecli(run){
    Swal.fire({
        icon: 'warning',
        title: '¿Estas seguro?',
        text: 'No podras deshacer esta accion!',
        showCancelButton: true,
        cancelButtonColor: "#d33",
        confirmButtonText: "Si, Eliminar!",
        confirmButtonColor: '#3085d6',
        cancelButtonText: "Cancelar"
    }).then((result) => {
        if (result.value) {
            Swal.fire(
                'Eliminado!',
                'Cliente Eliminado Correctamente.',
                'success'
            ).then(function () {
                window.location.href = "/eliminar_cliente/" + run + "/";
            })
        }
    })
    
    }




function confirmRegister(){
Swal.fire({
    position: 'top-end',
    icon: 'success',
    title: 'Registrado',
    showConfirmButton: false,
    timer: 1500
  }).then(function () {
    window.location.href = "sinregistro.html";
})

}

