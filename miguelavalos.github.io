<!DOCTYPE html><html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Miguel Avalos Bojorquez | Fotografía</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&family=Roboto&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }body {
  background-color: #000;
  color: #fff;
  font-family: 'Roboto', sans-serif;
}

header {
  background: linear-gradient(90deg, #ff0000, #00ff00, #0000ff);
  padding: 1rem;
  text-align: center;
  animation: rgbBorder 5s linear infinite;
}

header h1 {
  font-family: 'Orbitron', sans-serif;
  font-size: 2.5rem;
  background: linear-gradient(90deg, red, lime, blue);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

main {
  padding: 2rem;
}

.filter-buttons {
  text-align: center;
  margin-bottom: 2rem;
}

.filter-buttons button {
  margin: 0 10px;
  padding: 0.5rem 1rem;
  background: #222;
  border: 1px solid #444;
  color: #0ff;
  cursor: pointer;
  transition: background 0.3s;
}

.filter-buttons button:hover {
  background: #0ff;
  color: #000;
}

.gallery {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 1.5rem;
}

.photo-card {
  position: relative;
  border: 2px solid #222;
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 0 10px rgba(255,255,255,0.1);
  transition: transform 0.3s ease;
}

.photo-card:hover {
  transform: scale(1.05);
}

.photo-card img {
  width: 100%;
  height: auto;
  display: block;
  filter: brightness(0.9);
}

.watermark {
  position: absolute;
  bottom: 10px;
  right: 10px;
  background: rgba(0,0,0,0.6);
  color: #0ff;
  font-size: 0.9rem;
  padding: 2px 6px;
  border-radius: 4px;
  pointer-events: none;
}

.contact-form {
  margin-top: 4rem;
  text-align: center;
}

.contact-form form {
  max-width: 500px;
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.contact-form input,
.contact-form textarea {
  padding: 0.75rem;
  border: none;
  border-radius: 6px;
  font-size: 1rem;
  background: #111;
  color: #0ff;
}

.contact-form button {
  padding: 0.75rem;
  background: #0ff;
  color: #000;
  font-weight: bold;
  border: none;
  border-radius: 6px;
  cursor: pointer;
}

footer {
  text-align: center;
  padding: 1rem;
  background: #111;
  font-size: 0.9rem;
  color: #888;
}

@keyframes rgbBorder {
  0% { box-shadow: 0 0 10px red; }
  33% { box-shadow: 0 0 10px lime; }
  66% { box-shadow: 0 0 10px blue; }
  100% { box-shadow: 0 0 10px red; }
}

.hidden { display: none; }

  </style>
</head>
<body>
  <header>
    <h1>Miguel Avalos Bojorquez</h1>
    <p>Fotografía profesional con estilo</p>
  </header>  <main>
    <div class="filter-buttons">
      <button onclick="filterPhotos('all')">Todas</button>
      <button onclick="filterPhotos('naturaleza')">Naturaleza</button>
      <button onclick="filterPhotos('urbano')">Urbano</button>
      <button onclick="filterPhotos('retrato')">Retrato</button>
    </div><div class="gallery">
  <div class="photo-card naturaleza">
    <img src="tufoto1.jpg" alt="Foto Naturaleza" />
    <div class="watermark">Miguel Avalos Bojorquez ©</div>
  </div>
  <div class="photo-card urbano">
    <img src="tufoto2.jpg" alt="Foto Urbano" />
    <div class="watermark">Miguel Avalos Bojorquez ©</div>
  </div>
  <div class="photo-card retrato">
    <img src="tufoto3.jpg" alt="Foto Retrato" />
    <div class="watermark">Miguel Avalos Bojorquez ©</div>
  </div>
</div>

<section class="contact-form">
  <h2>Contacto</h2>
  <form>
    <input type="text" placeholder="Tu nombre" required />
    <input type="email" placeholder="Tu correo electrónico" required />
    <textarea placeholder="Escribe tu mensaje aquí..." rows="5" required></textarea>
    <button type="submit">Enviar</button>
  </form>
</section>

  </main>  <footer>
    &copy; 2025 Miguel Avalos Bojorquez. Todos los derechos reservados.
  </footer>  <script>
    function filterPhotos(category) {
      const photos = document.querySelectorAll('.photo-card');
      photos.forEach(photo => {
        if (category === 'all' || photo.classList.contains(category)) {
          photo.classList.remove('hidden');
        } else {
          photo.classList.add('hidden');
        }
      });
    }
  </script></body>
</html>
