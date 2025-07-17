/*
  # Add Future Predictions to Exhibit Timelines

  1. Updates
    - Add future predictions (2026-2035) to existing Digital Age exhibits
    - Include type indicators for historical, current, and predicted events
    - Provide realistic forecasts based on current technological trends

  2. Enhanced Timeline Events
    - Historical events (past milestones)
    - Current events (2024-2025)
    - Predicted events (2026-2035) with scientific basis
*/

-- Update Artificial Intelligence timeline with future predictions
UPDATE exhibits 
SET timeline_events = '[
  {"year": 1956, "event": "Dartmouth Conference coins AI term", "type": "historical"},
  {"year": 1997, "event": "Deep Blue defeats chess champion", "type": "historical"},
  {"year": 2012, "event": "Deep learning breakthrough in image recognition", "type": "historical"},
  {"year": 2022, "event": "ChatGPT demonstrates conversational AI", "type": "historical"},
  {"year": 2024, "event": "AI agents begin autonomous task completion", "type": "current"},
  {"year": 2025, "event": "Multimodal AI systems integrate vision, text, and audio", "type": "current"},
  {"year": 2027, "event": "AI tutors provide personalized education globally", "type": "predicted"},
  {"year": 2029, "event": "AI-designed drugs enter clinical trials", "type": "predicted"},
  {"year": 2032, "event": "General AI assistants manage complex workflows", "type": "predicted"},
  {"year": 2035, "event": "AI systems contribute to scientific discoveries independently", "type": "predicted"}
]'::jsonb
WHERE name = 'Artificial Intelligence';

-- Update Smartphones timeline with future predictions
UPDATE exhibits 
SET timeline_events = '[
  {"year": 1992, "event": "IBM Simon first smartphone prototype", "type": "historical"},
  {"year": 2007, "event": "Apple iPhone launched", "type": "historical"},
  {"year": 2008, "event": "App Store opens", "type": "historical"},
  {"year": 2010, "event": "1 billion smartphones sold globally", "type": "historical"},
  {"year": 2024, "event": "AI-powered computational photography becomes standard", "type": "current"},
  {"year": 2025, "event": "Satellite connectivity integrated in mainstream phones", "type": "current"},
  {"year": 2027, "event": "Holographic displays replace traditional screens", "type": "predicted"},
  {"year": 2029, "event": "Brain-computer interfaces enable thought-based control", "type": "predicted"},
  {"year": 2032, "event": "Phones become fully modular and self-repairing", "type": "predicted"},
  {"year": 2035, "event": "Ambient computing replaces traditional phone interfaces", "type": "predicted"}
]'::jsonb
WHERE name = 'The Smartphone';

-- Update Cloud Computing timeline with future predictions
UPDATE exhibits 
SET timeline_events = '[
  {"year": 2006, "event": "Amazon Web Services launches", "type": "historical"},
  {"year": 2008, "event": "Google App Engine introduced", "type": "historical"},
  {"year": 2010, "event": "Microsoft Azure released", "type": "historical"},
  {"year": 2020, "event": "Cloud adoption accelerates globally", "type": "historical"},
  {"year": 2024, "event": "Edge computing brings processing to IoT devices", "type": "current"},
  {"year": 2025, "event": "Quantum cloud services become commercially available", "type": "current"},
  {"year": 2027, "event": "Autonomous cloud systems self-optimize and heal", "type": "predicted"},
  {"year": 2030, "event": "Distributed computing spans Earth-Moon system", "type": "predicted"},
  {"year": 2033, "event": "Biological computing integrates with cloud infrastructure", "type": "predicted"},
  {"year": 2035, "event": "Universal computing fabric enables seamless global access", "type": "predicted"}
]'::jsonb
WHERE name = 'Cloud Computing';

-- Update Generative AI timeline with future predictions
UPDATE exhibits 
SET timeline_events = '[
  {"year": 2014, "event": "Generative Adversarial Networks (GANs) invented", "type": "historical"},
  {"year": 2017, "event": "Transformer architecture revolutionizes NLP", "type": "historical"},
  {"year": 2022, "event": "ChatGPT reaches 100M users in 2 months", "type": "historical"},
  {"year": 2023, "event": "GPT-4 demonstrates multimodal capabilities", "type": "historical"},
  {"year": 2024, "event": "AI video generation reaches photorealistic quality", "type": "current"},
  {"year": 2025, "event": "Real-time AI avatars enable immersive communication", "type": "current"},
  {"year": 2027, "event": "AI creates full-length movies from text prompts", "type": "predicted"},
  {"year": 2029, "event": "Personalized AI companions become mainstream", "type": "predicted"},
  {"year": 2032, "event": "AI generates interactive virtual worlds in real-time", "type": "predicted"},
  {"year": 2035, "event": "Creative AI collaborates as equal partners with humans", "type": "predicted"}
]'::jsonb
WHERE name = 'Generative AI and Large Language Models';

