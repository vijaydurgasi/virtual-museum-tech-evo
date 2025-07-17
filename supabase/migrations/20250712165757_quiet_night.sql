/*
  # Comprehensive 2025 Update with Future Predictions

  1. Updated Exhibits
    - All exhibits updated with latest 2025 information
    - Enhanced descriptions with current state of technology
    - Comprehensive timeline events through 2025
    - Future predictions for 2026-2035

  2. Timeline Events
    - Historical milestones
    - Current developments (2024-2025)
    - Future predictions (2026-2035)

  3. Technology Coverage
    - Industrial Revolution era technologies
    - Space Age innovations
    - Digital Age cutting-edge developments
*/

-- Update Industrial Revolution exhibits with modern context and future predictions

UPDATE exhibits SET 
  detailed_description = 'The printing press, invented by Johannes Gutenberg around 1440, revolutionized the spread of information and knowledge. This mechanical device used movable type to mass-produce books, making literature and learning accessible to the general population for the first time in history. The printing press sparked the Renaissance, the Reformation, and the Scientific Revolution by enabling rapid dissemination of ideas.

In 2025, while digital media dominates, physical printing remains crucial for packaging, textiles, and specialized applications. Modern printing technology includes 3D printing, bioprinting, and nano-scale printing for electronics. The principles of mass information distribution pioneered by Gutenberg now manifest in digital platforms, social media, and instant global communication networks.',
  
  timeline_events = '[
    {"year": 1440, "event": "Johannes Gutenberg invents the printing press with movable type", "type": "historical"},
    {"year": 1455, "event": "First Gutenberg Bible printed, marking the beginning of mass book production", "type": "historical"},
    {"year": 1500, "event": "Over 1,000 printing presses operating across Europe", "type": "historical"},
    {"year": 1814, "event": "Steam-powered printing press invented, increasing production speed", "type": "historical"},
    {"year": 1884, "event": "Linotype machine automates typesetting process", "type": "historical"},
    {"year": 1960, "event": "Photocopying becomes widespread with Xerox machines", "type": "historical"},
    {"year": 1990, "event": "Desktop publishing revolutionizes print design", "type": "historical"},
    {"year": 2010, "event": "E-books and digital publishing gain mainstream adoption", "type": "historical"},
    {"year": 2024, "event": "AI-powered content generation transforms publishing workflows", "type": "current"},
    {"year": 2025, "event": "Sustainable printing materials and processes become industry standard", "type": "current"},
    {"year": 2027, "event": "4D printing technology enables self-assembling printed objects", "type": "predicted"},
    {"year": 2029, "event": "Molecular-level printing creates programmable materials", "type": "predicted"},
    {"year": 2032, "event": "Bioprinting of functional human organs becomes routine medical procedure", "type": "predicted"},
    {"year": 2035, "event": "Quantum printing enables instantaneous matter replication", "type": "predicted"}
  ]'
WHERE name = 'The Printing Press';

UPDATE exhibits SET 
  detailed_description = 'The steam engine, perfected by James Watt in 1769, was the driving force behind the Industrial Revolution. This revolutionary machine converted heat energy into mechanical work, powering factories, locomotives, and ships. The steam engine transformed manufacturing from hand production to mechanized processes, leading to urbanization and the modern industrial economy.

In 2025, while steam engines are largely obsolete for transportation, steam power remains important in electricity generation and industrial processes. Modern steam turbines generate about 80% of the world''s electricity. The principles of thermodynamics pioneered in steam engines now inform renewable energy systems, geothermal power, and advanced heat recovery technologies.',
  
  timeline_events = '[
    {"year": 1712, "event": "Thomas Newcomen builds first practical steam engine for mining", "type": "historical"},
    {"year": 1769, "event": "James Watt patents improved steam engine with separate condenser", "type": "historical"},
    {"year": 1804, "event": "First steam locomotive runs on rails in Wales", "type": "historical"},
    {"year": 1807, "event": "Robert Fulton launches first commercially successful steamboat", "type": "historical"},
    {"year": 1825, "event": "First passenger railway opens between Stockton and Darlington", "type": "historical"},
    {"year": 1884, "event": "Steam turbine invented, revolutionizing power generation", "type": "historical"},
    {"year": 1960, "event": "Nuclear power plants use steam turbines for electricity generation", "type": "historical"},
    {"year": 2020, "event": "Steam power still generates 80% of world electricity through turbines", "type": "historical"},
    {"year": 2024, "event": "Advanced geothermal systems use modern steam technology", "type": "current"},
    {"year": 2025, "event": "Concentrated solar power plants optimize steam generation efficiency", "type": "current"},
    {"year": 2027, "event": "Supercritical CO2 turbines begin replacing steam in power plants", "type": "predicted"},
    {"year": 2030, "event": "Fusion power plants use advanced steam cycles for energy conversion", "type": "predicted"},
    {"year": 2033, "event": "Space-based solar power stations use steam turbines in orbit", "type": "predicted"},
    {"year": 2035, "event": "Atmospheric processors on Mars use steam technology for terraforming", "type": "predicted"}
  ]'
