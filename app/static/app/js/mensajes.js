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



// Borrar producto de carro

function confirmDeletecarro(codigo_producto){
    Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
      }).then((result) => {
        if (result.isConfirmed) {
          Swal.fire(
            'Deleted!',
            'Your file has been deleted.',
            'success'
          )
        }
      })
    
}



// FUNCIONES SIN INICIO DE SESION
function inicioSecion(){
    Swal.fire({
        icon: 'success',
        title: 'Seción iniciada correctamente',
        text: 'Gracias por volver!'
        
    }).then(function () {
            window.location.href = "/sinregistro/";
    })
}


function inicioRegistro(){
    Swal.fire({
        icon: 'success',
        title: 'Cuenta registrada correctamente',
        //text: 'Gracias por volver!'
        
    }).then(function () {
            window.location.href = "/sinregistro/";
    })
}