import { Routes, Route } from "react-router-dom";
import Main from "./pages/Main.jsx";
import Test from "./pages/Test.jsx";

export default function App() {
  return (
    <Routes>
      <Route path="/" element={<Main />} />
      <Route path="/test" element={<Test />} />
    </Routes>
  );
}