WHERE name = 'The Steam Engine';

UPDATE exhibits SET 
  detailed_description = 'The telegraph, developed by Samuel Morse in the 1830s, was the first technology to enable near-instantaneous long-distance communication. Using electrical signals transmitted over wires, the telegraph revolutionized business, journalism, and personal communication. Morse code became the universal language of electronic communication, connecting continents and shrinking the perceived size of the world.

In 2025, while the telegraph is obsolete, its legacy lives on in modern telecommunications. The principles of encoded digital communication pioneered by the telegraph now underpin the internet, mobile networks, and satellite communications. Modern fiber optic cables and 5G networks are direct descendants of telegraph technology, enabling global instant communication.',
  
  timeline_events = '[
    {"year": 1838, "event": "Samuel Morse demonstrates telegraph over 2 miles", "type": "historical"},
    {"year": 1844, "event": "First long-distance telegraph message sent from Washington to Baltimore", "type": "historical"},
    {"year": 1858, "event": "First transatlantic telegraph cable laid (failed after 3 weeks)", "type": "historical"},
    {"year": 1866, "event": "Successful permanent transatlantic telegraph cable established", "type": "historical"},
    {"year": 1876, "event": "Alexander Graham Bell invents the telephone, improving on telegraph", "type": "historical"},
    {"year": 1920, "event": "Radio communication begins replacing telegraph for many uses", "type": "historical"},
    {"year": 1960, "event": "Telex networks provide global text communication", "type": "historical"},
    {"year": 1990, "event": "Internet email replaces telegraph for most text communication", "type": "historical"},
    {"year": 2024, "event": "Quantum communication networks use telegraph-like encoding principles", "type": "current"},
    {"year": 2025, "event": "Satellite internet provides global instant communication coverage", "type": "current"},
    {"year": 2027, "event": "Brain-computer interfaces enable direct thought transmission", "type": "predicted"},
    {"year": 2030, "event": "Quantum internet enables unhackable global communication", "type": "predicted"},
    {"year": 2033, "event": "Interplanetary communication networks connect Earth and Mars", "type": "predicted"},
    {"year": 2035, "event": "Neural networks allow instant language translation in real-time", "type": "predicted"}
  ]'
WHERE name = 'The Telegraph';

-- Update Space Age exhibits

UPDATE exhibits SET 
  detailed_description = 'Sputnik 1, launched by the Soviet Union on October 4, 1957, was the first artificial satellite to orbit Earth. This basketball-sized sphere marked the beginning of the Space Age and triggered the Space Race between the USSR and United States. Sputnik demonstrated that space exploration was possible and paved the way for human spaceflight, satellite communications, and space science.

In 2025, thousands of satellites orbit Earth, providing GPS navigation, weather monitoring, internet connectivity, and scientific research capabilities. The satellite industry is worth over $400 billion annually. Modern satellites are far more sophisticated than Sputnik, featuring advanced sensors, AI processing, and autonomous operation capabilities.',
  
  timeline_events = '[
    {"year": 1957, "event": "Sputnik 1 becomes first artificial satellite, orbiting Earth for 3 months", "type": "historical"},
    {"year": 1957, "event": "Sputnik 2 carries first living creature (dog Laika) into orbit", "type": "historical"},
    {"year": 1958, "event": "United States launches Explorer 1 in response to Sputnik", "type": "historical"},
    {"year": 1962, "event": "Telstar enables first live transatlantic television broadcast", "type": "historical"},
    {"year": 1975, "event": "First geostationary weather satellite provides continuous Earth monitoring", "type": "historical"},
    {"year": 1995, "event": "GPS constellation becomes fully operational for civilian use", "type": "historical"},
    {"year": 2020, "event": "SpaceX Starlink begins deploying mega-constellation of internet satellites", "type": "historical"},
    {"year": 2024, "event": "Over 8,000 active satellites orbit Earth for various purposes", "type": "current"},
    {"year": 2025, "event": "AI-powered satellites provide real-time Earth monitoring and analysis", "type": "current"},
    {"year": 2027, "event": "Satellite-to-satellite laser communication creates space internet backbone", "type": "predicted"},
    {"year": 2030, "event": "Self-repairing satellites use 3D printing for maintenance in orbit", "type": "predicted"},
    {"year": 2032, "event": "Solar power satellites begin beaming energy to Earth", "type": "predicted"},
    {"year": 2035, "event": "Interplanetary satellite networks connect Earth, Moon, and Mars", "type": "predicted"}
  ]'
