
const nombre = document.getElementById("nombre");
const buscar = document.getElementById("buscar");
const mensaje = document.getElementById("mensaje");
const resultado = document.getElementById("resultado");

buscar.addEventListener("click", buscarPokemon);

async function buscarPokemon() {
    const pokemon = nombre.value.trim().toLowerCase();

    if (pokemon === "") {
        mensaje.textContent = "Escribe el nombre de un Pokemon.";
        resultado.innerHTML = "";
        return;
    }

    mensaje.textContent = "Cargando...";
    resultado.innerHTML = "";

    try {
        const respuesta = await fetch(
            `https://pokeapi.co/api/v2/pokemon/${pokemon}`
        );

        if (!respuesta.ok) {
            throw new Error("Pokemon no encontrado");
        }

        const datos = await respuesta.json();

        resultado.innerHTML = `
            <h2>${datos.name}</h2>
            <img src="${datos.sprites.front_default}"
                 alt="Imagen de ${datos.name}">
            <p>Tipos: ${datos.types.map(t => t.type.name).join(", ")}</p>
            <p>Peso: ${datos.weight / 10} kg</p>
            <p>Altura: ${datos.height / 10} m</p>
        `;

        mensaje.textContent = "";
    } catch (error) {
        mensaje.textContent =
            "No se encontro el Pokemon.";
        resultado.innerHTML = "";
    }
}
