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
                window.location.href = "/vercarroeliminar/" + codigo_producto + "/";
            })
        }
    })
    
}


// Confirmar delete de Seguimiento



function confirmDeletesegui(seg_codigo){
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
                window.location.href = "/seguieliminar/" + seg_codigo + "/";
            })
        }
    })
    
}







// FUNCIONES SIN INICIO DE SESION (BOTONES DE INICIO Y REGISTRO)






// inicio trabajador 



function inicioTrabajador(){
    Swal.fire({
        icon: 'success',
        title: 'Seción iniciada correctamente',
        text: 'Gracias por volver!'
        
    }).then(function () {
            window.location.href = "/productos_agregar_producto/";
    })
}







// Aviso de compra


function confirmCarro(){
    Swal.fire({
        icon: 'success',
        title: 'Seción iniciada correctamente',
        text: 'Gracias por volver!'
        
    }).then(function () {
            window.location.href = "/vercarro/";
    })
}