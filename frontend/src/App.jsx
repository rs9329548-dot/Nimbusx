import { useEffect, useState } from 'react';

function App() {
  const [status, setStatus] = useState('Loading...');

  useEffect(() => {
    fetch('/api/health')
      .then((response) => response.json())
      .then((data) => setStatus(data.status === 'OK' ? 'Backend connected' : 'Unexpected response'))
      .catch(() => setStatus('Backend unavailable'));
  }, []);

  return (
    <div className="app-shell">
      <header>
        <h1>NimbusX</h1>
        <p>Cloud resource optimization simulator</p>
      </header>
      <main>
        <section className="status-card">
          <h2>Backend status</h2>
          <p>{status}</p>
        </section>
      </main>
    </div>
  );
}

export default App;