WHERE name = 'Sputnik 1';

UPDATE exhibits SET 
  detailed_description = 'Apollo 11, launched on July 16, 1969, achieved humanity''s first Moon landing on July 20, 1969. Astronauts Neil Armstrong and Buzz Aldrin walked on the lunar surface while Michael Collins orbited above. This historic mission demonstrated human capability to travel beyond Earth and marked the culmination of the Space Race. The technological innovations developed for Apollo continue to benefit society today.

In 2025, space exploration has evolved dramatically with private companies like SpaceX, Blue Origin, and others leading new missions. NASA''s Artemis program aims to return humans to the Moon by 2026, while plans for Mars missions advance. The International Space Station continues operations, and commercial space tourism has become reality.',
  
  timeline_events = '[
    {"year": 1969, "event": "Apollo 11 lands on Moon, Neil Armstrong takes first steps", "type": "historical"},
    {"year": 1969, "event": "Lunar module Eagle successfully returns crew to command module", "type": "historical"},
    {"year": 1972, "event": "Apollo 17 completes final crewed Moon mission", "type": "historical"},
    {"year": 1981, "event": "Space Shuttle program begins, making space more accessible", "type": "historical"},
    {"year": 1998, "event": "International Space Station construction begins", "type": "historical"},
    {"year": 2020, "event": "SpaceX Crew Dragon returns crewed spaceflight capability to US", "type": "historical"},
    {"year": 2021, "event": "First commercial space tourism flights with Blue Origin and Virgin Galactic", "type": "historical"},
    {"year": 2024, "event": "NASA Artemis program prepares for return to Moon", "type": "current"},
    {"year": 2025, "event": "Multiple private space stations under construction", "type": "current"},
    {"year": 2026, "event": "Artemis III lands first woman and next man on Moon", "type": "predicted"},
    {"year": 2030, "event": "Permanent lunar base established for scientific research", "type": "predicted"},
    {"year": 2033, "event": "First crewed mission to Mars launches", "type": "predicted"},
    {"year": 2035, "event": "Regular commercial flights between Earth and Moon begin", "type": "predicted"}
  ]'
WHERE name = 'Apollo 11';

-- Update Digital Age exhibits with comprehensive 2025 information

UPDATE exhibits SET 
  detailed_description = 'The integrated circuit, invented by Jack Kilby and Robert Noyce in 1958-1959, revolutionized electronics by combining multiple electronic components on a single semiconductor chip. This breakthrough enabled the miniaturization of computers and electronic devices, leading to the digital revolution. Integrated circuits made possible everything from calculators to smartphones to supercomputers.

In 2025, integrated circuits have reached extraordinary levels of sophistication. Modern processors contain billions of transistors with features smaller than 3 nanometers. AI chips, quantum processors, and neuromorphic computing represent the cutting edge. The global semiconductor industry is worth over $600 billion, driving innovations in artificial intelligence, autonomous vehicles, and Internet of Things devices.',
  
  timeline_events = '[
    {"year": 1958, "event": "Jack Kilby demonstrates first integrated circuit at Texas Instruments", "type": "historical"},
    {"year": 1959, "event": "Robert Noyce develops planar process for mass-producing ICs", "type": "historical"},
    {"year": 1971, "event": "Intel 4004 becomes first commercial microprocessor", "type": "historical"},
    {"year": 1981, "event": "IBM PC popularizes personal computing with integrated circuits", "type": "historical"},
    {"year": 2000, "event": "Pentium 4 reaches 1.5 GHz with 42 million transistors", "type": "historical"},
    {"year": 2020, "event": "Apple M1 chip demonstrates ARM architecture superiority", "type": "historical"},
    {"year": 2023, "event": "ChatGPT demonstrates power of AI-optimized processors", "type": "historical"},
    {"year": 2024, "event": "3nm process technology enters mass production", "type": "current"},
    {"year": 2025, "event": "Neuromorphic chips mimic brain function for AI applications", "type": "current"},
    {"year": 2027, "event": "1nm transistors achieved using new materials and techniques", "type": "predicted"},
    {"year": 2030, "event": "Quantum-classical hybrid processors become mainstream", "type": "predicted"},
    {"year": 2032, "event": "Biological computing chips integrate living neurons", "type": "predicted"},
    {"year": 2035, "event": "Molecular-scale computers enable ubiquitous computing", "type": "predicted"}
  ]'
