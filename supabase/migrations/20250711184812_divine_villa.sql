/*
  # Update Digital Age exhibits to include developments through 2025

  1. Updates
    - Update existing Digital Age exhibits with recent developments
    - Add new cutting-edge exhibits for 2020s technologies
    - Extend timeline events to include recent milestones
    - Update descriptions to reflect current state of technology

  2. New Technologies Added
    - Generative AI and Large Language Models
    - Electric Vehicles and Autonomous Driving
    - Quantum Computing
    - Blockchain and Cryptocurrency
    - Virtual and Augmented Reality
    - 5G and Edge Computing
*/

-- Update existing Digital Age exhibits with recent developments
UPDATE exhibits SET 
  detailed_description = 'Artificial Intelligence has evolved from theoretical concepts in the 1950s to practical applications that power modern life. Machine learning algorithms now drive search engines, recommendation systems, voice assistants, and autonomous vehicles. Recent breakthroughs in deep learning, neural networks, and transformer architectures have enabled AI systems to recognize images, understand natural language, generate art, write code, and engage in human-like conversations. The 2020s marked the era of generative AI with systems like GPT, DALL-E, and ChatGPT demonstrating unprecedented capabilities in content creation, reasoning, and problem-solving across virtually every domain of human knowledge.',
  timeline_events = '[
    {"year": 1956, "event": "Dartmouth Conference coins AI term"},
    {"year": 1997, "event": "Deep Blue defeats chess champion"},
    {"year": 2012, "event": "Deep learning breakthrough in image recognition"},
    {"year": 2016, "event": "AlphaGo defeats world Go champion"},
    {"year": 2020, "event": "GPT-3 demonstrates large language model capabilities"},
    {"year": 2022, "event": "ChatGPT launches and reaches 100M users"},
    {"year": 2023, "event": "GPT-4 and multimodal AI systems released"},
    {"year": 2024, "event": "AI agents and reasoning models advance significantly"}
  ]'::jsonb
WHERE name = 'Artificial Intelligence';

UPDATE exhibits SET 
  detailed_description = 'The smartphone revolution, catalyzed by the iPhone''s introduction in 2007, put powerful computing and internet connectivity in the pockets of billions of people worldwide. These devices combined phone, computer, camera, GPS, and countless other functions into a single, intuitive interface. Modern smartphones feature advanced AI processors, multiple camera systems with computational photography, 5G connectivity, and support for augmented reality applications. The 2020s have seen smartphones become even more central to daily life, enabling mobile payments, health monitoring, remote work, and serving as the primary computing device for billions of users globally.',
  timeline_events = '[
    {"year": 1992, "event": "IBM Simon first smartphone prototype"},
    {"year": 2007, "event": "Apple iPhone launched"},
    {"year": 2008, "event": "App Store opens"},
    {"year": 2010, "event": "1 billion smartphones sold globally"},
    {"year": 2020, "event": "5G networks begin global rollout"},
    {"year": 2022, "event": "Foldable smartphones gain mainstream adoption"},
    {"year": 2024, "event": "AI-powered smartphone features become standard"}
  ]'::jsonb
WHERE name = 'The Smartphone';

UPDATE exhibits SET 
  detailed_description = 'Cloud computing emerged in the 2000s as a revolutionary approach to delivering computing services over the internet, eliminating the need for organizations to maintain their own physical servers and infrastructure. Pioneered by companies like Amazon Web Services, Google Cloud, and Microsoft Azure, cloud computing enables scalable, on-demand access to storage, processing power, and software applications. The 2020s have seen explosive growth in cloud adoption, accelerated by remote work, AI/ML workloads, and edge computing. Modern cloud platforms offer serverless computing, containerization, and AI-as-a-Service, making advanced technologies accessible to organizations of all sizes.',
  timeline_events = '[
    {"year": 2006, "event": "Amazon Web Services launches"},
    {"year": 2008, "event": "Google App Engine introduced"},
    {"year": 2010, "event": "Microsoft Azure released"},
    {"year": 2020, "event": "Cloud adoption accelerates globally due to pandemic"},
    {"year": 2022, "event": "Multi-cloud and hybrid cloud strategies become standard"},
    {"year": 2024, "event": "AI workloads drive massive cloud infrastructure expansion"}
  ]'::jsonb
