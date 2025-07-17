import React, { useState, useEffect } from 'react';
import { useSearchParams } from 'react-router-dom';
import { Search, Filter, X } from 'lucide-react';
import { supabase, Exhibit, TECH_ERAS } from '../lib/supabase';
import ExhibitCard from '../components/ExhibitCard';
import SearchBar from '../components/SearchBar';

const SearchPage: React.FC = () => {
  const [searchParams, setSearchParams] = useSearchParams();
  const [exhibits, setExhibits] = useState<Exhibit[]>([]);
  const [filteredExhibits, setFilteredExhibits] = useState<Exhibit[]>([]);
  const [categories, setCategories] = useState<string[]>([]);
  const [loading, setLoading] = useState(true);
  
  // Filters
  const [selectedEra, setSelectedEra] = useState<string>('all');
  const [selectedCategory, setSelectedCategory] = useState<string>('all');
  const [sortBy, setSortBy] = useState<string>('name');

  const query = searchParams.get('q') || '';
  const categoryParam = searchParams.get('category') || '';

  useEffect(() => {
    fetchAllExhibits();
  }, []);

  useEffect(() => {
    if (categoryParam) {
      setSelectedCategory(categoryParam);
    }
  }, [categoryParam]);

  useEffect(() => {
    applyFilters();
  }, [exhibits, query, selectedEra, selectedCategory, sortBy]);

  const fetchAllExhibits = async () => {
    try {
      const { data } = await supabase
        .from('exhibits')
        .select('*')
        .order('name');

      if (data) {
        setExhibits(data);
        
        // Extract unique categories
        const uniqueCategories = [...new Set(data.map(exhibit => exhibit.category))];
        setCategories(uniqueCategories);
      }
    } catch (error) {
      console.error('Error fetching exhibits:', error);
    } finally {
      setLoading(false);
    }
  };

  const applyFilters = () => {
    let filtered = [...exhibits];

    // Text search
    if (query.trim()) {
      filtered = filtered.filter(exhibit =>
        exhibit.name.toLowerCase().includes(query.toLowerCase()) ||
        exhibit.short_description.toLowerCase().includes(query.toLowerCase()) ||
        exhibit.detailed_description.toLowerCase().includes(query.toLowerCase()) ||
        exhibit.category.toLowerCase().includes(query.toLowerCase()) ||
        exhibit.era.toLowerCase().includes(query.toLowerCase())
      );
    }

    // Era filter
    if (selectedEra !== 'all') {
      filtered = filtered.filter(exhibit => exhibit.era === selectedEra);
    }

    // Category filter
    if (selectedCategory !== 'all') {
      filtered = filtered.filter(exhibit => exhibit.category === selectedCategory);
    }

    // Sort
    filtered.sort((a, b) => {
      switch (sortBy) {
        case 'name':
          return a.name.localeCompare(b.name);
        case 'era':
          return a.era.localeCompare(b.era);
        case 'category':
          return a.category.localeCompare(b.category);
        case 'newest':
          return new Date(b.created_at).getTime() - new Date(a.created_at).getTime();
        default:
          return 0;
      }
    });

    setFilteredExhibits(filtered);
  };

  const handleSearch = (newQuery: string) => {
    const params = new URLSearchParams(searchParams);
    if (newQuery.trim()) {
      params.set('q', newQuery);
    } else {
      params.delete('q');
    }
    setSearchParams(params);
  };

  const clearFilters = () => {
    setSelectedEra('all');
    setSelectedCategory('all');
    setSortBy('name');
    setSearchParams({});
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <Search className="h-12 w-12 text-blue-600 animate-pulse mx-auto mb-4" />
          <p className="text-gray-600">Loading exhibits...</p>
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
            <h1 className="text-4xl md:text-5xl font-bold mb-4">Search Exhibits</h1>
            <p className="text-xl text-blue-100 mb-8 max-w-3xl mx-auto">
              Discover technological innovations across history. Search by name, era, category, or keywords.
            </p>
            
            {/* Search Bar */}
            <div className="max-w-2xl mx-auto">
              <SearchBar
                onSearch={handleSearch}
                placeholder="Search all exhibits..."
              />
            </div>
          </div>
        </div>
      </section>

      {/* Filters and Results */}
      <section className="py-8">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          {/* Filters */}
          <div className="bg-white rounded-lg shadow-md p-6 mb-8">
            <div className="flex flex-wrap items-center gap-4 mb-4">
              <div className="flex items-center space-x-2">
                <Filter className="h-5 w-5 text-gray-600" />
                <span className="text-gray-700 font-medium">Filters:</span>
              </div>
              
              {(selectedEra !== 'all' || selectedCategory !== 'all' || query) && (
                <button
                  onClick={clearFilters}
                  className="flex items-center space-x-1 text-red-600 hover:text-red-800 transition-colors"
                >
                  <X className="h-4 w-4" />
                  <span className="text-sm">Clear All</span>
                </button>
              )}
            </div>

            <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
              {/* Era Filter */}
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-2">Era</label>
                <select
                  value={selectedEra}
                  onChange={(e) => setSelectedEra(e.target.value)}
                  className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                >
                  <option value="all">All Eras</option>
                  {TECH_ERAS.map((era) => (
                    <option key={era} value={era}>{era}</option>
                  ))}
                </select>
              </div>

              {/* Category Filter */}
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-2">Category</label>
                <select
                  value={selectedCategory}
                  onChange={(e) => setSelectedCategory(e.target.value)}
                  className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                >
                  <option value="all">All Categories</option>
                  {categories.map((category) => (
                    <option key={category} value={category}>{category}</option>
                  ))}
                </select>
              </div>

              {/* Sort */}
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-2">Sort By</label>
                <select
                  value={sortBy}
                  onChange={(e) => setSortBy(e.target.value)}
                  className="w-full border border-gray-300 rounded-md px-3 py-2 text-sm focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                >
                  <option value="name">Name (A-Z)</option>
                  <option value="era">Era</option>
                  <option value="category">Category</option>
                  <option value="newest">Newest First</option>
                </select>
              </div>

              {/* Results Count */}
              <div className="flex items-end">
                <div className="text-sm text-gray-600">
                  {filteredExhibits.length} of {exhibits.length} exhibits
                </div>
              </div>
            </div>
          </div>

          {/* Search Results */}
          {query && (
            <div className="mb-6">
              <h2 className="text-xl font-semibold text-gray-900">
                Search results for "{query}"
              </h2>
            </div>
          )}

          {/* Exhibits Grid */}
          {filteredExhibits.length > 0 ? (
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
              {filteredExhibits.map((exhibit) => (
                <ExhibitCard key={exhibit.id} exhibit={exhibit} />
              ))}
            </div>
          ) : (
            <div className="text-center py-12">
              <Search className="h-16 w-16 text-gray-400 mx-auto mb-4" />
              <h3 className="text-xl font-semibold text-gray-600 mb-2">No exhibits found</h3>
              <p className="text-gray-500 mb-6">
                {query 
                  ? `No exhibits match your search for "${query}"`
                  : 'No exhibits match your current filters'
                }
              </p>
              <button
                onClick={clearFilters}
                className="bg-blue-600 text-white px-6 py-3 rounded-lg font-semibold hover:bg-blue-700 transition-colors duration-200"
              >
                Clear Filters
              </button>
            </div>
          )}
        </div>
      </section>
    </div>
  );
};

export default SearchPage;