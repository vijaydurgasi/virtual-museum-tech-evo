import React from 'react';
import { Calendar, Clock, Zap } from 'lucide-react';
import { TimelineEvent } from '../lib/supabase';

interface TimelineProps {
  events: TimelineEvent[];
  title?: string;
}

const Timeline: React.FC<TimelineProps> = ({ events, title = "Historical Timeline" }) => {
  const getEventIcon = (event: TimelineEvent) => {
    if (event.type === 'predicted') return Zap;
    if (event.type === 'current') return Clock;
    return Calendar;
  };

  const getEventStyle = (event: TimelineEvent) => {
    if (event.type === 'predicted') {
      return {
        dotColor: 'bg-purple-600',
        bgColor: 'bg-purple-50 border-l-4 border-purple-500',
        textColor: 'text-purple-800',
        yearColor: 'text-purple-900'
      };
    }
    if (event.type === 'current') {
      return {
        dotColor: 'bg-green-600',
        bgColor: 'bg-green-50 border-l-4 border-green-500',
        textColor: 'text-green-800',
        yearColor: 'text-green-900'
      };
    }
    return {
      dotColor: 'bg-blue-600',
      bgColor: 'bg-blue-50',
      textColor: 'text-blue-800',
      yearColor: 'text-blue-900'
    };
  };
  return (
    <div className="bg-white rounded-lg shadow-md p-6">
      <h3 className="text-xl font-bold text-gray-900 mb-6 flex items-center">
        <Calendar className="h-5 w-5 mr-2 text-blue-600" />
        {title}
      </h3>
      
      {/* Legend */}
      <div className="flex flex-wrap gap-4 mb-6 text-xs">
        <div className="flex items-center space-x-1">
          <div className="w-3 h-3 bg-blue-600 rounded-full"></div>
          <span className="text-gray-600">Historical</span>
        </div>
        <div className="flex items-center space-x-1">
          <div className="w-3 h-3 bg-green-600 rounded-full"></div>
          <span className="text-gray-600">Current (2024-2025)</span>
        </div>
        <div className="flex items-center space-x-1">
          <div className="w-3 h-3 bg-purple-600 rounded-full"></div>
          <span className="text-gray-600">Predicted (2026-2035)</span>
        </div>
      </div>
      
      <div className="relative">
        {/* Timeline line */}
        <div className="absolute left-4 top-0 bottom-0 w-0.5 bg-blue-200"></div>
        
        <div className="space-y-6">
          {events.map((event, index) => {
            const style = getEventStyle(event);
            const IconComponent = getEventIcon(event);
            
            return (
              <div key={index} className="relative flex items-start">
                <div className={`absolute left-2 w-4 h-4 ${style.dotColor} rounded-full border-4 border-white shadow-md flex items-center justify-center`}>
                  {event.type === 'predicted' && (
                    <Zap className="h-2 w-2 text-white" />
                  )}
                </div>
              
                <div className="ml-10">
                  <div className={`${style.bgColor} rounded-lg p-4 hover:opacity-90 transition-all duration-200`}>
                    <div className="flex items-center space-x-2 mb-1">
                      <IconComponent className={`h-4 w-4 ${style.textColor}`} />
                      <div className={`${style.yearColor} font-bold text-lg`}>
                        {event.year}
                        {event.type === 'predicted' && <span className="text-sm font-normal ml-1">(Predicted)</span>}
                      </div>
                    </div>
                    <div className="text-gray-700 mt-1">{event.event}</div>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
};

export default Timeline;