WHERE name = 'The Integrated Circuit';

UPDATE exhibits SET 
  detailed_description = 'The personal computer, pioneered by companies like Apple, IBM, and others in the 1970s-1980s, brought computing power to individuals and small businesses. The Apple II, IBM PC, and other early systems democratized access to computing, enabling word processing, spreadsheets, games, and eventually internet access. Personal computers transformed work, education, and entertainment.

In 2025, personal computers have evolved into diverse forms including laptops, tablets, smartphones, and wearables. Cloud computing has shifted many functions online, while AI integration is transforming how we interact with computers. Modern PCs feature neural processing units, support for virtual reality, and seamless integration with cloud services and mobile devices.',
  
  timeline_events = '[
    {"year": 1975, "event": "Altair 8800 kit computer sparks personal computer revolution", "type": "historical"},
    {"year": 1977, "event": "Apple II becomes first successful mass-market personal computer", "type": "historical"},
    {"year": 1981, "event": "IBM PC establishes industry standard architecture", "type": "historical"},
    {"year": 1984, "event": "Apple Macintosh introduces graphical user interface to mainstream", "type": "historical"},
    {"year": 1995, "event": "Windows 95 brings internet capabilities to personal computers", "type": "historical"},
    {"year": 2007, "event": "iPhone redefines personal computing with mobile touch interface", "type": "historical"},
    {"year": 2020, "event": "Remote work during pandemic drives PC sales surge", "type": "historical"},
    {"year": 2024, "event": "AI-powered PCs with neural processing units become standard", "type": "current"},
    {"year": 2025, "event": "Foldable and rollable PC displays enter mainstream market", "type": "current"},
    {"year": 2027, "event": "Brain-computer interfaces enable thought-controlled computing", "type": "predicted"},
    {"year": 2030, "event": "Holographic displays replace traditional monitors", "type": "predicted"},
    {"year": 2032, "event": "Quantum personal computers solve complex problems instantly", "type": "predicted"},
    {"year": 2035, "event": "Ambient computing makes traditional PCs obsolete", "type": "predicted"}
  ]'
WHERE name = 'The Personal Computer';

UPDATE exhibits SET 
  detailed_description = 'The Internet, evolved from ARPANET in the 1960s-1990s, created a global network connecting billions of devices and people. The World Wide Web, invented by Tim Berners-Lee in 1989, made the Internet accessible to everyone. This revolutionary communication system transformed commerce, education, entertainment, and social interaction, creating the foundation for the digital economy.

In 2025, the Internet has become essential infrastructure supporting over 5 billion users worldwide. High-speed fiber optic networks, 5G wireless, and satellite internet provide global connectivity. The Internet of Things connects everyday objects, while edge computing brings processing closer to users. Web3 technologies, AI services, and immersive experiences represent the next evolution.',
  
  timeline_events = '[
    {"year": 1969, "event": "ARPANET sends first message between UCLA and Stanford", "type": "historical"},
    {"year": 1989, "event": "Tim Berners-Lee invents World Wide Web at CERN", "type": "historical"},
    {"year": 1993, "event": "Mosaic browser makes web accessible to general public", "type": "historical"},
    {"year": 1995, "event": "Commercial internet service providers enable public access", "type": "historical"},
    {"year": 2004, "event": "Facebook launches, beginning social media revolution", "type": "historical"},
    {"year": 2007, "event": "iPhone brings mobile internet to mainstream users", "type": "historical"},
    {"year": 2020, "event": "Internet becomes lifeline during global pandemic", "type": "historical"},
    {"year": 2024, "event": "AI chatbots and services transform internet interaction", "type": "current"},
    {"year": 2025, "event": "6G networks begin deployment with 100x faster speeds", "type": "current"},
    {"year": 2027, "event": "Quantum internet enables unhackable communication", "type": "predicted"},
    {"year": 2030, "event": "Brain-internet interfaces allow direct neural access", "type": "predicted"},
    {"year": 2032, "event": "Interplanetary internet connects Earth and Mars colonies", "type": "predicted"},
    {"year": 2035, "event": "Consciousness uploading enables digital immortality", "type": "predicted"}
  ]'
