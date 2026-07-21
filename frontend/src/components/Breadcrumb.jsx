import { Link } from "react-router-dom";

export default function Breadcrumb({ title, parent }) {
  return (
    <nav className="breadcrumb-bar" aria-label="Breadcrumb">
      <div className="breadcrumb-container">
        <Link to="/" className="breadcrumb-link">
          <i className="fa-solid fa-house" /> Ana Sayfa
        </Link>
        {parent && (
          <>
            <span className="breadcrumb-sep">
              <i className="fa-solid fa-chevron-right" />
            </span>
            <Link to={parent.to} className="breadcrumb-link">
              {parent.label}
            </Link>
          </>
        )}
        <span className="breadcrumb-sep">
          <i className="fa-solid fa-chevron-right" />
        </span>
        <span className="breadcrumb-current">{title}</span>
      </div>
    </nav>
  );
}
