/*
  # Add How it Works and Common Uses to All Exhibits

  1. New Columns
    - `how_it_works` (text) - Technical explanation of how the technology functions
    - `common_uses` (text) - Practical applications and uses in daily life

  2. Content Updates
    - Add comprehensive technical explanations for each exhibit
    - Include modern and historical uses
    - Cover practical applications across different industries
*/

-- Add new columns for how it works and common uses
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'exhibits' AND column_name = 'how_it_works'
  ) THEN
    ALTER TABLE exhibits ADD COLUMN how_it_works text;
  END IF;
  
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'exhibits' AND column_name = 'common_uses'
  ) THEN
    ALTER TABLE exhibits ADD COLUMN common_uses text;
  END IF;
END $$;

-- Update The Printing Press
UPDATE exhibits SET 
  how_it_works = 'The printing press works through a mechanical process of transferring ink from movable metal type to paper. Individual letters and characters are cast in metal and arranged to form words and sentences. These type pieces are locked into a frame called a forme. Ink is applied to the raised surfaces of the type using leather ink balls or rollers. Paper is then placed on top of the inked type, and pressure is applied using a screw mechanism or lever system to transfer the ink from the type to the paper. The pressure must be even and consistent to ensure clear, readable text. After printing, the paper is removed and the type can be cleaned and rearranged for the next page.',
  common_uses = 'Historical Uses: Books, newspapers, pamphlets, religious texts, government documents, maps, playing cards, wallpaper, and educational materials.

Modern Applications: Although largely replaced by digital printing, traditional printing presses are still used for:
- High-quality art books and limited editions
- Luxury stationery and wedding invitations
- Artisanal letterpress printing
- Historical reproductions and museum exhibits
- Fine art prints and posters
- Specialty packaging and labels
- Educational demonstrations in schools and museums
- Craft and hobby printing projects

The principles of the printing press evolved into modern offset printing, digital printing, and 3D printing technologies used today in publishing, packaging, marketing materials, and manufacturing.'
WHERE name = 'The Printing Press';

-- Update The Steam Engine
UPDATE exhibits SET 
  how_it_works = 'A steam engine converts heat energy into mechanical work through the expansion of steam. The process begins in a boiler where water is heated by burning fuel (coal, wood, or oil) to produce steam. The high-pressure steam is directed into a cylinder containing a piston. As steam enters the cylinder, it expands and pushes the piston along the cylinder. The piston is connected to a connecting rod, which transfers the linear motion to a crankshaft that converts it into rotational motion. A flywheel attached to the crankshaft stores energy and smooths out the power delivery. The used steam is then condensed back into water and returned to the boiler to repeat the cycle. Valves control the timing of steam admission and exhaust to maximize efficiency.',
  common_uses = 'Historical Uses: Steam locomotives for transportation, steamships for maritime travel, factory machinery for textile mills, mining equipment, agricultural machinery, and early electrical generators.

Modern Applications: While largely replaced by internal combustion engines and electric motors, steam engines are still used in:
- Steam turbines in power plants for electricity generation
- Nuclear power plants (using nuclear heat to create steam)
- Geothermal power plants
- Some industrial processes requiring high-temperature steam
- Heritage railways and tourist attractions
- Steam-powered ships for specialized applications
- Educational demonstrations and museums
- Hobby and model engineering
- Some remote locations where fuel is abundant but electricity is scarce

The principles of steam power evolved into modern steam turbines that generate most of the world''s electricity today.'
WHERE name = 'The Steam Engine';

-- Update The Telegraph
UPDATE exhibits SET 
  how_it_works = 'The telegraph transmits coded messages over long distances using electrical signals sent through wires. The system uses Morse code, where letters and numbers are represented by combinations of short signals (dots) and long signals (dashes). At the sending end, an operator uses a telegraph key to create electrical pulses by making and breaking an electrical circuit. These pulses travel through copper wires strung on poles across vast distances. At the receiving end, the electrical signals activate an electromagnet that moves a metal arm, creating clicking sounds or marks on paper tape. The receiving operator listens to the pattern of clicks or reads the marks to decode the Morse code back into readable text. Relay stations along the route amplify the signals to maintain strength over long distances.',
  common_uses = 'Historical Uses: Long-distance communication for news reporting, business transactions, government communications, military coordination, railroad scheduling, weather reports, and personal messages.

Modern Applications: While largely obsolete for general communication, telegraph principles are still used in:
- Amateur radio (ham radio) operations using Morse code
- Maritime and aviation emergency communications
- Military communications in remote areas
- Submarine communications (very low frequency)
- Educational purposes in schools and museums
- Historical reenactments and demonstrations
- Backup communication systems in emergencies
- Some remote industrial monitoring systems

