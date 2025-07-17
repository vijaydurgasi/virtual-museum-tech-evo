import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { ArrowLeft, Clock, Tag, Share2, Heart, Star } from 'lucide-react';
import { supabase, Exhibit } from '../lib/supabase';
import Timeline from '../components/Timeline';
import AudioPlayer from '../components/AudioPlayer';

const ExhibitDetail: React.FC = () => {
  const { id } = useParams<{ id: string }>();
  const [exhibit, setExhibit] = useState<Exhibit | null>(null);
  const [relatedExhibits, setRelatedExhibits] = useState<Exhibit[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (id) {
      fetchExhibitDetails();
    }
  }, [id]);

  const fetchExhibitDetails = async () => {
    try {
      // Fetch main exhibit
      const { data: exhibitData } = await supabase
        .from('exhibits')
        .select('*')
        .eq('id', id)
        .single();

      if (exhibitData) {
        setExhibit(exhibitData);
        
        // Fetch related exhibits from the same era
        const { data: relatedData } = await supabase
          .from('exhibits')
          .select('*')
          .eq('era', exhibitData.era)
          .neq('id', id)
          .limit(3);

        if (relatedData) {
          setRelatedExhibits(relatedData);
        }
      }
    } catch (error) {
      console.error('Error fetching exhibit details:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleShare = () => {
    if (navigator.share && exhibit) {
      navigator.share({
        title: exhibit.name,
        text: exhibit.short_description,
        url: window.location.href,
      });
    } else {
      navigator.clipboard.writeText(window.location.href);
      alert('Link copied to clipboard!');
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <Clock className="h-12 w-12 text-blue-600 animate-spin mx-auto mb-4" />
          <p className="text-gray-600">Loading exhibit details...</p>
        </div>
      </div>
    );
  }

  if (!exhibit) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <h2 className="text-2xl font-bold text-gray-900 mb-4">Exhibit Not Found</h2>
          <p className="text-gray-600 mb-6">The exhibit you're looking for doesn't exist.</p>
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

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <section className="bg-gradient-to-br from-blue-900 to-blue-800 text-white py-8">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex items-center space-x-4 mb-6">
            <Link
              to={`/era/${exhibit.era.toLowerCase().replace(' ', '-')}`}
              className="flex items-center space-x-2 text-blue-200 hover:text-white transition-colors duration-200"
            >
              <ArrowLeft className="h-5 w-5" />
              <span>Back to {exhibit.era}</span>
            </Link>
          </div>
          
          <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between">
            <div className="lg:w-2/3">
              <div className="flex items-center space-x-4 mb-4">
                <span className="bg-yellow-500 text-blue-900 px-3 py-1 rounded-full text-sm font-semibold">
                  {exhibit.era}
                </span>
                <span className="bg-blue-700 text-white px-3 py-1 rounded-full text-sm">
                  {exhibit.category}
                </span>
              </div>
              <h1 className="text-3xl md:text-4xl font-bold mb-4">{exhibit.name}</h1>
              <p className="text-xl text-blue-100">{exhibit.short_description}</p>
              
              <div className="mt-6">
                <AudioPlayer 
                  text={`${exhibit.name}. ${exhibit.short_description}. ${exhibit.detailed_description}`}
                  title={exhibit.name}
                />
              </div>
            </div>
            
            <div className="flex space-x-4 mt-6 lg:mt-0">
              <button
                onClick={handleShare}
                className="flex items-center space-x-2 bg-blue-700 text-white px-4 py-2 rounded-lg hover:bg-blue-600 transition-colors duration-200"
              >
                <Share2 className="h-5 w-5" />
                <span>Share</span>
              </button>
              <button className="flex items-center space-x-2 bg-transparent border-2 border-white text-white px-4 py-2 rounded-lg hover:bg-white hover:text-blue-900 transition-colors duration-200">
                <Heart className="h-5 w-5" />
                <span>Save</span>
              </button>
            </div>
          </div>
        </div>
      </section>

      {/* Main Content */}
      <section className="py-12">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 lg:grid-cols-3 gap-12">
            {/* Main Content */}
            <div className="lg:col-span-2">
              {/* Hero Image */}
              <div className="mb-8">
                <img
                  src={exhibit.image_url}
                  alt={exhibit.name}
                  className="w-full h-96 object-cover rounded-lg shadow-lg"
                />
              </div>

              {/* Description */}
              <div className="bg-white rounded-lg shadow-md p-8 mb-8">
                <h2 className="text-2xl font-bold text-gray-900 mb-6">About This Exhibit</h2>
                <div className="mb-4">
                  <AudioPlayer 
                    text={exhibit.detailed_description}
                    title="Detailed Description"
                  />
                </div>
                <div className="prose prose-lg text-gray-700 leading-relaxed">
                  {exhibit.detailed_description.split('\n').map((paragraph, index) => (
                    <p key={index} className="mb-4">{paragraph}</p>
                  ))}
                </div>
              </div>

              {/* Interactive Elements */}
              <div className="bg-white rounded-lg shadow-md p-8">
                <h3 className="text-xl font-bold text-gray-900 mb-6">Interactive Experience</h3>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                  <div className="bg-blue-50 rounded-lg p-6 text-center">
                    <Clock className="h-12 w-12 text-blue-600 mx-auto mb-4" />
                    <h4 className="font-semibold text-gray-900 mb-2">Era Explorer</h4>
                    <p className="text-gray-600 text-sm mb-4">
                      Discover other innovations from the {exhibit.era}
                    </p>
                    <Link
                      to={`/era/${exhibit.era.toLowerCase().replace(' ', '-')}`}
                      className="text-blue-600 font-medium hover:text-blue-800 transition-colors"
                    >
                      Explore Era →
                    </Link>
                  </div>
                  <div className="bg-yellow-50 rounded-lg p-6 text-center">
                    <Tag className="h-12 w-12 text-yellow-600 mx-auto mb-4" />
                    <h4 className="font-semibold text-gray-900 mb-2">Category View</h4>
                    <p className="text-gray-600 text-sm mb-4">
                      See more {exhibit.category} innovations
                    </p>
                    <Link
                      to={`/search?category=${encodeURIComponent(exhibit.category)}`}
                      className="text-yellow-600 font-medium hover:text-yellow-800 transition-colors"
                    >
                      View Category →
                    </Link>
                  </div>
                </div>
              </div>
              
              {/* Human Impact Section */}
              {exhibit.human_impact && (
                <div className="mt-8 bg-blue-50 rounded-lg p-6">
                  <h3 className="text-xl font-bold text-blue-900 mb-4 flex items-center">
                    <Heart className="h-5 w-5 mr-2" />
                    How This Changed Human Life
                  </h3>
                  <div className="mb-4">
                    <AudioPlayer 
                      text={exhibit.human_impact}
                      title="Human Impact Story"
                    />
                  </div>
                  <div className="text-blue-800 leading-relaxed">
                    {exhibit.human_impact.split('\n').map((paragraph, index) => (
                      <p key={index} className="mb-3">{paragraph}</p>
                    ))}
                  </div>
                </div>
              )}
              
              {/* Trending Updates Section */}
              {exhibit.trending_updates && (
                <div className="mt-6 bg-green-50 rounded-lg p-6">
                  <h3 className="text-xl font-bold text-green-900 mb-4 flex items-center">
                    <Star className="h-5 w-5 mr-2" />
                    2025 Trending Updates
                  </h3>
                  <div className="mb-4">
                    <AudioPlayer 
                      text={exhibit.trending_updates}
                      title="Trending Updates"
                    />
                  </div>
                  <div className="text-green-800 leading-relaxed">
                    {exhibit.trending_updates.split('\n').map((paragraph, index) => (
                      <p key={index} className="mb-3">{paragraph}</p>
                    ))}
                  </div>
                </div>
              )}
            </div>

            {/* How it Works Section */}
            {exhibit.how_it_works && (
              <div className="bg-white rounded-lg shadow-md p-8 mb-8">
                <h2 className="text-2xl font-bold text-gray-900 mb-6 flex items-center">
                  <Clock className="h-6 w-6 mr-3 text-blue-500" />
                  How it Works
                </h2>
                <div className="mb-4">
                  <AudioPlayer 
                    text={exhibit.how_it_works}
                    title="How it Works"
                  />
                </div>
                <div className="prose prose-lg text-gray-700 leading-relaxed">
                  {exhibit.how_it_works.split('\n').map((paragraph, index) => (
                    <p key={index} className="mb-4">{paragraph}</p>
                  ))}
                </div>
              </div>
            )}

            {/* Common Uses Section */}
            {exhibit.common_uses && (
              <div className="bg-white rounded-lg shadow-md p-8 mb-8">
                <h2 className="text-2xl font-bold text-gray-900 mb-6 flex items-center">
                  <Tag className="h-6 w-6 mr-3 text-green-500" />
                  Common Uses
                </h2>
                <div className="mb-4">
                  <AudioPlayer 
                    text={exhibit.common_uses}
                    title="Common Uses"
                  />
                </div>
                <div className="prose prose-lg text-gray-700 leading-relaxed">
                  {exhibit.common_uses.split('\n').map((paragraph, index) => (
                    <p key={index} className="mb-4">{paragraph}</p>
                  ))}
                </div>
              </div>
            )}

            {/* Human Impact Section */}
            {exhibit.human_impact && (
              <div className="bg-white rounded-lg shadow-md p-8 mb-8">
                <h2 className="text-2xl font-bold text-gray-900 mb-6 flex items-center">
                  <Heart className="h-6 w-6 mr-3 text-red-500" />
                  How it Impacted Human Life
                </h2>
                <div className="mb-4">
                  <AudioPlayer 
                    text={exhibit.human_impact}
                    title="Human Impact Story"
                  />
                </div>
                <div className="prose prose-lg text-gray-700 leading-relaxed">
                  {exhibit.human_impact.split('\n').map((paragraph, index) => (
                    <p key={index} className="mb-4">{paragraph}</p>
                  ))}
                </div>
              </div>
            )}

            {/* Sidebar */}
            <div className="space-y-8">
              {/* Timeline */}
              {exhibit.timeline_events && exhibit.timeline_events.length > 0 && (
                <Timeline 
                  events={exhibit.timeline_events} 
                  title="Key Milestones"
                />
              )}

              {/* Related Exhibits */}
              {relatedExhibits.length > 0 && (
                <div className="bg-white rounded-lg shadow-md p-6">
                  <h3 className="text-xl font-bold text-gray-900 mb-6">Related Exhibits</h3>
                  <div className="space-y-4">
                    {relatedExhibits.map((related) => (
                      <Link
                        key={related.id}
                        to={`/exhibit/${related.id}`}
                        className="block group"
                      >
                        <div className="flex space-x-3 p-3 rounded-lg hover:bg-gray-50 transition-colors duration-200">
                          <img
                            src={related.image_url}
                            alt={related.name}
                            className="w-16 h-16 object-cover rounded-md"
                          />
                          <div className="flex-1">
                            <h4 className="font-medium text-gray-900 group-hover:text-blue-600 transition-colors">
                              {related.name}
                            </h4>
                            <p className="text-sm text-gray-600 mt-1">
                              {related.category}
                            </p>
                          </div>
                        </div>
                      </Link>
                    ))}
                  </div>
                </div>
              )}
            </div>
          </div>
        </div>
      </section>
    </div>
  );
};

export default ExhibitDetail;