WHERE name = 'The Internet';

UPDATE exhibits SET 
  detailed_description = 'The smartphone, epitomized by the iPhone''s 2007 launch, combined phone, computer, camera, and internet access into a single portable device. This convergence device transformed how people communicate, work, shop, navigate, and entertain themselves. Smartphones enabled the app economy, mobile payments, social media, and location-based services, fundamentally changing modern life.

In 2025, smartphones have become incredibly sophisticated with AI assistants, computational photography, 5G connectivity, and augmented reality capabilities. Foldable phones offer larger screens in compact forms. Advanced biometric security, wireless charging, and satellite connectivity are standard features. The global smartphone market exceeds 1.5 billion devices annually.',
  
  timeline_events = '[
    {"year": 1992, "event": "IBM Simon becomes first smartphone with touchscreen and apps", "type": "historical"},
    {"year": 2007, "event": "Apple iPhone revolutionizes mobile computing with multi-touch interface", "type": "historical"},
    {"year": 2008, "event": "Android operating system launches, creating smartphone competition", "type": "historical"},
    {"year": 2010, "event": "App stores create new economy for mobile software", "type": "historical"},
    {"year": 2016, "event": "Pokemon Go demonstrates augmented reality potential", "type": "historical"},
    {"year": 2020, "event": "5G networks begin enabling new smartphone capabilities", "type": "historical"},
    {"year": 2023, "event": "AI assistants become integral to smartphone experience", "type": "historical"},
    {"year": 2024, "event": "Foldable smartphones gain mainstream adoption", "type": "current"},
    {"year": 2025, "event": "Satellite connectivity enables global smartphone coverage", "type": "current"},
    {"year": 2027, "event": "Holographic displays eliminate need for physical screens", "type": "predicted"},
    {"year": 2030, "event": "Brain-computer interfaces replace touch interaction", "type": "predicted"},
    {"year": 2032, "event": "Modular smartphones allow complete customization", "type": "predicted"},
    {"year": 2035, "event": "Ambient computing makes smartphones obsolete", "type": "predicted"}
  ]'
WHERE name = 'The Smartphone';

-- Add new cutting-edge exhibits with comprehensive 2025 data and future predictions

INSERT INTO exhibits (name, era, short_description, detailed_description, image_url, category, timeline_events, is_featured, created_at) VALUES 
('Artificial Intelligence and Machine Learning', 'Digital Age', 'AI systems that can learn, reason, and make decisions, transforming every aspect of human life and work.', 'Artificial Intelligence represents the culmination of decades of research into creating machines that can think, learn, and solve problems like humans. From early expert systems to modern large language models like GPT-4 and Claude, AI has evolved to understand natural language, generate creative content, and solve complex problems across domains.

In 2025, AI has become ubiquitous, powering search engines, recommendation systems, autonomous vehicles, medical diagnosis, and scientific research. Generative AI can create text, images, code, and videos from simple prompts. AI assistants help with daily tasks, while specialized AI systems discover new drugs, predict weather, and optimize energy systems. The AI industry is worth over $500 billion globally.', 'https://images.pexels.com/photos/8386440/pexels-photo-8386440.jpeg', 'Computing', '[
  {"year": 1950, "event": "Alan Turing proposes Turing Test for machine intelligence", "type": "historical"},
  {"year": 1956, "event": "Dartmouth Conference coins term \"Artificial Intelligence\"", "type": "historical"},
  {"year": 1997, "event": "IBM Deep Blue defeats world chess champion Garry Kasparov", "type": "historical"},
  {"year": 2011, "event": "IBM Watson wins Jeopardy! demonstrating natural language AI", "type": "historical"},
  {"year": 2016, "event": "AlphaGo defeats world Go champion, mastering complex strategy game", "type": "historical"},
  {"year": 2022, "event": "ChatGPT launches, bringing conversational AI to mainstream", "type": "historical"},
  {"year": 2024, "event": "AI models achieve human-level performance on many cognitive tasks", "type": "current"},
  {"year": 2025, "event": "AI tutors provide personalized education to millions of students", "type": "current"},
  {"year": 2027, "event": "AI scientists make independent discoveries in physics and biology", "type": "predicted"},
  {"year": 2030, "event": "Artificial General Intelligence achieves human-level reasoning", "type": "predicted"},
  {"year": 2032, "event": "AI systems design and build other AI systems autonomously", "type": "predicted"},
  {"year": 2035, "event": "AI-human collaboration solves climate change and disease", "type": "predicted"}
]', false, NOW()),