WHERE name = 'Cloud Computing';

-- Add new cutting-edge Digital Age exhibits
INSERT INTO exhibits (name, era, short_description, detailed_description, image_url, category, timeline_events, is_featured) VALUES
(
  'Generative AI and Large Language Models',
  'Digital Age',
  'Revolutionary AI systems that can generate human-like text, images, code, and creative content on demand.',
  'Generative AI represents a paradigm shift in artificial intelligence, with large language models like GPT, Claude, and Gemini demonstrating unprecedented abilities to understand context, generate coherent text, write code, solve complex problems, and engage in nuanced conversations. These systems, trained on vast datasets and powered by transformer architectures, have democratized access to AI capabilities across industries. From content creation and software development to scientific research and education, generative AI is transforming how humans interact with technology and augmenting human creativity and productivity in ways previously thought impossible.',
  'https://images.pexels.com/photos/8386440/pexels-photo-8386440.jpeg',
  'Computing',
  '[
    {"year": 2017, "event": "Transformer architecture introduced"},
    {"year": 2018, "event": "GPT-1 demonstrates language generation"},
    {"year": 2020, "event": "GPT-3 shows emergent capabilities"},
    {"year": 2022, "event": "ChatGPT launches to public"},
    {"year": 2023, "event": "GPT-4 and multimodal AI released"},
    {"year": 2024, "event": "AI agents and reasoning models advance"},
    {"year": 2025, "event": "Generative AI becomes ubiquitous in daily life"}
  ]'::jsonb,
  false
),
(
  'Electric Vehicles and Autonomous Driving',
  'Digital Age',
  'Battery-powered vehicles and self-driving technology revolutionizing transportation and reducing carbon emissions.',
  'Electric vehicles have evolved from experimental prototypes to mainstream transportation, led by companies like Tesla, which proved that EVs could be desirable, high-performance vehicles. Modern EVs feature advanced battery technology, over-the-air software updates, and increasingly sophisticated autonomous driving capabilities. The integration of AI, computer vision, and sensor fusion has enabled vehicles to navigate complex environments with minimal human intervention. This transformation represents not just a shift in propulsion technology, but a complete reimagining of transportation as a service, with implications for urban planning, energy infrastructure, and environmental sustainability.',
  'https://images.pexels.com/photos/110844/pexels-photo-110844.jpeg',
  'Transportation',
  '[
    {"year": 2008, "event": "Tesla Roadster first highway-capable EV"},
    {"year": 2012, "event": "Tesla Model S launches"},
    {"year": 2014, "event": "Tesla Autopilot introduced"},
    {"year": 2020, "event": "EV sales begin exponential growth"},
    {"year": 2022, "event": "10 million EVs sold globally"},
    {"year": 2024, "event": "Full self-driving capabilities demonstrated"},
    {"year": 2025, "event": "EVs reach price parity with gas vehicles"}
  ]'::jsonb,
  false
),
(
  'Quantum Computing',
  'Digital Age',
  'Revolutionary computing systems that harness quantum mechanics to solve previously impossible problems.',
  'Quantum computing represents a fundamental leap beyond classical computing by utilizing quantum mechanical phenomena like superposition and entanglement to process information. Unlike classical bits that exist as either 0 or 1, quantum bits (qubits) can exist in multiple states simultaneously, enabling quantum computers to explore many solutions in parallel. Companies like IBM, Google, and IonQ have demonstrated quantum supremacy in specific tasks, while researchers work toward fault-tolerant quantum computers that could revolutionize cryptography, drug discovery, financial modeling, and artificial intelligence. Though still in early stages, quantum computing promises to solve complex optimization problems that are intractable for even the most powerful classical supercomputers.',
  'https://images.pexels.com/photos/8386434/pexels-photo-8386434.jpeg',
  'Computing',
  '[
    {"year": 1982, "event": "Richard Feynman proposes quantum computing"},
    {"year": 2019, "event": "Google claims quantum supremacy"},
    {"year": 2021, "event": "IBM unveils 127-qubit quantum processor"},
    {"year": 2023, "event": "Error-corrected quantum computing advances"},
    {"year": 2024, "event": "Quantum networking demonstrations"},
    {"year": 2025, "event": "Commercial quantum applications emerge"}
  ]'::jsonb,
  false
),
(
  'Blockchain and Cryptocurrency',
  'Digital Age',
  'Decentralized digital ledger technology enabling trustless transactions and programmable money.',
  'Blockchain technology, introduced with Bitcoin in 2009, created the first successful decentralized digital currency and sparked a revolution in how we think about money, contracts, and trust. This distributed ledger technology enables peer-to-peer transactions without intermediaries, using cryptographic proof instead of trust. Beyond cryptocurrency, blockchain has enabled smart contracts, decentralized finance (DeFi), non-fungible tokens (NFTs), and decentralized autonomous organizations (DAOs). While facing challenges around energy consumption and scalability, blockchain technology continues to evolve with more efficient consensus mechanisms and layer-2 solutions, promising to reshape finance, supply chains, digital identity, and governance systems.',
  'https://images.pexels.com/photos/730547/pexels-photo-730547.jpeg',
  'Finance',
  '[
    {"year": 2008, "event": "Bitcoin whitepaper published"},
    {"year": 2009, "event": "Bitcoin network launches"},
    {"year": 2015, "event": "Ethereum enables smart contracts"},
    {"year": 2020, "event": "DeFi ecosystem explodes"},
    {"year": 2021, "event": "NFTs gain mainstream attention"},
    {"year": 2022, "event": "Proof-of-stake consensus adopted"},
    {"year": 2024, "event": "Central bank digital currencies pilot"},
    {"year": 2025, "event": "Blockchain integration in traditional finance"}
  ]'::jsonb,
  false
),
(
  'Virtual and Augmented Reality',
  'Digital Age',
  'Immersive technologies that blend digital content with the physical world or create entirely virtual environments.',
  'Virtual and Augmented Reality technologies have matured from science fiction concepts to practical applications transforming entertainment, education, healthcare, and remote collaboration. Modern VR headsets like the Meta Quest and Apple Vision Pro offer high-resolution displays, precise motion tracking, and intuitive hand controls, creating convincing virtual environments for gaming, training, and social interaction. AR technology overlays digital information onto the real world through smartphones and specialized glasses, enabling applications from navigation and shopping to industrial maintenance and medical procedures. The convergence toward mixed reality promises to seamlessly blend physical and digital experiences, fundamentally changing how we work, learn, and interact with information.',
  'https://images.pexels.com/photos/123335/pexels-photo-123335.jpeg',
  'Entertainment',
  '[
    {"year": 2012, "event": "Oculus Rift Kickstarter campaign"},
    {"year": 2016, "event": "Pokemon GO popularizes mobile AR"},
    {"year": 2020, "event": "VR adoption accelerates during pandemic"},
    {"year": 2022, "event": "Meta Quest 2 reaches mainstream adoption"},
    {"year": 2023, "event": "Apple Vision Pro announced"},
    {"year": 2024, "event": "Mixed reality applications expand"},
    {"year": 2025, "event": "AR glasses approach consumer readiness"}
  ]'::jsonb,
  false
),
(
  '5G and Edge Computing',
  'Digital Age',
  'Ultra-fast wireless networks and distributed computing bringing processing power closer to users.',
  'Fifth-generation wireless technology (5G) represents a massive leap in mobile connectivity, offering speeds up to 100 times faster than 4G, ultra-low latency, and the ability to connect millions of devices per square kilometer. Combined with edge computing, which processes data closer to where it''s generated rather than in distant data centers, 5G enables real-time applications like autonomous vehicles, remote surgery, augmented reality, and industrial automation. This infrastructure transformation is enabling the Internet of Things (IoT) to reach its full potential, supporting smart cities, connected factories, and immersive experiences that require instantaneous response times.',
  'https://images.pexels.com/photos/4792728/pexels-photo-4792728.jpeg',
  'Communication',
  '[
    {"year": 2018, "event": "First 5G networks deployed"},
    {"year": 2020, "event": "5G coverage expands globally"},
    {"year": 2021, "event": "Edge computing infrastructure grows"},
    {"year": 2022, "event": "5G enables new IoT applications"},
    {"year": 2023, "event": "Private 5G networks for enterprises"},
    {"year": 2024, "event": "5G-Advanced features deployed"},
    {"year": 2025, "event": "6G research and development begins"}
  ]'::jsonb,
  false
);