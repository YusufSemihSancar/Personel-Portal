const API_URL = import.meta.env.VITE_API_URL || "http://127.0.0.1:8000";

export async function fetchHealth() {
  const response = await fetch(`${API_URL}/api/health/`);
  if (!response.ok) {
    throw new Error("API yanıt vermedi");
  }
  return response.json();
}

export async function fetchSystemStatus() {
  const response = await fetch(`${API_URL}/api/system-status/`);
  if (!response.ok) {
    throw new Error("Sistem durumu alınamadı");
  }
  return response.json();
}