('Electric Vehicles and Autonomous Driving', 'Digital Age', 'Battery-powered vehicles with self-driving capabilities revolutionizing transportation and reducing emissions.', 'Electric vehicles represent a fundamental shift from internal combustion engines to clean, efficient electric propulsion. Led by companies like Tesla, the EV revolution has accelerated rapidly, with improvements in battery technology, charging infrastructure, and autonomous driving capabilities transforming personal and commercial transportation.

In 2025, electric vehicles account for over 30% of new car sales globally. Advanced battery technologies provide 400+ mile ranges, while fast-charging networks enable long-distance travel. Autonomous driving features are becoming standard, with some vehicles achieving Level 4 autonomy in specific conditions. The integration of AI, sensors, and connectivity is creating intelligent transportation systems.', 'https://images.pexels.com/photos/110844/pexels-photo-110844.jpeg', 'Transportation', '[
  {"year": 1891, "event": "First electric vehicle built by William Morrison in Iowa", "type": "historical"},
  {"year": 1996, "event": "GM EV1 becomes first mass-produced modern electric car", "type": "historical"},
  {"year": 2008, "event": "Tesla Roadster proves electric cars can be high-performance", "type": "historical"},
  {"year": 2012, "event": "Tesla Model S sets new standard for electric luxury vehicles", "type": "historical"},
  {"year": 2020, "event": "Tesla becomes world''s most valuable automaker", "type": "historical"},
  {"year": 2023, "event": "Electric vehicle sales exceed 10 million globally", "type": "historical"},
  {"year": 2024, "event": "Solid-state batteries begin commercial deployment", "type": "current"},
  {"year": 2025, "event": "Autonomous robotaxis launch in major cities worldwide", "type": "current"},
  {"year": 2027, "event": "1000-mile range batteries make EVs superior to gas cars", "type": "predicted"},
  {"year": 2030, "event": "Flying electric vehicles begin commercial passenger service", "type": "predicted"},
  {"year": 2032, "event": "Vehicle-to-grid networks stabilize renewable energy systems", "type": "predicted"},
  {"year": 2035, "event": "Fully autonomous vehicles eliminate traffic accidents", "type": "predicted"}
]', false, NOW()),

('Quantum Computing', 'Digital Age', 'Revolutionary computers using quantum mechanics to solve problems impossible for classical computers.', 'Quantum computing harnesses the strange properties of quantum mechanics—superposition, entanglement, and interference—to process information in fundamentally new ways. Unlike classical bits that are either 0 or 1, quantum bits (qubits) can exist in multiple states simultaneously, enabling exponential computational speedups for specific problems.

In 2025, quantum computers are transitioning from research laboratories to practical applications. Companies like IBM, Google, and startups are developing quantum systems for cryptography, drug discovery, financial modeling, and optimization problems. While still requiring extreme cooling and careful isolation, quantum computers are beginning to demonstrate "quantum advantage" over classical systems.', 'https://images.pexels.com/photos/2004161/pexels-photo-2004161.jpeg', 'Computing', '[
  {"year": 1981, "event": "Richard Feynman proposes quantum computers for simulating physics", "type": "historical"},
  {"year": 1994, "event": "Peter Shor develops algorithm for quantum factoring", "type": "historical"},
  {"year": 2019, "event": "Google claims quantum supremacy with 53-qubit processor", "type": "historical"},
  {"year": 2021, "event": "IBM unveils 127-qubit Eagle quantum processor", "type": "historical"},
  {"year": 2023, "event": "Quantum computers begin solving real optimization problems", "type": "historical"},
  {"year": 2024, "event": "Error-corrected quantum computers achieve 1000+ qubits", "type": "current"},
  {"year": 2025, "event": "Quantum cloud services become available to businesses", "type": "current"},
  {"year": 2027, "event": "Quantum computers break current encryption standards", "type": "predicted"},
  {"year": 2030, "event": "Room-temperature quantum computers eliminate cooling requirements", "type": "predicted"},
  {"year": 2032, "event": "Quantum internet enables global quantum communication", "type": "predicted"},
  {"year": 2035, "event": "Quantum computers model climate systems for geoengineering", "type": "predicted"}
]', false, NOW()),