The telegraph''s legacy lives on in modern digital communications, where binary code (similar to Morse code''s dots and dashes) forms the basis of all computer and internet communications.'
WHERE name = 'The Telegraph';

-- Update Sputnik 1
UPDATE exhibits SET 
  how_it_works = 'Sputnik 1 was launched using a modified R-7 intercontinental ballistic missile. The satellite itself was a 58-centimeter aluminum sphere containing radio transmitters, batteries, and temperature sensors. It was placed into Earth orbit by achieving the precise velocity needed to balance gravitational pull with centrifugal force - approximately 28,000 kilometers per hour. The satellite orbited Earth every 96 minutes at an altitude between 215 and 939 kilometers. Its radio transmitters broadcast on frequencies of 20.005 and 40.002 MHz, sending simple "beep-beep" signals that could be received by radio operators worldwide. The signals also provided data about the satellite''s condition and the density of the upper atmosphere. Solar panels were not yet miniaturized, so Sputnik relied on chemical batteries that lasted about three weeks.',
  common_uses = 'Historical Purpose: Sputnik 1 was primarily a demonstration of Soviet technological capability and served as a proof of concept for satellite technology.

Modern Satellite Applications:
- Global Positioning System (GPS) for navigation
- Weather forecasting and climate monitoring
- Television and radio broadcasting
- Internet and telecommunications
- Earth observation and mapping
- Scientific research and space exploration
- Military surveillance and reconnaissance
- Search and rescue operations
- Agricultural monitoring and precision farming
- Disaster response and emergency communications
- Satellite internet for remote areas
- Space-based solar power research
- Asteroid and space debris tracking

Today, thousands of satellites orbit Earth, providing essential services that modern society depends on daily.'
WHERE name = 'Sputnik 1';

-- Update Apollo 11
UPDATE exhibits SET 
  how_it_works = 'Apollo 11 used a three-stage Saturn V rocket to escape Earth''s gravity and reach the Moon. The first stage provided initial thrust using five F-1 engines burning kerosene and liquid oxygen. The second stage continued acceleration using five J-2 engines burning liquid hydrogen and oxygen. The third stage performed trans-lunar injection, sending the spacecraft toward the Moon. The Apollo spacecraft consisted of three modules: the Command Module (crew quarters), Service Module (propulsion and life support), and Lunar Module (Moon landing vehicle). During the journey, the spacecraft separated from the third stage and docked with the Lunar Module. Upon reaching the Moon, the Lunar Module separated and descended to the surface using its descent engine, while the Command Module remained in lunar orbit. After exploration, the Lunar Module''s ascent stage launched from the Moon to rejoin the Command Module for the return journey to Earth.',
  common_uses = 'Historical Achievement: Apollo 11 demonstrated human capability to travel to and land on another celestial body, primarily for exploration and scientific research.

Modern Space Applications:
- International Space Station operations and crew transport
- Robotic missions to Mars, Jupiter, Saturn, and beyond
- Earth observation satellites for climate and weather monitoring
- Space telescopes for astronomical research (Hubble, James Webb)
- Commercial satellite launches for communications
- Space tourism and commercial spaceflight
- Asteroid mining and resource extraction research
- Planetary defense against asteroid impacts
- Deep space exploration and search for extraterrestrial life
- Space-based manufacturing in zero gravity
- Lunar base development for future Mars missions
- Space elevators and advanced propulsion research
- Interplanetary internet and communication networks

The technologies developed for Apollo continue to advance human space exploration and benefit life on Earth.'
WHERE name = 'Apollo 11';

-- Update The Integrated Circuit
UPDATE exhibits SET 
  how_it_works = 'An integrated circuit combines multiple electronic components (transistors, resistors, capacitors, and diodes) onto a single semiconductor wafer, typically made of silicon. The manufacturing process begins with a pure silicon wafer that is treated with chemicals to create regions with different electrical properties. Photolithography is used to create precise patterns on the wafer using light-sensitive chemicals and masks. Multiple layers of materials are deposited, etched, and doped to create the desired circuit patterns. Transistors act as electronic switches that can be turned on or off by applying voltage, enabling digital logic operations. Metal connections link the components together to form complete circuits. The finished wafer is cut into individual chips, which are then packaged in protective cases with external connections for integration into electronic devices.',
  common_uses = 'Historical Uses: Early computers, calculators, digital watches, and simple electronic devices.

