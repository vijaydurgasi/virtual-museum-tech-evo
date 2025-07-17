import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { Play, Pause, SkipForward, SkipBack, ArrowLeft, Clock } from 'lucide-react';
import { supabase, Exhibit } from '../lib/supabase';
import AudioPlayer from '../components/AudioPlayer';

const TourPage: React.FC = () => {
  const [tourExhibits, setTourExhibits] = useState<Exhibit[]>([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [isPlaying, setIsPlaying] = useState(false);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetchTourExhibits();
  }, []);

  useEffect(() => {
    let interval: NodeJS.Timeout;
    
    if (isPlaying && tourExhibits.length > 0) {
      interval = setInterval(() => {
        setCurrentIndex((prev) => (prev + 1) % tourExhibits.length);
      }, 15000); // Auto-advance every 15 seconds
    }

    return () => {
      if (interval) clearInterval(interval);
    };
  }, [isPlaying, tourExhibits.length]);

  const fetchTourExhibits = async () => {
    try {
      // Curated tour: select representative exhibits from each era
      const { data } = await supabase
        .from('exhibits')
        .select('*')
        .in('name', [
          'The Printing Press',
          'The Steam Engine',
          'The Telegraph',
          'Sputnik 1',
          'Apollo 11',
          'The Integrated Circuit',
          'The Personal Computer',
          'The Internet',
          'The Smartphone'
        ])
        .order('created_at');

      if (data) {
        setTourExhibits(data);
      }
    } catch (error) {
      console.error('Error fetching tour exhibits:', error);
    } finally {
      setLoading(false);
    }
  };

  const goToNext = () => {
    setCurrentIndex((prev) => (prev + 1) % tourExhibits.length);
  };

  const goToPrevious = () => {
    setCurrentIndex((prev) => (prev - 1 + tourExhibits.length) % tourExhibits.length);
  };

  const togglePlayPause = () => {
    setIsPlaying(!isPlaying);
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <Clock className="h-12 w-12 text-blue-600 animate-spin mx-auto mb-4" />
          <p className="text-gray-600">Preparing your guided tour...</p>
        </div>
      </div>
    );
  }

  if (tourExhibits.length === 0) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <h2 className="text-2xl font-bold text-gray-900 mb-4">Tour Not Available</h2>
          <p className="text-gray-600 mb-6">Unable to load the guided tour at this time.</p>
          <Link
            to="/"
            className="bg-blue-600 text-white px-6 py-3 rounded-lg font-semibold hover:bg-blue-700 transition-colors duration-200"
          >
            Return to Home
          </Link>
        </div>
      </div>
    );
  }

  const currentExhibit = tourExhibits[currentIndex];

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <section className="bg-gradient-to-br from-blue-900 to-blue-800 text-white py-8">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-4">
              <Link
                to="/"
                className="flex items-center space-x-2 text-blue-200 hover:text-white transition-colors duration-200"
              >
                <ArrowLeft className="h-5 w-5" />
                <span>Back to Home</span>
              </Link>
            </div>
            
            <div className="text-center">
              <h1 className="text-2xl md:text-3xl font-bold">Guided Tour</h1>
              <p className="text-blue-100 text-sm">
                Exhibit {currentIndex + 1} of {tourExhibits.length}
              </p>
            </div>

            <div className="w-24"></div> {/* Spacer for balance */}
          </div>
        </div>
      </section>

      {/* Main Tour Content */}
      <section className="py-8">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
          {/* Progress Bar */}
          <div className="mb-8">
            <div className="bg-gray-200 rounded-full h-2">
              <div
                className="bg-blue-600 h-2 rounded-full transition-all duration-500"
                style={{ width: `${((currentIndex + 1) / tourExhibits.length) * 100}%` }}
              ></div>
            </div>
            <div className="flex justify-between mt-2 text-sm text-gray-600">
              <span>Journey Through Time</span>
              <span>{Math.round(((currentIndex + 1) / tourExhibits.length) * 100)}% Complete</span>
            </div>
          </div>

          {/* Current Exhibit */}
          <div className="bg-white rounded-lg shadow-lg overflow-hidden">
            <div className="grid grid-cols-1 lg:grid-cols-2">
              {/* Image */}
              <div className="relative">
                <img
                  src={currentExhibit.image_url}
                  alt={currentExhibit.name}
                  className="w-full h-96 lg:h-full object-cover"
                />
                <div className="absolute top-4 left-4 bg-yellow-500 text-blue-900 px-3 py-1 rounded-full text-sm font-semibold">
                  {currentExhibit.era}
                </div>
              </div>

              {/* Content */}
              <div className="p-8">
                <div className="mb-4">
                  <span className="bg-blue-100 text-blue-800 px-2 py-1 rounded-md text-sm">
                    {currentExhibit.category}
                  </span>
                </div>
                
                <h2 className="text-3xl font-bold text-gray-900 mb-4">
                  {currentExhibit.name}
                </h2>
                
                <p className="text-gray-600 text-lg leading-relaxed mb-6">
                  {currentExhibit.short_description}
                </p>

                <div className="mb-6">
                  <AudioPlayer 
                    text={`Welcome to the guided tour. Currently viewing: ${currentExhibit.name}. ${currentExhibit.short_description}. ${currentExhibit.detailed_description.substring(0, 300)}...`}
                    title={`Tour: ${currentExhibit.name}`}
                  />
                </div>
                <div className="bg-gray-50 rounded-lg p-4 mb-6">
                  <h3 className="font-semibold text-gray-900 mb-2">Tour Insight</h3>
                  <p className="text-gray-600 text-sm">
                    {currentExhibit.detailed_description.substring(0, 200)}...
                  </p>
                </div>

                <Link
                  to={`/exhibit/${currentExhibit.id}`}
                  className="bg-blue-600 text-white px-6 py-3 rounded-lg font-semibold hover:bg-blue-700 transition-colors duration-200 inline-block"
                >
                  Explore in Detail
                </Link>
              </div>
            </div>
          </div>

          {/* Tour Controls */}
          <div className="mt-8 bg-white rounded-lg shadow-md p-6">
            <div className="flex items-center justify-center space-x-4">
              <button
                onClick={goToPrevious}
                className="bg-gray-200 text-gray-700 p-3 rounded-full hover:bg-gray-300 transition-colors duration-200"
                disabled={currentIndex === 0}
              >
                <SkipBack className="h-5 w-5" />
              </button>

              <button
                onClick={togglePlayPause}
                className="bg-blue-600 text-white p-4 rounded-full hover:bg-blue-700 transition-colors duration-200"
              >
                {isPlaying ? <Pause className="h-6 w-6" /> : <Play className="h-6 w-6" />}
              </button>

              <button
                onClick={goToNext}
                className="bg-gray-200 text-gray-700 p-3 rounded-full hover:bg-gray-300 transition-colors duration-200"
                disabled={currentIndex === tourExhibits.length - 1}
              >
                <SkipForward className="h-5 w-5" />
              </button>
            </div>

            <div className="text-center mt-4">
              <p className="text-gray-600 text-sm">
                {isPlaying ? 'Auto-advancing every 15 seconds' : 'Paused - Use controls to navigate'}
              </p>
            </div>
          </div>

          {/* Tour Navigation */}
          <div className="mt-8 bg-white rounded-lg shadow-md p-6">
            <h3 className="text-lg font-semibold text-gray-900 mb-4">Tour Timeline</h3>
            <div className="grid grid-cols-3 md:grid-cols-5 lg:grid-cols-9 gap-2">
              {tourExhibits.map((exhibit, index) => (
                <button
                  key={exhibit.id}
                  onClick={() => setCurrentIndex(index)}
                  className={`text-xs p-2 rounded transition-colors duration-200 ${
                    index === currentIndex
                      ? 'bg-blue-600 text-white'
                      : index < currentIndex
                      ? 'bg-green-100 text-green-800'
                      : 'bg-gray-100 text-gray-600 hover:bg-gray-200'
                  }`}
                >
                  {exhibit.name.substring(0, 12)}...
                </button>
              ))}
            </div>
          </div>
        </div>
      </section>
    </div>
  );
};

export default TourPage;