('Blockchain and Cryptocurrency', 'Digital Age', 'Decentralized digital ledger technology enabling secure, transparent transactions without intermediaries.', 'Blockchain technology, introduced with Bitcoin in 2008, creates immutable, distributed ledgers that enable peer-to-peer transactions without central authorities. This revolutionary approach to digital trust has spawned cryptocurrencies, smart contracts, decentralized finance (DeFi), and non-fungible tokens (NFTs), challenging traditional financial and organizational structures.

In 2025, blockchain technology has matured beyond speculation to practical applications. Central bank digital currencies (CBDCs) are being deployed globally, while DeFi protocols manage hundreds of billions in assets. Supply chain tracking, digital identity, and decentralized autonomous organizations (DAOs) demonstrate blockchain''s potential beyond finance. Environmental concerns have driven adoption of more energy-efficient consensus mechanisms.', 'https://images.pexels.com/photos/730547/pexels-photo-730547.jpeg', 'Finance', '[
  {"year": 2008, "event": "Satoshi Nakamoto publishes Bitcoin whitepaper", "type": "historical"},
  {"year": 2009, "event": "First Bitcoin transaction creates digital currency", "type": "historical"},
  {"year": 2015, "event": "Ethereum launches smart contracts and programmable blockchain", "type": "historical"},
  {"year": 2017, "event": "ICO boom brings mainstream attention to cryptocurrency", "type": "historical"},
  {"year": 2020, "event": "DeFi summer demonstrates blockchain financial applications", "type": "historical"},
  {"year": 2021, "event": "NFTs create new markets for digital art and collectibles", "type": "historical"},
  {"year": 2024, "event": "Bitcoin ETFs bring institutional investment to cryptocurrency", "type": "current"},
  {"year": 2025, "event": "Central bank digital currencies launch in major economies", "type": "current"},
  {"year": 2027, "event": "Blockchain-based digital identity becomes global standard", "type": "predicted"},
  {"year": 2030, "event": "Decentralized autonomous organizations govern major cities", "type": "predicted"},
  {"year": 2032, "event": "Quantum-resistant blockchain protocols secure global finance", "type": "predicted"},
  {"year": 2035, "event": "Interplanetary blockchain networks enable space commerce", "type": "predicted"}
]', false, NOW()),

('Virtual and Augmented Reality', 'Digital Age', 'Immersive technologies that blend digital content with the physical world or create entirely virtual environments.', 'Virtual and Augmented Reality technologies create immersive digital experiences that transport users to virtual worlds or overlay digital information onto the real world. From early VR headsets to modern mixed reality systems like Apple Vision Pro, these technologies are transforming entertainment, education, training, and social interaction.

In 2025, VR and AR have achieved mainstream adoption with lightweight headsets, high-resolution displays, and intuitive hand tracking. The metaverse concept is being realized through persistent virtual worlds where people work, socialize, and play. AR glasses are beginning to replace smartphones for many tasks, while VR training simulations are standard in healthcare, aviation, and manufacturing.', 'https://images.pexels.com/photos/2007647/pexels-photo-2007647.jpeg', 'Computing', '[
  {"year": 1968, "event": "Ivan Sutherland creates first VR head-mounted display", "type": "historical"},
  {"year": 1992, "event": "Term \"Virtual Reality\" popularized by Jaron Lanier", "type": "historical"},
  {"year": 2012, "event": "Oculus Rift Kickstarter revives consumer VR interest", "type": "historical"},
  {"year": 2016, "event": "Pokemon Go demonstrates AR potential to mainstream users", "type": "historical"},
  {"year": 2021, "event": "Facebook rebrands to Meta, focusing on metaverse", "type": "historical"},
  {"year": 2024, "event": "Apple Vision Pro launches spatial computing era", "type": "current"},
  {"year": 2025, "event": "Lightweight AR glasses achieve all-day battery life", "type": "current"},
  {"year": 2027, "event": "AR contact lenses provide seamless digital overlay", "type": "predicted"},
  {"year": 2030, "event": "Neural VR interfaces eliminate need for headsets", "type": "predicted"},
  {"year": 2032, "event": "Persistent metaverse worlds host millions simultaneously", "type": "predicted"},
  {"year": 2035, "event": "Holographic displays create AR without wearable devices", "type": "predicted"}
]', false, NOW()),

