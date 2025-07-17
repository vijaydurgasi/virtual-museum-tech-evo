import React from 'react';
import { Link } from 'react-router-dom';
import { Clock, Tag } from 'lucide-react';
import { Exhibit } from '../lib/supabase';
import AudioPlayer from './AudioPlayer';

interface ExhibitCardProps {
  exhibit: Exhibit;
  featured?: boolean;
}

const ExhibitCard: React.FC<ExhibitCardProps> = ({ exhibit, featured = false }) => {
  const cardSize = featured ? 'lg:col-span-2' : '';
  
  return (
    <Link
      to={`/exhibit/${exhibit.id}`}
      className={`group ${cardSize}`}
    >
      <div className="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-xl transition-all duration-300 transform hover:-translate-y-1">
        <div className="relative">
          <img
            src={exhibit.image_url}
            alt={exhibit.name}
            className="w-full h-48 object-cover group-hover:scale-105 transition-transform duration-300"
          />
          {featured && (
            <div className="absolute top-4 left-4 bg-yellow-500 text-white px-3 py-1 rounded-full text-sm font-semibold">
              Featured
            </div>
          )}
          <div className="absolute bottom-4 right-4 bg-blue-900 bg-opacity-90 text-white px-2 py-1 rounded-md text-xs">
            {exhibit.era}
          </div>
        </div>
        
        <div className="p-6">
          <h3 className="text-xl font-bold text-gray-900 mb-2 group-hover:text-blue-700 transition-colors">
            {exhibit.name}
          </h3>
          
          <div className="flex items-center space-x-4 mb-3 text-sm text-gray-600">
            <div className="flex items-center space-x-1">
              <Tag className="h-4 w-4" />
              <span>{exhibit.category}</span>
            </div>
            <div className="flex items-center space-x-1">
              <Clock className="h-4 w-4" />
              <span>{exhibit.era}</span>
            </div>
          </div>
          
          <p className="text-gray-600 text-sm leading-relaxed">
            {exhibit.short_description}
          </p>
          
          {/* Trending Badge */}
          {exhibit.trending_updates && (
            <div className="mt-3">
              <span className="inline-flex items-center px-2 py-1 rounded-full text-xs font-medium bg-green-100 text-green-800">
                <span className="w-2 h-2 bg-green-400 rounded-full mr-1 animate-pulse"></span>
                2025 Updates Available
              </span>
            </div>
          )}
          
          <div className="mt-4">
            <AudioPlayer 
              text={`${exhibit.name}. ${exhibit.short_description}`}
              title={exhibit.name}
              className="mb-2"
            />
          </div>
          
          <div className="mt-4 text-blue-600 font-medium group-hover:text-blue-800 transition-colors">
            Explore Exhibit →
          </div>
        </div>
      </div>
    </Link>
  );
};

export default ExhibitCard;