Modern Applications:
- Smartphones and tablets (processors, memory, sensors)
- Personal computers and laptops (CPUs, GPUs, RAM)
- Automotive systems (engine control, safety systems, entertainment)
- Medical devices (pacemakers, MRI machines, diagnostic equipment)
- Home appliances (smart TVs, washing machines, microwaves)
- Internet infrastructure (routers, servers, data centers)
- Artificial intelligence and machine learning processors
- Gaming consoles and graphics cards
- Digital cameras and video equipment
- Renewable energy systems (solar panel controllers, wind turbines)
- Aerospace and satellite systems
- Industrial automation and robotics
- Financial systems and payment processing
- Telecommunications and 5G networks

Integrated circuits are the foundation of virtually all modern electronic devices and digital technology.'
WHERE name = 'The Integrated Circuit';

-- Update The Personal Computer
UPDATE exhibits SET 
  how_it_works = 'A personal computer processes information using a central processing unit (CPU) that executes instructions stored in memory. The CPU fetches instructions from random access memory (RAM), decodes them, and performs calculations or data manipulations. Input devices (keyboard, mouse) convert user actions into digital signals. The motherboard connects all components through electrical pathways called buses. Storage devices (hard drives, SSDs) provide permanent data storage. The graphics processing unit (GPU) handles visual output to the monitor. An operating system manages hardware resources and provides a user interface. Software applications run on top of the operating system, utilizing the computer''s resources to perform specific tasks. Power supplies convert alternating current from wall outlets into direct current needed by electronic components.',
  common_uses = 'Historical Uses: Word processing, spreadsheet calculations, simple games, basic programming, and data storage.

Modern Applications:
- Office productivity (documents, presentations, email, video conferencing)
- Creative work (graphic design, video editing, music production, 3D modeling)
- Education and online learning (research, courses, virtual classrooms)
- Entertainment (gaming, streaming, social media, digital art)
- Software development and programming
- Scientific research and data analysis
- Financial management and accounting
- E-commerce and online shopping
- Digital communication (social networks, messaging, video calls)
- Content creation (blogging, YouTube, podcasting)
- Home automation and smart device control
- Virtual and augmented reality applications
- Cryptocurrency mining and blockchain operations
- Artificial intelligence and machine learning development
- Remote work and digital collaboration

Personal computers remain essential tools for work, education, creativity, and entertainment in the digital age.'
WHERE name = 'The Personal Computer';

-- Update The Internet
UPDATE exhibits SET 
  how_it_works = 'The Internet is a global network of interconnected computers that communicate using standardized protocols. Data is broken into small packets, each containing destination information and a portion of the original message. These packets travel through various routes across the network, passing through routers that determine the best path to the destination. Internet Service Providers (ISPs) provide connections between local networks and the broader Internet backbone. Domain Name System (DNS) servers translate human-readable website names into numerical IP addresses that computers use to locate each other. Web browsers interpret HTML code to display websites, while web servers host and deliver content. Protocols like HTTP/HTTPS govern how web pages are transmitted, while TCP/IP ensures reliable data delivery across the network.',
  common_uses = 'Historical Uses: Email, file transfer, academic research, and basic web browsing.

Modern Applications:
- World Wide Web browsing and information access
- Social media and online communities
- E-commerce and online shopping
- Streaming services (video, music, podcasts)
- Cloud computing and storage services
- Online education and remote learning
- Video conferencing and remote work
- Online gaming and virtual worlds
- Digital banking and financial services
- Search engines and information discovery
- News and media consumption
- Online maps and navigation services
- Internet of Things (IoT) device connectivity
- Artificial intelligence and machine learning services
- Cryptocurrency and blockchain networks
- Telemedicine and remote healthcare
- Smart home automation
- Digital marketing and advertising

The Internet has become the backbone of modern digital society, enabling global communication and commerce.'
WHERE name = 'The Internet';

-- Update The Smartphone
UPDATE exhibits SET 
  how_it_works = 'A smartphone combines multiple technologies into a single handheld device. The main processor (system-on-chip) manages all operations and runs the operating system. Touchscreen technology uses capacitive sensors to detect finger touches and convert them into digital commands. Cellular radios connect to mobile networks for voice calls and data transmission. Wi-Fi and Bluetooth chips enable local wireless connections. GPS receivers triangulate position using satellite signals. Cameras use digital sensors to capture images and videos. Accelerometers and gyroscopes detect device orientation and movement. The battery provides portable power, while charging circuits manage power input. Memory stores the operating system, applications, and user data. Various sensors (proximity, ambient light, fingerprint) enhance user experience and security.',
  common_uses = 'Historical Uses: Voice calls, text messaging, basic internet browsing, and simple applications.