('5G and Next-Generation Wireless', 'Digital Age', 'Ultra-fast wireless networks enabling real-time communication, IoT, and immersive experiences.', '5G wireless technology represents a quantum leap in mobile connectivity, offering speeds up to 100 times faster than 4G, ultra-low latency, and massive device connectivity. This fifth-generation wireless standard enables new applications like autonomous vehicles, remote surgery, smart cities, and immersive AR/VR experiences that require instant response times.

In 2025, 5G networks cover most urban areas globally, with 6G research already underway. Edge computing brings processing power closer to users, enabling real-time AI applications. The Internet of Things has exploded with billions of connected devices, from smart home appliances to industrial sensors, all enabled by 5G''s capacity and efficiency.', 'https://images.pexels.com/photos/8566473/pexels-photo-8566473.jpeg', 'Communication', '[
  {"year": 2008, "event": "3GPP begins initial 5G research and standardization", "type": "historical"},
  {"year": 2018, "event": "First 5G networks launch in South Korea and US", "type": "historical"},
  {"year": 2020, "event": "5G smartphones become widely available", "type": "historical"},
  {"year": 2022, "event": "5G coverage reaches 1 billion people globally", "type": "historical"},
  {"year": 2023, "event": "Standalone 5G networks enable full feature set", "type": "historical"},
  {"year": 2024, "event": "Private 5G networks transform industrial operations", "type": "current"},
  {"year": 2025, "event": "6G research demonstrates terahertz communication", "type": "current"},
  {"year": 2027, "event": "Satellite-terrestrial 5G provides global coverage", "type": "predicted"},
  {"year": 2030, "event": "6G networks enable holographic telepresence", "type": "predicted"},
  {"year": 2032, "event": "Neural interfaces connect directly to wireless networks", "type": "predicted"},
  {"year": 2035, "event": "Ambient intelligence networks anticipate user needs", "type": "predicted"}
]', false, NOW());

-- Update Cloud Computing exhibit
UPDATE exhibits SET 
  detailed_description = 'Cloud computing revolutionized how we store, process, and access data by providing on-demand computing resources over the internet. Instead of owning physical servers, users can rent computing power, storage, and software services from providers like Amazon Web Services, Microsoft Azure, and Google Cloud. This shift has enabled startups to scale rapidly and enterprises to reduce IT costs.

In 2025, cloud computing has become the backbone of the digital economy, supporting everything from mobile apps to AI training. Multi-cloud and hybrid cloud strategies are standard, while edge computing brings cloud services closer to users. Serverless computing allows developers to focus on code without managing infrastructure. The global cloud market exceeds $800 billion annually.',
  
  timeline_events = '[
    {"year": 1999, "event": "Salesforce pioneers Software-as-a-Service (SaaS) model", "type": "historical"},
    {"year": 2006, "event": "Amazon Web Services launches with S3 storage service", "type": "historical"},
    {"year": 2008, "event": "Google App Engine introduces Platform-as-a-Service", "type": "historical"},
    {"year": 2010, "event": "Microsoft Azure enters cloud computing market", "type": "historical"},
    {"year": 2014, "event": "Docker containers revolutionize application deployment", "type": "historical"},
    {"year": 2020, "event": "Pandemic drives massive cloud adoption for remote work", "type": "historical"},
    {"year": 2024, "event": "AI workloads drive 40% of cloud computing growth", "type": "current"},
    {"year": 2025, "event": "Edge computing brings cloud services to IoT devices", "type": "current"},
    {"year": 2027, "event": "Quantum cloud services solve complex optimization problems", "type": "predicted"},
    {"year": 2030, "event": "Autonomous cloud systems self-heal and optimize automatically", "type": "predicted"},
    {"year": 2032, "event": "Interplanetary cloud networks connect Earth and space colonies", "type": "predicted"},
    {"year": 2035, "event": "Biological computing integrates with traditional cloud infrastructure", "type": "predicted"}
  ]'
WHERE name = 'Cloud Computing';