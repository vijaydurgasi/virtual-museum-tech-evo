import React, { useState, useEffect } from 'react';
import { Play, Pause, Volume2, VolumeX } from 'lucide-react';

interface AudioPlayerProps {
  text: string;
  title?: string;
  className?: string;
}

const AudioPlayer: React.FC<AudioPlayerProps> = ({ text, title, className = "" }) => {
  const [isPlaying, setIsPlaying] = useState(false);
  const [isPaused, setIsPaused] = useState(false);
  const [isSupported, setIsSupported] = useState(false);
  const [utterance, setUtterance] = useState<SpeechSynthesisUtterance | null>(null);

  useEffect(() => {
    // Check if speech synthesis is supported
    setIsSupported('speechSynthesis' in window);
    
    return () => {
      // Cleanup: stop any ongoing speech
      if (window.speechSynthesis) {
        window.speechSynthesis.cancel();
      }
    };
  }, []);

  useEffect(() => {
    if (isSupported && text) {
      const newUtterance = new SpeechSynthesisUtterance(text);
      
      // Configure speech settings
      newUtterance.rate = 0.9;
      newUtterance.pitch = 1;
      newUtterance.volume = 0.8;
      
      // Set up event listeners
      newUtterance.onstart = () => {
        setIsPlaying(true);
        setIsPaused(false);
      };
      
      newUtterance.onend = () => {
        setIsPlaying(false);
        setIsPaused(false);
      };
      
      newUtterance.onerror = () => {
        setIsPlaying(false);
        setIsPaused(false);
      };
      
      setUtterance(newUtterance);
    }
  }, [text, isSupported]);

  const handlePlay = () => {
    if (!utterance || !isSupported) return;

    if (isPaused) {
      window.speechSynthesis.resume();
      setIsPaused(false);
      setIsPlaying(true);
    } else {
      window.speechSynthesis.cancel(); // Stop any current speech
      window.speechSynthesis.speak(utterance);
    }
  };

  const handlePause = () => {
    if (window.speechSynthesis.speaking && !window.speechSynthesis.paused) {
      window.speechSynthesis.pause();
      setIsPaused(true);
      setIsPlaying(false);
    }
  };

  const handleStop = () => {
    window.speechSynthesis.cancel();
    setIsPlaying(false);
    setIsPaused(false);
  };

  if (!isSupported) {
    return null; // Don't render if speech synthesis is not supported
  }

  return (
    <div className={`flex items-center space-x-2 ${className}`}>
      <div className="flex items-center space-x-1">
        {!isPlaying && !isPaused ? (
          <button
            onClick={handlePlay}
            className="flex items-center space-x-2 bg-blue-600 text-white px-3 py-2 rounded-lg hover:bg-blue-700 transition-colors duration-200 text-sm"
            title={`Listen to ${title || 'content'}`}
          >
            <Play className="h-4 w-4" />
            <span>Listen</span>
          </button>
        ) : (
          <div className="flex items-center space-x-1">
            <button
              onClick={isPlaying ? handlePause : handlePlay}
              className="bg-blue-600 text-white p-2 rounded-lg hover:bg-blue-700 transition-colors duration-200"
              title={isPlaying ? 'Pause' : 'Resume'}
            >
              {isPlaying ? <Pause className="h-4 w-4" /> : <Play className="h-4 w-4" />}
            </button>
            <button
              onClick={handleStop}
              className="bg-gray-600 text-white p-2 rounded-lg hover:bg-gray-700 transition-colors duration-200"
              title="Stop"
            >
              <VolumeX className="h-4 w-4" />
            </button>
          </div>
        )}
      </div>
      
      {(isPlaying || isPaused) && (
        <div className="flex items-center space-x-2 text-sm text-gray-600">
          <Volume2 className="h-4 w-4" />
          <span className="text-xs">
            {isPlaying ? 'Playing...' : isPaused ? 'Paused' : ''}
          </span>
        </div>
      )}
    </div>
  );
};

export default AudioPlayer;