Modern Applications:
- Communication (calls, texts, video chat, social media)
- Internet browsing and information access
- Photography and video recording
- Navigation and GPS mapping
- Mobile banking and digital payments
- Entertainment (games, streaming, music, podcasts)
- Productivity (email, documents, calendars, notes)
- E-commerce and online shopping
- Health and fitness tracking
- Smart home control and IoT device management
- Augmented reality applications
- Mobile learning and education
- Food delivery and ride-sharing services
- Digital wallets and contactless payments
- Language translation and communication aids
- Emergency services and safety features
- Professional tools (barcode scanning, document signing)
- Creative applications (photo editing, music creation)

Smartphones have become essential personal computers that people carry everywhere, transforming how we communicate, work, and interact with the world.'
WHERE name = 'The Smartphone';

-- Update Artificial Intelligence
UPDATE exhibits SET 
  how_it_works = 'Artificial Intelligence systems process information using algorithms that can learn from data and make decisions. Machine learning algorithms analyze large datasets to identify patterns and relationships. Neural networks, inspired by brain structure, use interconnected nodes (neurons) that process and transmit information. Deep learning uses multiple layers of neural networks to recognize complex patterns in data like images, speech, and text. Training involves feeding the system examples until it can accurately predict outcomes for new, unseen data. Natural language processing enables AI to understand and generate human language. Computer vision allows AI to interpret visual information. Reinforcement learning helps AI improve through trial and error, receiving rewards for correct actions.',
  common_uses = 'Current Applications:
- Virtual assistants (Siri, Alexa, Google Assistant)
- Search engines and recommendation systems
- Image and speech recognition
- Language translation services
- Autonomous vehicles and driver assistance
- Medical diagnosis and drug discovery
- Financial fraud detection and algorithmic trading
- Content moderation on social media platforms
- Personalized advertising and marketing
- Smart home automation and IoT devices
- Predictive maintenance in manufacturing
- Weather forecasting and climate modeling
- Cybersecurity threat detection
- Customer service chatbots
- Video game AI and procedural content generation
- Agricultural monitoring and precision farming
- Legal document analysis and contract review
- Educational tutoring and adaptive learning
- Creative applications (art, music, writing assistance)
- Scientific research and data analysis

AI is increasingly integrated into daily life, enhancing efficiency and enabling new capabilities across virtually every industry.'
WHERE name = 'Artificial Intelligence';

-- Update Electric Vehicles
UPDATE exhibits SET 
  how_it_works = 'Electric vehicles use electric motors powered by rechargeable battery packs instead of internal combustion engines. Lithium-ion batteries store electrical energy in chemical form and convert it back to electricity when needed. The electric motor converts electrical energy into mechanical energy to turn the wheels, using electromagnetic fields to create rotational force. Regenerative braking captures energy during deceleration and feeds it back to the battery. An onboard charger converts alternating current from the electrical grid into direct current for battery storage. Power electronics control the flow of electricity between the battery and motor, managing speed and torque. Battery management systems monitor cell temperature, voltage, and current to ensure safe operation and optimal performance.',
  common_uses = 'Current Applications:
- Personal transportation (cars, motorcycles, scooters)
- Public transportation (buses, trains, trams)
- Commercial delivery vehicles and trucks
- Ride-sharing and taxi services
- Emergency vehicles (police cars, ambulances, fire trucks)
- Industrial equipment (forklifts, construction vehicles)
- Agricultural machinery and farming equipment
- Marine vessels (boats, ferries, submarines)
- Aircraft (experimental and short-range flights)
- Recreational vehicles (e-bikes, electric skateboards)
- Autonomous vehicle platforms
- Car-sharing and rental services
- Corporate and government fleet vehicles
- Specialized vehicles (golf carts, airport shuttles)
- Racing and performance vehicles
- Off-road and adventure vehicles
- Micro-mobility solutions for urban areas
- Backup power systems for homes and businesses

Electric vehicles are rapidly replacing traditional vehicles across all transportation sectors, driven by environmental concerns and technological improvements.'
WHERE name = 'Electric Vehicles';

