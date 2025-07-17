import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navigation from './components/Navigation';
import HomePage from './pages/HomePage';
import EraPage from './pages/EraPage';
import ExhibitDetail from './pages/ExhibitDetail';
import SearchPage from './pages/SearchPage';
import TourPage from './pages/TourPage';

function App() {
  return (
    <Router>
      <div className="min-h-screen bg-gray-50">
        <Navigation />
        <main>
          <Routes>
            <Route path="/" element={<HomePage />} />
            <Route path="/era/:eraSlug" element={<EraPage />} />
            <Route path="/exhibit/:id" element={<ExhibitDetail />} />
            <Route path="/search" element={<SearchPage />} />
            <Route path="/tour" element={<TourPage />} />
          </Routes>
        </main>
        
        {/* Footer */}
        <footer className="bg-blue-900 text-white py-8 mt-16">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="text-center">
              <h3 className="text-xl font-bold mb-2">Virtual Museum of Technological Evolution</h3>
              <p className="text-blue-100 mb-4">
                Exploring the innovations that shaped our world
              </p>
              <div className="flex justify-center space-x-6 text-sm text-blue-200">
                <span>© 2025 TechEvo Museum</span>
                <span>Educational Resource</span>
                <span>Built with Modern Web Technology</span>
              </div>
            </div>
          </div>
        </footer>
      </div>
    </Router>
  );
}

export default App;