
document.getElementById("campo").addEventListener("keyup", getCodigos)

function getCodigos() {

    let inputCruces = document.getElementById("campo").value
    let lista = document.getElementById("lista")

// // si el imputCp es mayor a 0
   if (inputCruces.length > 0) {

        let url = "inc/getCodigos.php";
        let formData = new FormData();
        formData.append("campo", inputCruces)


// peticiones de ajacks?
        fetch(url, {
            method: "POST",
            body: formData,
            mode: "cors" //Default cors, no-cors, same-origin
        }).then(response => response.json())
            .then(data => {
                lista.style.display = 'block'
                lista.innerHTML = data
            })
            .catch(err => console.log(err))
    } else {
        lista.style.display = 'none'
    }
  }

function mostrar(cruces) {
    lista.style.display = 'none'
    alert("CRUCES: " + cruces)
}