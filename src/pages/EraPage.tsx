import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import { Clock, Filter } from 'lucide-react';
import { supabase, Exhibit } from '../lib/supabase';
import ExhibitCard from '../components/ExhibitCard';
import SearchBar from '../components/SearchBar';

const EraPage: React.FC = () => {
  const { eraSlug } = useParams<{ eraSlug: string }>();
  const [exhibits, setExhibits] = useState<Exhibit[]>([]);
  const [filteredExhibits, setFilteredExhibits] = useState<Exhibit[]>([]);
  const [categories, setCategories] = useState<string[]>([]);
  const [selectedCategory, setSelectedCategory] = useState<string>('all');
  const [loading, setLoading] = useState(true);

  const eraName = eraSlug?.replace('-', ' ').replace(/\b\w/g, l => l.toUpperCase()) || '';

  useEffect(() => {
    fetchEraExhibits();
  }, [eraSlug]);

  useEffect(() => {
    filterExhibits();
  }, [exhibits, selectedCategory]);

  const fetchEraExhibits = async () => {
    if (!eraSlug) return;

    try {
      const { data } = await supabase
        .from('exhibits')
        .select('*')
        .eq('era', eraName)
        .order('name');

      if (data) {
        setExhibits(data);
        
        // Extract unique categories
        const uniqueCategories = [...new Set(data.map(exhibit => exhibit.category))];
        setCategories(uniqueCategories);
      }
    } catch (error) {
      console.error('Error fetching era exhibits:', error);
    } finally {
      setLoading(false);
    }
  };

  const filterExhibits = () => {
    if (selectedCategory === 'all') {
      setFilteredExhibits(exhibits);
    } else {
      setFilteredExhibits(exhibits.filter(exhibit => exhibit.category === selectedCategory));
    }
  };

  const handleSearch = (query: string) => {
    if (!query.trim()) {
      filterExhibits();
      return;
    }

    const searchResults = exhibits.filter(exhibit =>
      exhibit.name.toLowerCase().includes(query.toLowerCase()) ||
      exhibit.short_description.toLowerCase().includes(query.toLowerCase()) ||
      exhibit.category.toLowerCase().includes(query.toLowerCase())
    );
    setFilteredExhibits(searchResults);
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <Clock className="h-12 w-12 text-blue-600 animate-spin mx-auto mb-4" />
          <p className="text-gray-600">Loading {eraName} exhibits...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <section className="bg-gradient-to-br from-blue-900 to-blue-800 text-white py-16">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center">
            <h1 className="text-4xl md:text-5xl font-bold mb-4">{eraName}</h1>
            <p className="text-xl text-blue-100 mb-8 max-w-3xl mx-auto">
              {eraName === 'Industrial Revolution' && 
                'Explore the era of steam power, mechanization, and the birth of modern manufacturing that transformed society forever.'}
              {eraName === 'Space Age' && 
                'Discover the pioneering technologies that launched humanity beyond Earth and opened the cosmos to exploration.'}
              {eraName === 'Digital Age' && 
                'Journey through the computer revolution that connected the world and transformed how we live, work, and communicate.'}
            </p>
            
            {/* Search Bar */}
            <div className="max-w-2xl mx-auto">
              <SearchBar
                onSearch={handleSearch}
                placeholder={`Search ${eraName} exhibits...`}
              />
            </div>
          </div>
        </div>
      </section>

      {/* Filters and Content */}
      <section className="py-12">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          {/* Category Filter */}
          <div className="mb-8 flex flex-wrap items-center gap-4">
            <div className="flex items-center space-x-2">
              <Filter className="h-5 w-5 text-gray-600" />
              <span className="text-gray-700 font-medium">Filter by category:</span>
            </div>
            <div className="flex flex-wrap gap-2">
              <button
                onClick={() => setSelectedCategory('all')}
                className={`px-4 py-2 rounded-full text-sm font-medium transition-colors duration-200 ${
                  selectedCategory === 'all'
                    ? 'bg-blue-600 text-white'
                    : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
                }`}
              >
                All ({exhibits.length})
              </button>
              {categories.map((category) => (
                <button
                  key={category}
                  onClick={() => setSelectedCategory(category)}
                  className={`px-4 py-2 rounded-full text-sm font-medium transition-colors duration-200 ${
                    selectedCategory === category
                      ? 'bg-blue-600 text-white'
                      : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
                  }`}
                >
                  {category} ({exhibits.filter(e => e.category === category).length})
                </button>
              ))}
            </div>
          </div>

          {/* Exhibits Grid */}
          {filteredExhibits.length > 0 ? (
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
              {filteredExhibits.map((exhibit) => (
                <ExhibitCard key={exhibit.id} exhibit={exhibit} />
              ))}
            </div>
          ) : (
            <div className="text-center py-12">
              <Clock className="h-16 w-16 text-gray-400 mx-auto mb-4" />
              <h3 className="text-xl font-semibold text-gray-600 mb-2">No exhibits found</h3>
              <p className="text-gray-500">
                Try adjusting your search terms or selected category.
              </p>
            </div>
          )}
        </div>
      </section>
    </div>
  );
};

export default EraPage;