-- Update Electric Vehicles timeline with future predictions
UPDATE exhibits 
SET timeline_events = '[
  {"year": 2008, "event": "Tesla Roadster proves EV viability", "type": "historical"},
  {"year": 2012, "event": "Tesla Model S launches mass-market luxury EV", "type": "historical"},
  {"year": 2020, "event": "EV sales exceed 10 million globally", "type": "historical"},
  {"year": 2023, "event": "Tesla achieves full self-driving beta", "type": "historical"},
  {"year": 2024, "event": "Solid-state batteries enter commercial production", "type": "current"},
  {"year": 2025, "event": "Autonomous robotaxis launch in major cities", "type": "current"},
  {"year": 2027, "event": "EVs achieve 1000-mile range with 10-minute charging", "type": "predicted"},
  {"year": 2030, "event": "Fully autonomous vehicles dominate highways", "type": "predicted"},
  {"year": 2033, "event": "Flying electric vehicles begin commercial service", "type": "predicted"},
  {"year": 2035, "event": "Vehicle-to-grid networks stabilize renewable energy", "type": "predicted"}
]'::jsonb
WHERE name = 'Electric Vehicles and Autonomous Driving';

-- Update Quantum Computing timeline with future predictions
UPDATE exhibits 
SET timeline_events = '[
  {"year": 1994, "event": "Shor algorithm proves quantum advantage potential", "type": "historical"},
  {"year": 2019, "event": "Google achieves quantum supremacy", "type": "historical"},
  {"year": 2021, "event": "IBM unveils 127-qubit quantum processor", "type": "historical"},
  {"year": 2023, "event": "Quantum error correction milestones achieved", "type": "historical"},
  {"year": 2024, "event": "First commercial quantum advantage in optimization", "type": "current"},
  {"year": 2025, "event": "Quantum internet connects major research centers", "type": "current"},
  {"year": 2028, "event": "Quantum computers break current encryption standards", "type": "predicted"},
  {"year": 2030, "event": "Quantum simulation accelerates drug discovery", "type": "predicted"},
  {"year": 2033, "event": "Room-temperature quantum computers become practical", "type": "predicted"},
  {"year": 2035, "event": "Quantum-classical hybrid systems solve climate modeling", "type": "predicted"}
]'::jsonb
WHERE name = 'Quantum Computing';

-- Update Blockchain timeline with future predictions
UPDATE exhibits 
SET timeline_events = '[
  {"year": 2008, "event": "Bitcoin whitepaper published by Satoshi Nakamoto", "type": "historical"},
  {"year": 2015, "event": "Ethereum enables smart contracts", "type": "historical"},
  {"year": 2020, "event": "DeFi total value locked exceeds $1 billion", "type": "historical"},
  {"year": 2021, "event": "NFTs reach mainstream adoption", "type": "historical"},
  {"year": 2024, "event": "Central Bank Digital Currencies (CBDCs) launch globally", "type": "current"},
  {"year": 2025, "event": "Carbon credit trading moves entirely on-chain", "type": "current"},
  {"year": 2027, "event": "Blockchain-based digital identity becomes standard", "type": "predicted"},
  {"year": 2030, "event": "Decentralized autonomous organizations govern cities", "type": "predicted"},
  {"year": 2033, "event": "Quantum-resistant blockchain protocols deployed", "type": "predicted"},
  {"year": 2035, "event": "Global supply chains fully transparent via blockchain", "type": "predicted"}
]'::jsonb
WHERE name = 'Blockchain and Cryptocurrency';

-- Update VR/AR timeline with future predictions
UPDATE exhibits 
SET timeline_events = '[
  {"year": 2012, "event": "Oculus Rift Kickstarter launches VR revival", "type": "historical"},
  {"year": 2016, "event": "Pokemon GO demonstrates AR potential", "type": "historical"},
  {"year": 2020, "event": "VR adoption accelerates during pandemic", "type": "historical"},
  {"year": 2023, "event": "Apple Vision Pro redefines mixed reality", "type": "historical"},
  {"year": 2024, "event": "Lightweight AR glasses achieve all-day battery", "type": "current"},
  {"year": 2025, "event": "Haptic suits enable full-body VR immersion", "type": "current"},
  {"year": 2027, "event": "AR contact lenses enter consumer market", "type": "predicted"},
  {"year": 2029, "event": "Neural interfaces enable direct VR consciousness", "type": "predicted"},
  {"year": 2032, "event": "Photorealistic avatars indistinguishable from reality", "type": "predicted"},
  {"year": 2035, "event": "Persistent metaverse becomes primary social platform", "type": "predicted"}
]'::jsonb
WHERE name = 'Virtual and Augmented Reality';

-- Update 5G timeline with future predictions
UPDATE exhibits 
SET timeline_events = '[
  {"year": 2019, "event": "First commercial 5G networks launch", "type": "historical"},
  {"year": 2020, "event": "5G enables remote surgery demonstrations", "type": "historical"},
  {"year": 2022, "event": "5G coverage reaches 1 billion people globally", "type": "historical"},
  {"year": 2023, "event": "Private 5G networks transform manufacturing", "type": "historical"},
  {"year": 2024, "event": "5G-Advanced enhances IoT and edge computing", "type": "current"},
  {"year": 2025, "event": "Satellite-terrestrial 5G provides global coverage", "type": "current"},
  {"year": 2027, "event": "6G research achieves terahertz communication", "type": "predicted"},
  {"year": 2030, "event": "6G networks enable holographic telepresence", "type": "predicted"},
  {"year": 2033, "event": "Brain-computer interfaces integrate with 6G", "type": "predicted"},
  {"year": 2035, "event": "Ubiquitous connectivity creates ambient intelligence", "type": "predicted"}
]'::jsonb
WHERE name = '5G and Edge Computing';