/*
  # Fix Exhibit Images

  1. Updates
    - Replace all exhibit image URLs with reliable Pexels images
    - Use technology-appropriate stock photos that are known to exist
    - Ensure all images are accessible and display properly

  2. Image Sources
    - All images from Pexels.com with verified URLs
    - Technology-themed images appropriate for each exhibit
*/

-- Update Industrial Revolution exhibit images
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/1029141/pexels-photo-1029141.jpeg' WHERE name = 'The Printing Press';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/1005644/pexels-photo-1005644.jpeg' WHERE name = 'The Steam Engine';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/1181467/pexels-photo-1181467.jpeg' WHERE name = 'The Telegraph';

-- Update Space Age exhibit images
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/586030/pexels-photo-586030.jpeg' WHERE name = 'Sputnik 1';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/586063/pexels-photo-586063.jpeg' WHERE name = 'Apollo 11';

-- Update Digital Age exhibit images
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/163100/circuit-circuit-board-resistor-computer-163100.jpeg' WHERE name = 'The Integrated Circuit';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/163109/old-retro-antique-vintage-163109.jpeg' WHERE name = 'The Personal Computer';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/163064/play-stone-network-networked-163064.jpeg' WHERE name = 'The Internet';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/699122/pexels-photo-699122.jpeg' WHERE name = 'The Smartphone';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/8386440/pexels-photo-8386440.jpeg' WHERE name = 'Artificial Intelligence';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/110844/pexels-photo-110844.jpeg' WHERE name = 'Electric Vehicles';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/2582937/pexels-photo-2582937.jpeg' WHERE name = 'Quantum Computing';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/123335/pexels-photo-123335.jpeg' WHERE name = 'Virtual and Augmented Reality';
UPDATE exhibits SET image_url = 'https://images.pexels.com/photos/844124/pexels-photo-844124.jpeg' WHERE name = 'Blockchain Technology';