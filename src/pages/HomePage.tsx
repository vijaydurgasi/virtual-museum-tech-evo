import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { Clock, Star, ArrowRight, Play, Zap, TrendingUp, Users, Brain } from 'lucide-react';
import { supabase, Exhibit, TECH_ERAS } from '../lib/supabase';
import ExhibitCard from '../components/ExhibitCard';
import SearchBar from '../components/SearchBar';
import AudioPlayer from '../components/AudioPlayer';

const HomePage: React.FC = () => {
  const [featuredExhibit, setFeaturedExhibit] = useState<Exhibit | null>(null);
  const [recentExhibits, setRecentExhibits] = useState<Exhibit[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetchHomePageData();
  }, []);

  const fetchHomePageData = async () => {
    try {
      // Fetch featured exhibit
      const { data: featured } = await supabase
        .from('exhibits')
        .select('*')
        .eq('is_featured', true)
        .single();

      if (featured) {
        setFeaturedExhibit(featured);
      }

      // Fetch recent exhibits (excluding featured)
      const { data: recent } = await supabase
        .from('exhibits')
        .select('*')
        .neq('is_featured', true)
        .order('created_at', { ascending: false })
        .limit(6);

      if (recent) {
        setRecentExhibits(recent);
      }
    } catch (error) {
      console.error('Error fetching home page data:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleSearch = (query: string) => {
    if (query.trim()) {
      window.location.href = `/search?q=${encodeURIComponent(query)}`;
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <Clock className="h-12 w-12 text-blue-600 animate-spin mx-auto mb-4" />
          <p className="text-gray-600">Loading museum exhibits...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Hero Section */}
      <section className="bg-gradient-to-br from-blue-900 via-blue-800 to-blue-900 text-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16">
          <div className="text-center">
            <h1 className="text-4xl md:text-6xl font-bold mb-6">
              Virtual Museum of
              <span className="text-yellow-400 block">Technological Evolution</span>
            </h1>
            <p className="text-xl md:text-2xl text-blue-100 mb-8 max-w-3xl mx-auto">
              Step into the past and explore how technology has shaped our world.
              Discover the innovations that transformed human civilization.
            </p>
            
            {/* Search Bar */}
            <div className="max-w-2xl mx-auto mb-8">
              <SearchBar
                onSearch={handleSearch}
                placeholder="Search exhibits by name, era, or category..."
                className="w-full"
              />
            </div>

            {/* Action Buttons */}
            <div className="flex flex-col sm:flex-row gap-4 justify-center">
              <Link
                to="/tour"
                className="bg-yellow-500 text-blue-900 px-8 py-3 rounded-lg font-semibold hover:bg-yellow-400 transition-colors duration-200 flex items-center justify-center space-x-2"
              >
                <Play className="h-5 w-5" />
                <span>Start Guided Tour</span>
              </Link>
              <Link
                to="/search"
                className="border-2 border-white text-white px-8 py-3 rounded-lg font-semibold hover:bg-white hover:text-blue-900 transition-colors duration-200 flex items-center justify-center space-x-2"
              >
                <Star className="h-5 w-5" />
                <span>Explore All Exhibits</span>
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Featured Exhibit */}
      {featuredExhibit && (
        <section className="py-16 bg-white">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="text-center mb-12">
              <h2 className="text-3xl font-bold text-gray-900 mb-4">Featured Exhibit</h2>
              <p className="text-gray-600 max-w-2xl mx-auto">
                Discover our specially selected exhibit highlighting a pivotal moment in technological history.
              </p>
            </div>
            
            <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
              <div>
                <img
                  src={featuredExhibit.image_url}
                  alt={featuredExhibit.name}
                  className="w-full h-96 object-cover rounded-lg shadow-lg"
                />
              </div>
              <div>
                <div className="bg-yellow-100 text-yellow-800 px-3 py-1 rounded-full text-sm font-semibold inline-block mb-4">
                  {featuredExhibit.era}
                </div>
                <h3 className="text-3xl font-bold text-gray-900 mb-4">{featuredExhibit.name}</h3>
                <p className="text-gray-600 text-lg leading-relaxed mb-6">
                  {featuredExhibit.short_description}
                </p>
                
                {/* Trending Updates Preview */}
                {featuredExhibit.trending_updates && (
                  <div className="bg-green-50 rounded-lg p-4 mb-6">
                    <div className="flex items-center mb-2">
                      <Star className="h-4 w-4 text-green-600 mr-2" />
                      <span className="text-green-800 font-semibold text-sm">2025 Trending</span>
                    </div>
                    <p className="text-green-700 text-sm">
                      {featuredExhibit.trending_updates.substring(0, 150)}...
                    </p>
                  </div>
                )}
                
                <div className="mb-6">
                  <AudioPlayer 
                    text={`Featured exhibit: ${featuredExhibit.name}. ${featuredExhibit.short_description}`}
                    title={`Featured: ${featuredExhibit.name}`}
                  />
                </div>
                <Link
                  to={`/exhibit/${featuredExhibit.id}`}
                  className="bg-blue-600 text-white px-6 py-3 rounded-lg font-semibold hover:bg-blue-700 transition-colors duration-200 inline-flex items-center space-x-2"
                >
                  <span>Explore Featured Exhibit</span>
                  <ArrowRight className="h-5 w-5" />
                </Link>
              </div>
            </div>
          </div>
        </section>
      )}

      {/* Trending AI Tools Section */}
      <section className="py-16 bg-gradient-to-br from-purple-50 to-blue-50">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <div className="flex items-center justify-center mb-4">
              <TrendingUp className="h-8 w-8 text-purple-600 mr-3" />
              <h2 className="text-3xl font-bold text-gray-900">Trending AI Tools 2025</h2>
            </div>
            <p className="text-gray-600 max-w-3xl mx-auto">
              Discover the most popular and powerful AI tools that are transforming how we work, create, and solve problems in 2025.
            </p>
          </div>

          {/* Most Used AI Tool Highlight */}
          <div className="bg-gradient-to-r from-purple-600 to-blue-600 rounded-2xl p-8 mb-12 text-white">
            <div className="flex items-center mb-4">
              <Users className="h-6 w-6 mr-2" />
              <span className="text-purple-200 font-semibold">Most Used AI Tool Worldwide</span>
            </div>
            <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 items-center">
              <div>
                <h3 className="text-3xl font-bold mb-4">ChatGPT by OpenAI</h3>
                <p className="text-purple-100 text-lg mb-6">
                  With over 180 million weekly active users, ChatGPT is the world's most widely used AI tool. 
                  It revolutionized conversational AI and made advanced language models accessible to everyone.
                </p>
                <div className="grid grid-cols-2 gap-4 text-sm">
                  <div className="bg-white/10 rounded-lg p-3">
                    <div className="font-semibold">180M+</div>
                    <div className="text-purple-200">Weekly Users</div>
                  </div>
                  <div className="bg-white/10 rounded-lg p-3">
                    <div className="font-semibold">100+</div>
                    <div className="text-purple-200">Languages</div>
                  </div>
                  <div className="bg-white/10 rounded-lg p-3">
                    <div className="font-semibold">2022</div>
                    <div className="text-purple-200">Launch Year</div>
                  </div>
                  <div className="bg-white/10 rounded-lg p-3">
                    <div className="font-semibold">GPT-4</div>
                    <div className="text-purple-200">Latest Model</div>
                  </div>
                </div>
              </div>
              <div className="bg-white/10 rounded-xl p-6">
                <h4 className="font-semibold mb-4">Key Capabilities:</h4>
                <ul className="space-y-2 text-purple-100">
                  <li>• Natural language conversations</li>
                  <li>• Code generation and debugging</li>
                  <li>• Creative writing and content creation</li>
                  <li>• Problem-solving and analysis</li>
                  <li>• Language translation</li>
                  <li>• Educational tutoring</li>
                </ul>
              </div>
            </div>
          </div>

          {/* Trending AI Tools Grid */}
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            {/* Midjourney */}
            <div className="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition-shadow duration-300">
              <div className="flex items-center mb-4">
                <div className="bg-pink-100 p-3 rounded-lg mr-4">
                  <Brain className="h-6 w-6 text-pink-600" />
                </div>
                <div>
                  <h3 className="text-xl font-bold text-gray-900">Midjourney</h3>
                  <p className="text-gray-600 text-sm">AI Image Generation</p>
                </div>
              </div>
              <p className="text-gray-700 mb-4">
                Leading AI art generator that creates stunning images from text descriptions. 
                Popular among artists, designers, and content creators.
              </p>
              <div className="flex items-center justify-between text-sm text-gray-600 mb-4">
                <span>20M+ Users</span>
                <span className="bg-green-100 text-green-800 px-2 py-1 rounded-full">Trending ↗</span>
              </div>
              <div className="text-sm text-gray-600">
                <strong>Best for:</strong> Digital art, concept design, marketing visuals
              </div>
            </div>

            {/* GitHub Copilot */}
            <div className="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition-shadow duration-300">
              <div className="flex items-center mb-4">
                <div className="bg-blue-100 p-3 rounded-lg mr-4">
                  <Zap className="h-6 w-6 text-blue-600" />
                </div>
                <div>
                  <h3 className="text-xl font-bold text-gray-900">GitHub Copilot</h3>
                  <p className="text-gray-600 text-sm">AI Code Assistant</p>
                </div>
              </div>
              <p className="text-gray-700 mb-4">
                AI-powered coding assistant that helps developers write code faster. 
                Integrated into popular code editors and IDEs.
              </p>
              <div className="flex items-center justify-between text-sm text-gray-600 mb-4">
                <span>5M+ Developers</span>
                <span className="bg-blue-100 text-blue-800 px-2 py-1 rounded-full">Professional</span>
              </div>
              <div className="text-sm text-gray-600">
                <strong>Best for:</strong> Software development, code completion, debugging
              </div>
            </div>

            {/* Claude */}
            <div className="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition-shadow duration-300">
              <div className="flex items-center mb-4">
                <div className="bg-orange-100 p-3 rounded-lg mr-4">
                  <Brain className="h-6 w-6 text-orange-600" />
                </div>
                <div>
                  <h3 className="text-xl font-bold text-gray-900">Claude</h3>
                  <p className="text-gray-600 text-sm">AI Assistant by Anthropic</p>
                </div>
              </div>
              <p className="text-gray-700 mb-4">
                Advanced AI assistant focused on being helpful, harmless, and honest. 
                Excellent for analysis, writing, and complex reasoning tasks.
              </p>
              <div className="flex items-center justify-between text-sm text-gray-600 mb-4">
                <span>10M+ Users</span>
                <span className="bg-purple-100 text-purple-800 px-2 py-1 rounded-full">Rising ↗</span>
              </div>
              <div className="text-sm text-gray-600">
                <strong>Best for:</strong> Research, analysis, creative writing, coding
              </div>
            </div>

            {/* Runway ML */}
            <div className="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition-shadow duration-300">
              <div className="flex items-center mb-4">
                <div className="bg-green-100 p-3 rounded-lg mr-4">
                  <Play className="h-6 w-6 text-green-600" />
                </div>
                <div>
                  <h3 className="text-xl font-bold text-gray-900">Runway ML</h3>
                  <p className="text-gray-600 text-sm">AI Video Generation</p>
                </div>
              </div>
              <p className="text-gray-700 mb-4">
                Cutting-edge AI video generation and editing platform. Creates videos from text 
                and offers advanced video editing capabilities.
              </p>
              <div className="flex items-center justify-between text-sm text-gray-600 mb-4">
                <span>2M+ Creators</span>
                <span className="bg-red-100 text-red-800 px-2 py-1 rounded-full">Hot 🔥</span>
              </div>
              <div className="text-sm text-gray-600">
                <strong>Best for:</strong> Video creation, film editing, content production
              </div>
            </div>

            {/* Notion AI */}
            <div className="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition-shadow duration-300">
              <div className="flex items-center mb-4">
                <div className="bg-gray-100 p-3 rounded-lg mr-4">
                  <Star className="h-6 w-6 text-gray-600" />
                </div>
                <div>
                  <h3 className="text-xl font-bold text-gray-900">Notion AI</h3>
                  <p className="text-gray-600 text-sm">Productivity Assistant</p>
                </div>
              </div>
              <p className="text-gray-700 mb-4">
                AI-powered writing and productivity assistant integrated into Notion workspace. 
                Helps with writing, brainstorming, and organizing information.
              </p>
              <div className="flex items-center justify-between text-sm text-gray-600 mb-4">
                <span>30M+ Users</span>
                <span className="bg-yellow-100 text-yellow-800 px-2 py-1 rounded-full">Popular</span>
              </div>
              <div className="text-sm text-gray-600">
                <strong>Best for:</strong> Note-taking, project management, team collaboration
              </div>
            </div>

            {/* Perplexity AI */}
            <div className="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition-shadow duration-300">
              <div className="flex items-center mb-4">
                <div className="bg-indigo-100 p-3 rounded-lg mr-4">
                  <Clock className="h-6 w-6 text-indigo-600" />
                </div>
                <div>
                  <h3 className="text-xl font-bold text-gray-900">Perplexity AI</h3>
                  <p className="text-gray-600 text-sm">AI Search Engine</p>
                </div>
              </div>
              <p className="text-gray-700 mb-4">
                AI-powered search engine that provides accurate, real-time answers with sources. 
                Combines search with conversational AI capabilities.
              </p>
              <div className="flex items-center justify-between text-sm text-gray-600 mb-4">
                <span>15M+ Searches/month</span>
                <span className="bg-green-100 text-green-800 px-2 py-1 rounded-full">Growing ↗</span>
              </div>
              <div className="text-sm text-gray-600">
                <strong>Best for:</strong> Research, fact-checking, real-time information
              </div>
            </div>
          </div>

          {/* AI Tools Statistics */}
          <div className="mt-12 bg-white rounded-xl shadow-lg p-8">
            <h3 className="text-2xl font-bold text-gray-900 mb-6 text-center">AI Tools Market Insights 2025</h3>
            <div className="grid grid-cols-1 md:grid-cols-4 gap-6">
              <div className="text-center">
                <div className="text-3xl font-bold text-blue-600 mb-2">$150B</div>
                <div className="text-gray-600">AI Tools Market Size</div>
              </div>
              <div className="text-center">
                <div className="text-3xl font-bold text-green-600 mb-2">2.5B+</div>
                <div className="text-gray-600">Global AI Tool Users</div>
              </div>
              <div className="text-center">
                <div className="text-3xl font-bold text-purple-600 mb-2">85%</div>
                <div className="text-gray-600">Productivity Increase</div>
              </div>
              <div className="text-center">
                <div className="text-3xl font-bold text-orange-600 mb-2">10,000+</div>
                <div className="text-gray-600">Available AI Tools</div>
              </div>
            </div>
          </div>

        </div>
      </section>

      {/* Era Navigation */}
      <section className="py-16 bg-gray-100">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-bold text-gray-900 mb-4">Explore By Era</h2>
            <p className="text-gray-600 max-w-2xl mx-auto">
              Journey through different periods of technological advancement and discover the innovations that shaped each era.
            </p>
          </div>
          
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            {TECH_ERAS.map((era) => (
              <Link
                key={era}
                to={`/era/${era.toLowerCase().replace(' ', '-')}`}
                className="bg-white rounded-lg shadow-md p-8 text-center hover:shadow-xl transition-all duration-300 transform hover:-translate-y-2 group"
              >
                <Clock className="h-12 w-12 text-blue-600 mx-auto mb-4 group-hover:text-blue-800 transition-colors" />
                <h3 className="text-xl font-bold text-gray-900 mb-2 group-hover:text-blue-700 transition-colors">
                  {era}
                </h3>
                <p className="text-gray-600 text-sm mb-4">
                  {era === 'Industrial Revolution' && 'Steam power, mechanization, and the birth of modern manufacturing'}
                  {era === 'Space Age' && 'Rockets, satellites, and humanity\'s first steps beyond Earth'}
                  {era === 'Digital Age' && 'Computers, internet, and the information revolution'}
                </p>
                <div className="text-blue-600 font-medium group-hover:text-blue-800 transition-colors">
                  Explore Era →
                </div>
              </Link>
            ))}
          </div>
        </div>
      </section>

      {/* Recent Exhibits */}
      {recentExhibits.length > 0 && (
        <section className="py-16 bg-white">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="text-center mb-12">
              <h2 className="text-3xl font-bold text-gray-900 mb-4">Latest Additions</h2>
              <p className="text-gray-600 max-w-2xl mx-auto">
                Discover our newest exhibits and recent additions to the museum collection.
              </p>
            </div>
            
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
              {recentExhibits.map((exhibit) => (
                <ExhibitCard key={exhibit.id} exhibit={exhibit} />
              ))}
            </div>
          </div>
        </section>
      )}
    </div>
  );
};

export default HomePage;