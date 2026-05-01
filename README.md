![Java](https://img.shields.io/badge/Java-17-blue)
![Spring Boot](https://img.shields.io/badge/SpringBoot-Backend-green)
![React](https://img.shields.io/badge/React-Frontend-blue)
![GSSoC](https://img.shields.io/badge/GSSoC-2026-orange)

# NimbusX

### _Simulate. Scale. Optimize._

NimbusX is a cloud resource optimization and auto-scaling simulator designed to mimic real-world cloud infrastructure behavior. It enables users to monitor system metrics, simulate dynamic workloads, and apply intelligent scaling strategies to optimize performance and cost.

Built using Java (Spring Boot) and React, NimbusX helps developers understand how modern cloud platforms handle auto-scaling, resource allocation, and cost optimization.

---

## Features

- 📊 Real-time CPU and memory monitoring (simulated workloads)
- ⚙️ Intelligent auto-scaling based on dynamic thresholds
- 💰 Cost optimization engine with resource usage insights
- 📈 Interactive dashboard with live metrics visualization
- 🕒 Historical data tracking and performance analysis
- 🧩 Modular architecture for open-source contributions

---

## Tech Stack

**Backend**

- Java (Spring Boot)
- Spring Web, Spring Data JPA
- Spring Scheduler
- WebSockets (STOMP)

**Frontend**

- React (Vite)
- Chart.js / Recharts

**Database**

- PostgreSQL

**Optional**

- Docker (for service simulation)
- Deployment: Render / Vercel / Supabase

---

## Project Architecture

```
Frontend (React Dashboard)
        ↓
Spring Boot Backend
        ↓
---------------------------------
| Metrics Engine (Simulation)   |
| Auto Scaling Engine           |
| Cost Optimization Engine      |
---------------------------------
        ↓
PostgreSQL Database
```

---

## Getting Started

### Prerequisites

- Java 17+
- Node.js 18+
- PostgreSQL

---

### 🔧 Backend Setup

```bash
cd backend
./mvnw spring-boot:run
```

On Windows PowerShell:

```powershell
cd backend
./mvnw.cmd spring-boot:run
```

> Note: Java 17+ is still required on the system for the wrapper to run.

---

### 🔧 Frontend Setup

```bash
cd frontend
npm install
npm run dev
```

---

### Run Both Locally

From the repository root, use one of the helper scripts below:

- PowerShell:

```powershell
./start-all.ps1
```

- Bash / WSL:

```bash
./start-all.sh
```

> The backend still requires Java 17+ to be available on the system.

---

### Database Setup

- Create a PostgreSQL database
- Update credentials in `application.properties`

---

## Project Structure

The repository is organized with a clean separation between backend and frontend code.

```
backend/
 ├── pom.xml
 ├── src/
 │   ├── main/
 │   │   ├── java/
 │   │   │   └── com/nimbusx/
 │   │   │       ├── NimbusXApplication.java
 │   │   │       └── controller/
 │   │   │           └── HealthController.java
 │   │   └── resources/
 │   │       └── application.properties
 └── .gitkeep

frontend/
 ├── package.json
 ├── vite.config.js
 ├── index.html
 ├── src/
 │   ├── main.jsx
 │   ├── App.jsx
 │   └── style.css
 └── .gitkeep
```

---

## Contribution Guidelines

NimbusX is designed to be beginner-friendly and modular.

### How to Contribute

1. Fork the repository
2. Create a new branch
3. Make your changes
4. Submit a pull request

---

### Issue Labels

- `good first issue` → Beginner-friendly
- `medium` → Intermediate tasks
- `advanced` → Complex features

---

## Contribution Areas

- Scaling algorithms (auto-scale logic)
- Metrics simulation improvements
- UI/UX enhancements
- Cost optimization strategies
- Real-time data handling

---

## Roadmap

- [ ] Basic service & metrics simulation
- [ ] Auto-scaling engine implementation
- [ ] Cost optimization module
- [ ] Real-time dashboard (WebSockets)
- [ ] Advanced scaling strategies
- [ ] Predictive scaling (future scope)

---

## Code of Conduct

Please follow respectful and collaborative practices while contributing.

---

## License

This project is licensed under the MIT License.

---

## Acknowledgements

Inspired by modern cloud platforms and auto-scaling systems used in real-world distributed architectures.

---

## Support

If you find this project useful, consider giving it a star ⭐ and contributing!