-- Update Quantum Computing
UPDATE exhibits SET 
  how_it_works = 'Quantum computers use quantum mechanical phenomena like superposition and entanglement to process information. Unlike classical bits that are either 0 or 1, quantum bits (qubits) can exist in multiple states simultaneously through superposition. Qubits are typically created using superconducting circuits, trapped ions, or photons, maintained at extremely low temperatures near absolute zero. Quantum gates manipulate qubits through precise electromagnetic pulses, performing quantum operations. Entanglement links qubits so that measuring one instantly affects others, regardless of distance. Quantum algorithms leverage these properties to solve certain problems exponentially faster than classical computers. However, quantum states are fragile and easily disrupted by environmental interference, requiring sophisticated error correction and isolation systems.',
  common_uses = 'Current and Emerging Applications:
- Cryptography and cybersecurity (breaking and creating encryption)
- Drug discovery and molecular simulation
- Financial modeling and risk analysis
- Optimization problems in logistics and supply chains
- Weather prediction and climate modeling
- Artificial intelligence and machine learning acceleration
- Materials science and chemistry research
- Nuclear physics and particle simulation
- Quantum internet and secure communications
- Database searching and pattern recognition
- Portfolio optimization in finance
- Traffic flow optimization in smart cities
- Protein folding research for medicine
- Quantum sensing for precise measurements
- Code-breaking for national security
- Simulation of quantum systems in physics
- Optimization of renewable energy systems
- Advanced cryptographic protocols
- Quantum machine learning algorithms

While still in early development, quantum computing promises to revolutionize fields requiring complex calculations and simulations.'
WHERE name = 'Quantum Computing';

-- Update Virtual and Augmented Reality
UPDATE exhibits SET 
  how_it_works = 'Virtual Reality creates immersive digital environments using head-mounted displays that present stereoscopic images to each eye, creating depth perception. Motion sensors track head movement and adjust the visual perspective in real-time to maintain immersion. Hand controllers or gloves track finger and hand movements for interaction with virtual objects. Augmented Reality overlays digital information onto the real world using cameras and displays. Computer vision algorithms identify real-world objects and surfaces to anchor virtual elements. Simultaneous Localization and Mapping (SLAM) technology tracks device position and maps the environment. Advanced systems use eye tracking, haptic feedback, and spatial audio to enhance realism. Processing units render 3D graphics at high frame rates to prevent motion sickness.',
  common_uses = 'Current Applications:
- Gaming and entertainment experiences
- Education and training simulations
- Medical training and surgical planning
- Architecture and real estate visualization
- Industrial design and prototyping
- Remote collaboration and virtual meetings
- Tourism and virtual travel experiences
- Therapy and mental health treatment
- Military and aviation training
- Retail and e-commerce product visualization
- Social media and virtual social spaces
- Art and creative expression platforms
- Sports training and performance analysis
- Museum and cultural heritage experiences
- Language learning and cultural immersion
- Engineering and scientific visualization
- Real estate virtual tours and staging
- Automotive design and testing
- Fashion and beauty try-on experiences
- Maintenance and repair guidance

VR and AR are transforming how we learn, work, and entertain ourselves by creating new forms of digital interaction.'
WHERE name = 'Virtual and Augmented Reality';

-- Update Blockchain and Cryptocurrency
UPDATE exhibits SET 
  how_it_works = 'Blockchain is a distributed ledger technology that maintains a continuously growing list of records (blocks) linked using cryptography. Each block contains a cryptographic hash of the previous block, a timestamp, and transaction data. The network of computers (nodes) validates new transactions using consensus mechanisms like Proof of Work or Proof of Stake. Cryptographic hashing ensures data integrity - any change to a block would require changing all subsequent blocks. Digital signatures verify transaction authenticity using public-key cryptography. Smart contracts are self-executing programs that automatically enforce agreement terms when conditions are met. Cryptocurrency uses blockchain to create digital money without central authority, with transactions verified by network participants rather than banks.',
  common_uses = 'Current Applications:
- Digital currencies (Bitcoin, Ethereum, stablecoins)
- Decentralized finance (DeFi) lending and trading
- Non-fungible tokens (NFTs) for digital ownership
- Supply chain tracking and verification
- Digital identity and credential verification
- Smart contracts for automated agreements
- Cross-border payments and remittances
- Decentralized autonomous organizations (DAOs)
- Voting systems and governance
- Real estate transactions and property records
- Intellectual property protection
- Carbon credit trading and environmental tracking
- Healthcare data management and privacy
- Gaming and virtual world economies
- Loyalty programs and reward systems
- Insurance claim processing and verification
- Art and collectibles authentication
- Charitable donations and transparency
- Energy trading and grid management

Blockchain technology is creating new models for trust, ownership, and value exchange in the digital economy.'
WHERE name = 'Blockchain and Cryptocurrency';