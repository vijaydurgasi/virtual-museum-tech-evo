import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL || '';
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY || '';

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

export interface Exhibit {
  id: string;
  name: string;
  era: string;
  short_description: string;
  detailed_description: string;
  image_url: string;
  category: string;
  timeline_events: TimelineEvent[];
  is_featured: boolean;
  created_at: string;
  human_impact?: string;
  trending_updates?: string;
  how_it_works?: string;
  common_uses?: string;
}

export interface TimelineEvent {
  year: number;
  event: string;
  type?: 'historical' | 'current' | 'predicted';
}

export const TECH_ERAS = [
  'Industrial Revolution',
  'Space Age',
  'Digital Age'
] as const;

export type TechEra = typeof TECH_ERAS[number];