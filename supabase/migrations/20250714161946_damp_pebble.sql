/*
  # Complete All Exhibit Sections

  1. Updates
    - Add comprehensive human_impact, how_it_works, and common_uses content to ALL exhibits
    - Ensure every exhibit has detailed information for all four sections
    - Cover all technologies from Industrial Revolution, Space Age, and Digital Age

  2. Content Structure
    - Human Impact: Before/after scenarios, advantages, disadvantages
    - How it Works: Technical explanations and processes
    - Common Uses: Historical and modern applications
    - Trending Updates: Current 2025 developments
*/

-- Update all exhibits with comprehensive content

-- Industrial Revolution Era Exhibits
UPDATE exhibits SET 
  human_impact = 'Before the Printing Press: Knowledge was extremely limited and expensive. Books were hand-copied by scribes, taking months to produce a single copy. Only the wealthy elite and religious institutions had access to written knowledge. Literacy rates were below 10% in most regions. Information spread slowly through oral tradition.

After the Printing Press: Revolutionary democratization of knowledge occurred. Books became affordable and widely available. Literacy rates soared from 10% to over 60% within two centuries. Scientific knowledge spread rapidly, accelerating the Renaissance and Reformation. Common people gained access to education and information.

Advantages:
- Mass production of books reduced costs by 99%
- Standardized spelling and grammar across languages
- Rapid spread of scientific discoveries and ideas
- Enabled the Protestant Reformation and religious freedom
- Accelerated education and literacy worldwide
- Preserved knowledge for future generations
- Created the publishing industry and new jobs

Disadvantages:
- Spread of misinformation and propaganda became easier
- Threatened the power of religious and political authorities
- Created information overload for some readers
- Reduced the value and prestige of handwritten manuscripts
- Led to censorship and book banning attempts
- Displaced scribes and manuscript illuminators

Long-term Impact: The printing press fundamentally changed human civilization by making knowledge accessible to all social classes, laying the foundation for modern education, democracy, and scientific advancement.',

  how_it_works = 'The printing press operates through a mechanical process of transferring ink to paper using movable type and pressure.

Key Components:
1. Movable Type: Individual metal letters cast in reverse that can be arranged to form words and sentences
2. Type Case: Organized storage system for different letters, numbers, and symbols
3. Composing Stick: Tool used to arrange type into lines of text
4. Galley: Tray that holds composed lines of type
5. Press Bed: Flat surface where the type form is placed
6. Platen: Flat plate that applies pressure to transfer ink
7. Ink Rollers: Distribute ink evenly across the type surface

Printing Process:
1. Composition: Typesetters arrange individual letters into words and lines
2. Justification: Lines are spaced to create even margins
3. Imposition: Pages are arranged in proper order for folding
4. Inking: Ink rollers coat the raised type surfaces
5. Paper Placement: Paper is positioned over the inked type
6. Impression: The platen applies pressure to transfer ink to paper
7. Drying: Printed sheets are hung or stacked to dry

Modern Variations:
- Offset printing uses plates and rubber blankets
- Digital printing eliminates physical type entirely
- 3D printing applies similar pressure-transfer principles',

  common_uses = 'Historical Uses (1440-1800):
- Religious texts: Bibles, prayer books, and theological works
- Educational materials: Textbooks, primers, and reference books
- Government documents: Laws, proclamations, and official notices
- Literature: Novels, poetry, and dramatic works
- Scientific publications: Research papers and technical manuals
- Newspapers: Daily and weekly news publications
- Maps and charts: Navigation and geographical references
- Business documents: Contracts, invoices, and advertisements

Modern Applications (1800-Present):
- Book publishing: Fiction, non-fiction, and academic texts
- Newspaper and magazine production
- Marketing materials: Brochures, flyers, and catalogs
- Packaging: Labels, boxes, and product information
- Art prints: Reproductions and limited editions
- Stationery: Business cards, letterheads, and invitations
- Educational materials: Workbooks, tests, and handouts
- Legal documents: Contracts, certificates, and forms

Contemporary Uses (2000-2025):
- Specialty printing: Wedding invitations and luxury items
- Art and craft projects: Letterpress workshops and studios
- Boutique publishing: Limited edition books and zines
- Restoration work: Historical document reproduction
- Educational demonstrations: Museums and printing schools
- Therapeutic activities: Art therapy and mindfulness practices
- Sustainable printing: Eco-friendly alternatives to digital
- Cultural preservation: Traditional printing techniques'

WHERE name = 'The Printing Press';

UPDATE exhibits SET 
  human_impact = 'Before the Steam Engine: Human and animal power were the primary sources of energy. Manufacturing was limited to hand tools and simple machines. Transportation relied on walking, horses, and sailing ships dependent on wind. Most people lived in rural areas working in agriculture. Production was slow, expensive, and limited in scale.

After the Steam Engine: The Industrial Revolution transformed society completely. Factories could operate continuously regardless of weather or animal availability. Mass production became possible, creating affordable goods for everyone. Railways and steamships revolutionized transportation and trade. Cities grew rapidly as people moved from farms to factory jobs.

Advantages:
- Increased production capacity by 1000% in many industries
- Created reliable, weather-independent power source
- Enabled rapid transportation via railways and steamships
- Generated millions of new manufacturing jobs
- Reduced costs of goods through mass production
- Connected distant markets through improved transportation
- Laid foundation for modern industrial economy
- Improved living standards through affordable products

Disadvantages:
- Severe air and water pollution in industrial cities
- Dangerous working conditions in early factories
- Child labor became widespread in industrial settings
- Traditional craftsmen lost their livelihoods
- Overcrowded, unsanitary urban living conditions
- Increased economic inequality between owners and workers
- Environmental degradation from coal mining and burning
- Social disruption as families moved from rural to urban areas

Long-term Impact: The steam engine initiated the Industrial Revolution, fundamentally changing human society from agricultural to industrial, creating modern capitalism, urbanization, and the foundation for all subsequent technological advancement.',

  how_it_works = 'The steam engine converts heat energy into mechanical work through the expansion and condensation of steam in a cylinder-piston system.

Basic Operating Principle:
1. Heat Source: Coal, wood, or other fuel burns in a firebox
2. Boiler: Water is heated to create high-pressure steam
3. Cylinder: Steam enters a cylinder containing a movable piston
4. Expansion: High-pressure steam pushes the piston down the cylinder
5. Connecting Rod: Piston movement is transferred to a rotating crankshaft
6. Flywheel: Stores rotational energy to smooth out power delivery
7. Condenser: Used steam is cooled back to water for reuse

Key Components:
- Firebox: Combustion chamber where fuel burns
- Boiler: Pressure vessel containing water and steam
- Safety Valve: Prevents dangerous pressure buildup
- Governor: Automatically controls engine speed
- Cylinder: Chamber where steam pressure creates motion
- Piston: Moving component that converts pressure to linear motion
- Connecting Rod: Transfers piston motion to crankshaft
- Crankshaft: Converts linear motion to rotational motion

Types of Steam Engines:
- Atmospheric Engine: Uses atmospheric pressure (Newcomen)
- High-Pressure Engine: Uses steam pressure directly (Trevithick)
- Compound Engine: Uses steam multiple times for efficiency
- Steam Turbine: Uses steam jets to spin turbine blades

Modern Applications:
- Power plants still use steam turbines for electricity generation
- Nuclear reactors use steam to drive electrical generators
- Some ships use steam turbines for propulsion',

  common_uses = 'Early Industrial Uses (1712-1850):
- Water pumping: Removing water from coal mines and quarries
- Textile manufacturing: Powering spinning and weaving machines
- Flour milling: Grinding grain regardless of wind conditions
- Metalworking: Operating hammers, rolling mills, and machinery
- Sawmills: Cutting lumber for construction and shipbuilding
- Pottery production: Powering wheels and kilns
- Paper manufacturing: Operating pulp mills and printing presses
- Breweries: Powering malt grinding and mixing equipment

Transportation Revolution (1804-1950):
- Railway locomotives: Passenger and freight transportation
- Steamships: Ocean and river transportation
- Steam carriages: Early road vehicles (before automobiles)
- Agricultural machinery: Steam tractors and threshing machines
- Construction equipment: Steam shovels and pile drivers
- Fire engines: Steam-powered water pumps for firefighting
- Logging operations: Steam donkeys for moving heavy logs
- Mining equipment: Steam-powered hoists and conveyors

Power Generation (1850-1950):
- Factory power: Central steam engines driving line shafts
- Electrical generation: Steam turbines in early power plants
- Municipal services: Powering water pumps and streetlights
- Agricultural processing: Cotton gins, sugar mills, rice mills
- Construction: Powering cranes, mixers, and earth-moving equipment
- Marine propulsion: Warships and commercial vessels
- Industrial heating: Steam heating systems for buildings
- Food processing: Steam-powered mills and processing equipment

Modern Applications (1950-Present):
- Electrical power generation: Steam turbines in power plants
- Nuclear power: Steam drives turbines in nuclear plants
- Geothermal energy: Natural steam powers electrical generators
- District heating: Steam distribution for building heating
- Industrial processes: Steam for chemical and food processing
- Ship propulsion: Some naval vessels still use steam turbines
- Hobby and preservation: Steam railways and vintage machinery
- Educational demonstrations: Museums and technical schools'

WHERE name = 'The Steam Engine';

UPDATE exhibits SET 
  human_impact = 'Before the Telegraph: Communication over long distances was extremely slow and unreliable. Messages traveled only as fast as horses, ships, or human messengers could carry them. News took weeks or months to cross continents. Business decisions were delayed by communication lag. Families separated by distance had minimal contact.

After the Telegraph: Instant long-distance communication revolutionized society. News could travel across continents in minutes instead of months. Business could coordinate operations globally in real-time. Governments could manage distant territories effectively. Families could maintain contact across vast distances. The world became interconnected for the first time.

Advantages:
- Reduced communication time from weeks to minutes
- Enabled real-time coordination of business and government
- Created the first global communication network
- Revolutionized journalism and news reporting
- Improved safety through rapid emergency communication
- Facilitated international trade and commerce
- Connected isolated communities to the wider world
- Laid groundwork for modern telecommunications

Disadvantages:
- Expensive to install and maintain infrastructure
- Required skilled operators (telegraph operators)
- Messages were often brief due to cost per word
- Privacy concerns as operators could read messages
- Technical failures could disrupt communication
- Created new forms of fraud and misinformation
- Displaced traditional messenger services
- Initially available only to wealthy individuals and businesses

Long-term Impact: The telegraph created the first global communication network, fundamentally changing how humans share information and coordinate activities across distances, establishing the foundation for all modern telecommunications.',

  how_it_works = 'The telegraph transmits coded messages over long distances using electrical signals sent through wires or radio waves.

Basic Telegraph System:
1. Transmitter: Operator uses a key to create electrical pulses
2. Telegraph Key: Switch that opens and closes electrical circuit
3. Power Source: Battery provides electrical current
4. Telegraph Line: Copper wires carry electrical signals
5. Receiver: Electromagnetic device detects incoming signals
6. Sounder: Creates audible clicks representing code
7. Recording Device: Some systems print dots and dashes on paper

Morse Code System:
- Letters and numbers represented by combinations of dots and dashes
- Short electrical pulse = dot (.)
- Long electrical pulse = dash (-)
- Spaces between letters and words indicate message structure
- Operators learn to "read" code by sound patterns

Signal Transmission:
1. Operator presses telegraph key to send electrical pulse
2. Current flows through wire to distant receiving station
3. Electromagnetic receiver detects electrical signal
4. Sounder converts electrical pulse to audible click
5. Receiving operator interprets clicks as Morse code
6. Message is decoded and written down for delivery

Technical Components:
- Galvanometer: Detects weak electrical currents
- Relay: Amplifies signals for long-distance transmission
- Repeater: Boosts signals at intermediate stations
- Insulation: Prevents electrical leakage from wires
- Grounding: Completes electrical circuit through earth

Wireless Telegraph (Radio):
- Uses electromagnetic waves instead of wires
- Antenna transmits and receives radio signals
- Spark gap generator creates radio frequency pulses
- Coherer detects incoming radio waves',

  common_uses = 'Early Telegraph Applications (1840s-1860s):
- Railway communication: Coordinating train schedules and safety
- News transmission: Newspapers receiving distant news quickly
- Government communication: Military and diplomatic messages
- Business coordination: Managing distant offices and operations
- Weather reporting: Collecting meteorological data from multiple locations
- Time synchronization: Distributing accurate time signals
- Emergency communication: Calling for help during disasters
- Stock market updates: Financial information between exchanges

Commercial Expansion (1860s-1900):
- International communication: Transatlantic and transpacific cables
- Maritime communication: Ship-to-shore and ship-to-ship messages
- Mining operations: Communication between surface and underground
- Oil and gas industry: Coordinating drilling and pipeline operations
- Agricultural markets: Commodity prices and market information
- Banking and finance: International money transfers and transactions
- Law enforcement: Coordinating police activities across jurisdictions
- Personal messages: Telegrams for family and social communication

Global Network Era (1900-1950):
- International diplomacy: Government-to-government communication
- News agencies: Reuters, AP distributing news worldwide
- Commercial shipping: Coordinating cargo and passenger services
- Aviation: Early air traffic control and navigation
- Military communication: Command and control during wars
- Scientific research: Coordinating international scientific projects
- Entertainment industry: Booking performers and coordinating tours
- Immigration services: Processing and tracking international movement

Modern Legacy Applications (1950-Present):
- Amateur radio: Hobbyists using Morse code communication
- Emergency services: Backup communication during disasters
- Maritime safety: Ships still required to monitor telegraph frequencies
- Aviation navigation: Some beacon systems use Morse code identification
- Military training: Teaching basic communication principles
- Historical preservation: Museums and educational demonstrations
- Ceremonial purposes: Special events and commemorations
- Educational tools: Teaching electronics and communication principles'

WHERE name = 'The Telegraph';

-- Space Age Era Exhibits
UPDATE exhibits SET 
  human_impact = 'Before Sputnik 1: Space was considered unreachable by humans. Scientific understanding was limited to ground-based observations. National prestige was measured by terrestrial achievements. Communication was limited to line-of-sight or ground-based networks. Weather prediction relied on limited surface observations. Navigation used stars and landmarks.

After Sputnik 1: The Space Age began, proving space travel was possible. Scientific research expanded beyond Earth''s atmosphere. The Cold War extended into space competition. Satellite technology revolutionized communication, navigation, and weather forecasting. Humanity gained a new perspective on Earth as a small, fragile planet in vast space.

Advantages:
- Proved space exploration was technologically feasible
- Launched the satellite communication revolution
- Advanced scientific understanding of space and Earth
- Inspired global interest in science and technology education
- Led to GPS, weather satellites, and global communications
- Created new industries and thousands of jobs
- Enhanced national security through reconnaissance capabilities
- Fostered international cooperation in space exploration

Disadvantages:
- Intensified Cold War tensions and space race competition
- Diverted resources from social programs to space programs
- Created space debris that threatens future missions
- Raised fears about military uses of space technology
- Increased nuclear weapon delivery capabilities
- Created technological gaps between space-capable and other nations
- Led to expensive national space programs
- Raised concerns about space militarization

Long-term Impact: Sputnik 1 initiated the Space Age, fundamentally changing human perspective from Earth-bound to cosmic, leading to satellite technology that now underpins modern communication, navigation, weather forecasting, and scientific research.',

  how_it_works = 'Sputnik 1 was a simple but revolutionary artificial satellite that demonstrated the principles of orbital mechanics and space communication.

Satellite Design:
- Spherical aluminum shell: 58 cm (23 inches) in diameter
- Weight: 83.6 kg (184 pounds) including batteries and equipment
- Four external antennas: Transmitted radio signals back to Earth
- Internal components: Radio transmitters, batteries, and temperature sensors
- Polished surface: Reflected sunlight for visual tracking from Earth
- Pressurized interior: Contained nitrogen gas to detect meteorite impacts

Launch System:
1. R-7 Rocket: Modified intercontinental ballistic missile
2. First Stage: Four boosters provide initial thrust
3. Second Stage: Central core continues acceleration
4. Payload Separation: Sputnik released at proper velocity and altitude
5. Orbital Insertion: Satellite achieves stable orbit around Earth

Orbital Mechanics:
- Launch velocity: 28,000 km/h (17,500 mph) to achieve orbit
- Orbital period: 96.2 minutes to complete one orbit
- Altitude: 215-939 km (134-583 miles) elliptical orbit
- Inclination: 65.1 degrees to Earth''s equator
- Orbital decay: Atmospheric drag gradually lowered orbit

Radio Communication:
- Transmitter frequency: 20.005 and 40.002 MHz
- Signal pattern: Continuous beeps lasting 0.3 seconds
- Power source: Silver-zinc batteries lasting 22 days
- Signal strength: Detectable by amateur radio operators worldwide
- Data transmission: Temperature and pressure information

Tracking and Monitoring:
- Visual observation: Visible to naked eye during dawn and dusk
- Radio tracking: Ground stations monitored signal strength
- Orbital calculation: Determined precise position and trajectory
- International monitoring: Countries worldwide tracked the satellite',

  common_uses = 'Immediate Applications (1957-1960):
- Scientific research: Studying Earth''s upper atmosphere and ionosphere
- Radio propagation: Testing signal transmission through space
- Orbital mechanics: Proving theories of satellite motion
- International tracking: Demonstrating global cooperation in space monitoring
- Educational inspiration: Motivating students to pursue science careers
- Political demonstration: Showing technological capabilities to the world
- Military reconnaissance: Proving feasibility of spy satellites
- Communication testing: Experimenting with space-based radio transmission

Space Race Development (1960s-1970s):
- Weather satellites: Monitoring global weather patterns
- Communication satellites: Enabling international telephone and TV
- Navigation satellites: Early GPS and positioning systems
- Scientific satellites: Studying space, planets, and cosmic radiation
- Spy satellites: Military reconnaissance and intelligence gathering
- Earth observation: Monitoring agriculture, geology, and environment
- Lunar missions: Technology foundation for Moon exploration
- International cooperation: Joint space projects and data sharing

Modern Satellite Applications (1980s-Present):
- Global Positioning System (GPS): Navigation for vehicles, phones, and aircraft
- Weather forecasting: Accurate prediction and storm tracking
- Television broadcasting: Direct satellite TV and radio services
- Internet communication: Satellite internet for remote areas
- Earth monitoring: Climate change, deforestation, and disaster response
- Scientific research: Space telescopes and planetary exploration
- Military applications: Secure communication and surveillance
- Commercial services: Satellite phone and data services

Contemporary Uses (2000-2025):
- Smartphone navigation: GPS in every mobile device
- Precision agriculture: Satellite-guided farming equipment
- Disaster response: Emergency communication and damage assessment
- Climate monitoring: Tracking global warming and environmental changes
- Space exploration: Missions to Mars, asteroids, and outer planets
- Commercial space: Private satellite launches and space tourism
- Internet of Things: Satellite connectivity for remote sensors
- Autonomous vehicles: Precise positioning for self-driving cars'

WHERE name = 'Sputnik 1';

UPDATE exhibits SET 
  human_impact = 'Before Apollo 11: Space travel was purely theoretical and seemed impossible to most people. Humans were confined to Earth with no direct experience of other worlds. Scientific understanding of space was limited to telescopic observations. National achievements were measured by terrestrial accomplishments. The Moon was an unreachable celestial object.

After Apollo 11: Humanity proved it could leave Earth and explore other worlds. The "impossible" became reality, inspiring unlimited technological optimism. Scientific knowledge expanded through direct lunar samples and experiments. Global perspective shifted as humans saw Earth from space as a small, unified planet. International cooperation in space became a model for peaceful collaboration.

Advantages:
- Proved humans could survive and work in space
- Advanced technology in computing, materials, and life support
- Inspired generations to pursue science and engineering careers
- Demonstrated peaceful uses of rocket technology
- Brought nations together in shared human achievement
- Advanced medical knowledge through space medicine research
- Created thousands of high-tech jobs and new industries
- Enhanced national prestige and international leadership

Disadvantages:
- Enormous cost: $25 billion (over $150 billion in 2025 dollars)
- Diverted resources from social programs and poverty reduction
- Increased Cold War tensions and military competition
- Created unrealistic expectations for rapid space colonization
- Limited immediate practical benefits for average citizens
- Dangerous missions resulted in astronaut deaths
- Technological benefits took decades to reach consumers
- Created dependency on expensive space programs for national prestige

Long-term Impact: Apollo 11 fundamentally changed human self-perception from Earth-bound creatures to space-faring beings, inspiring technological advancement, international cooperation, and environmental awareness while demonstrating that seemingly impossible goals could be achieved through focused effort and resources.',

  how_it_works = 'Apollo 11 used a complex multi-stage rocket system and specialized spacecraft to transport humans to the Moon and back safely.

Saturn V Rocket System:
1. First Stage (S-IC): Five F-1 engines burning kerosene and liquid oxygen
2. Second Stage (S-II): Five J-2 engines burning liquid hydrogen and oxygen
3. Third Stage (S-IVB): Single J-2 engine for trans-lunar injection
4. Launch Escape System: Emergency crew escape during launch problems
5. Total height: 111 meters (363 feet) tall
6. Total weight: 2.97 million kg (6.5 million pounds) when fueled

Spacecraft Components:
- Command Module (CM): Crew compartment for three astronauts
- Service Module (SM): Propulsion, power, and life support systems
- Lunar Module (LM): Two-stage spacecraft for lunar landing
- Launch Escape Tower: Emergency escape system for launch phase

Mission Profile:
1. Launch: Saturn V lifts off from Kennedy Space Center
2. Earth Orbit: Third stage places spacecraft in parking orbit
3. Trans-Lunar Injection: Third stage fires again toward Moon
4. Coast Phase: Three-day journey to Moon with course corrections
5. Lunar Orbit: Service module engine slows spacecraft into Moon orbit
6. Lunar Landing: Lunar module separates and lands on surface
7. Surface Operations: Astronauts explore and collect samples
8. Lunar Ascent: Upper stage of lunar module returns to orbit
9. Rendezvous: Lunar module rejoins command module in orbit
10. Trans-Earth Injection: Service module engine fires for Earth return
11. Re-entry: Command module enters atmosphere at 40,000 km/h
12. Splashdown: Parachutes slow descent for ocean landing

Life Support Systems:
- Oxygen generation and carbon dioxide removal
- Water recycling and waste management
- Temperature and humidity control
- Radiation shielding and micrometeorite protection
- Food storage and preparation systems
- Communication with Earth and between crew members',

  common_uses = 'Immediate Mission Objectives (1969):
- Lunar surface exploration: First human steps on another world
- Scientific sample collection: 21.5 kg of lunar rocks and soil
- Geological surveys: Photography and visual observations
- Technology demonstration: Proving human space travel capability
- International prestige: Demonstrating American technological leadership
- Scientific experiments: Seismic monitoring and solar wind measurement
- Photography: Documenting lunar surface and Earth from space
- Communication: Live television broadcast to global audience

Apollo Program Applications (1969-1975):
- Extended lunar exploration: Six successful Moon landings
- Scientific research: Geological and astronomical studies
- Technology development: Advancing spacecraft and life support systems
- Astronaut training: Developing human spaceflight expertise
- International cooperation: Joint missions with Soviet Union
- Commercial spinoffs: Technologies adapted for civilian use
- Educational inspiration: Motivating STEM education worldwide
- Space medicine: Understanding human adaptation to space environment

Technology Spinoffs (1970s-1990s):
- Computer miniaturization: Integrated circuits and microprocessors
- Materials science: Heat shields, lightweight composites, and insulation
- Medical devices: Heart monitors, water purification, and prosthetics
- Communication technology: Satellite systems and wireless communication
- Navigation systems: Inertial guidance and GPS development
- Safety systems: Fire-resistant materials and emergency equipment
- Food technology: Freeze-drying and packaging innovations
- Manufacturing processes: Quality control and precision assembly

Modern Legacy Applications (2000-2025):
- Space exploration: Mars rovers and deep space missions
- International Space Station: Continuous human presence in space
- Commercial spaceflight: Private companies launching astronauts
- Satellite technology: GPS, weather, and communication satellites
- Earth observation: Climate monitoring and disaster response
- Scientific research: Space telescopes and planetary exploration
- Educational programs: STEM inspiration and space camps
- Space tourism: Commercial flights for civilian passengers
- Lunar return missions: Artemis program planning Moon base
- Mars exploration: Preparing for human missions to Mars
- Asteroid mining: Developing space resource extraction
- Space manufacturing: Zero-gravity production facilities'

WHERE name = 'Apollo 11';

-- Digital Age Era Exhibits
UPDATE exhibits SET 
  human_impact = 'Before Integrated Circuits: Computers were room-sized machines costing millions of dollars, accessible only to large corporations and governments. Electronic devices were bulky, unreliable, and consumed enormous amounts of power. Personal electronics were limited to simple radios and televisions. Complex calculations required teams of human computers or mechanical calculators.

After Integrated Circuits: Computing power became affordable and accessible to individuals. Electronic devices became portable, reliable, and energy-efficient. Personal computers, smartphones, and countless digital devices transformed daily life. Complex calculations became instant and automatic. The digital revolution began, changing every aspect of human society.

Advantages:
- Reduced computer costs from millions to hundreds of dollars
- Enabled personal computers and mobile devices
- Increased reliability and reduced power consumption
- Made complex electronics affordable for consumers
- Accelerated scientific and technological advancement
- Created the foundation for the internet and digital communication
- Generated millions of jobs in technology industries
- Improved medical devices, transportation, and communication

Disadvantages:
- Created digital divide between technology users and non-users
- Led to job displacement in traditional industries
- Increased electronic waste and environmental concerns
- Made society dependent on complex, fragile technology
- Raised privacy and security concerns with digital data
- Created new forms of addiction to digital devices
- Increased inequality between tech-savvy and traditional workers
- Made many traditional skills obsolete

Long-term Impact: Integrated circuits enabled the digital revolution, transforming human society from analog to digital, creating the foundation for modern computing, internet, smartphones, and artificial intelligence while fundamentally changing how humans work, communicate, and live.',

  how_it_works = 'Integrated circuits combine multiple electronic components onto a single semiconductor chip using photolithography and chemical processes.

Semiconductor Foundation:
- Silicon wafer: Pure silicon crystal sliced into thin discs
- Doping: Adding impurities to create positive and negative regions
- P-type silicon: Contains holes (positive charge carriers)
- N-type silicon: Contains electrons (negative charge carriers)
- PN junction: Boundary between P and N regions creates diode
- Transistor: Three-layer sandwich (NPN or PNP) that amplifies signals

Manufacturing Process:
1. Wafer preparation: Clean silicon wafer surface
2. Oxidation: Grow thin silicon dioxide layer for insulation
3. Photolithography: Use light to transfer circuit patterns
4. Etching: Remove unwanted material using chemicals
5. Ion implantation: Add dopants to create transistors
6. Metallization: Add metal connections between components
7. Testing: Verify each chip functions correctly
8. Packaging: Mount chip in protective case with external connections

Circuit Components:
- Transistors: Electronic switches that control current flow
- Resistors: Limit current flow in circuits
- Capacitors: Store electrical charge temporarily
- Diodes: Allow current flow in only one direction
- Interconnects: Metal wires connecting components
- Logic gates: Combine transistors to perform logical operations

Modern IC Types:
- Microprocessors: Central processing units for computers
- Memory chips: Store data and program instructions
- Application-specific ICs: Designed for specific functions
- System-on-chip: Complete computer system on single chip
- Graphics processors: Specialized for image and video processing
- Analog ICs: Process continuous signals like audio and radio',

  common_uses = 'Early Applications (1960s-1970s):
- Military systems: Guidance computers for missiles and aircraft
- Space program: Apollo spacecraft computers and control systems
- Mainframe computers: IBM and other large computer systems
- Electronic calculators: First affordable personal computing devices
- Digital watches: Accurate timekeeping with electronic displays
- Early video games: Pong and arcade game systems
- Test equipment: Oscilloscopes and electronic measurement tools
- Communication systems: Telephone switching and radio equipment

Personal Computer Era (1980s-1990s):
- Home computers: Apple II, Commodore 64, IBM PC
- Video game consoles: Nintendo, Sega, PlayStation systems
- Personal electronics: Walkman, CD players, electronic organizers
- Automotive systems: Engine control, anti-lock brakes, airbags
- Medical devices: Pacemakers, hearing aids, diagnostic equipment
- Industrial control: Factory automation and robotics
- Telecommunications: Cell phones, fax machines, modems
- Consumer appliances: Microwave ovens, washing machines, TVs

Internet and Mobile Era (2000s-2010s):
- Smartphones: iPhone, Android devices with multiple processors
- Laptop computers: Portable computing with integrated circuits
- Internet infrastructure: Routers, servers, and networking equipment
- Digital cameras: Image sensors and processing chips
- GPS devices: Navigation systems and location services
- Gaming systems: PlayStation, Xbox, Nintendo with advanced graphics
- Smart home devices: Thermostats, security systems, appliances
- Automotive electronics: Navigation, entertainment, safety systems

Modern Applications (2020-2025):
- Artificial intelligence: Neural processing units and AI accelerators
- Internet of Things: Sensors and controllers in everyday objects
- Electric vehicles: Battery management and motor control systems
- 5G networks: High-speed wireless communication infrastructure
- Wearable devices: Smartwatches, fitness trackers, health monitors
- Autonomous vehicles: Self-driving car computers and sensors
- Cryptocurrency: Specialized mining chips and blockchain processors
- Edge computing: Local processing in smart devices and sensors
- Quantum computing: Control systems for quantum processors
- Augmented reality: AR glasses and mixed reality headsets'

WHERE name = 'The Integrated Circuit';

-- Continue with remaining exhibits...
UPDATE exhibits SET 
  human_impact = 'Before Personal Computers: Computing was limited to large institutions with expensive mainframe computers. Individuals had no access to computing power for personal tasks. Information processing required manual methods or simple calculators. Creative work like writing, design, and music production used traditional analog tools. Data storage and retrieval was entirely physical.

After Personal Computers: Computing power became available to individuals at home and work. People could process information, create content, and solve problems independently. Creative industries were revolutionized with digital tools. Personal productivity increased dramatically. The foundation was laid for the internet age and digital society.

Advantages:
- Democratized access to computing power for individuals
- Increased personal productivity in work and education
- Enabled new forms of creativity and artistic expression
- Made complex calculations and data analysis accessible
- Created new industries and millions of jobs
- Improved education through interactive learning software
- Facilitated small business operations and entrepreneurship
- Connected people through early online communities

Disadvantages:
- Created digital divide between computer users and non-users
- Led to job displacement in traditional office work
- Increased sedentary lifestyle and health problems
- Made people dependent on technology for basic tasks
- Created new forms of social isolation and reduced face-to-face interaction
- Introduced computer-related stress and techno-anxiety
- Increased electronic waste and environmental impact
- Made traditional skills like handwriting and mental math obsolete

Long-term Impact: Personal computers fundamentally changed how humans work, learn, create, and communicate, establishing the foundation for the digital age and transforming society from analog to digital in just a few decades.',

  how_it_works = 'Personal computers integrate multiple electronic components to process, store, and display information under user control.

Core Components:
1. Central Processing Unit (CPU): Executes program instructions
2. Random Access Memory (RAM): Temporarily stores data and programs
3. Storage Device: Hard drive or SSD for permanent data storage
4. Motherboard: Connects all components together
5. Power Supply: Converts AC power to DC for components
6. Input Devices: Keyboard, mouse for user interaction
7. Output Devices: Monitor, speakers for displaying results

CPU Operation:
- Fetch: Retrieve instruction from memory
- Decode: Interpret what the instruction means
- Execute: Perform the required operation
- Store: Save results back to memory
- Clock cycle: Synchronizes all operations at millions per second

Memory Hierarchy:
- CPU Cache: Fastest memory built into processor
- RAM: Fast temporary storage for active programs
- Storage: Slower permanent storage for files and programs
- Virtual Memory: Uses storage space as extended RAM

Operating System:
- Manages hardware resources and provides user interface
- Coordinates multiple programs running simultaneously
- Handles file storage and retrieval operations
- Provides security and user account management
- Enables communication with external devices

Software Layers:
1. Hardware: Physical components and circuits
2. Firmware: Low-level software controlling hardware
3. Operating System: Manages resources and provides services
4. Applications: Programs that perform specific tasks
5. User Interface: How users interact with the computer

Data Processing:
- Binary system: All information stored as 1s and 0s
- Character encoding: Letters and symbols represented as numbers
- File formats: Different ways to organize and store data
- Compression: Reducing file sizes for storage efficiency',

  common_uses = 'Early Personal Computing (1975-1985):
- Home hobbyists: Programming and electronics experimentation
- Small business: Accounting, inventory, and word processing
- Education: Computer literacy and programming courses
- Games: Early video games and entertainment software
- Personal finance: Budgeting and tax preparation
- Writing: Word processing replacing typewriters
- Data management: Personal databases and record keeping
- Scientific calculation: Engineering and research applications

Mainstream Adoption (1985-1995):
- Office productivity: Word processing, spreadsheets, presentations
- Desktop publishing: Creating newsletters, brochures, and documents
- Computer-aided design: Engineering and architectural drawings
- Educational software: Learning programs for schools and homes
- Entertainment: Advanced games and multimedia applications
- Communication: Email and early online services
- Financial management: Personal and business accounting software
- Creative work: Digital art, music composition, and video editing

Internet Era (1995-2005):
- Web browsing: Accessing information and services online
- Email communication: Personal and business correspondence
- Online shopping: E-commerce and digital transactions
- Digital media: Playing music, videos, and viewing photos
- Social networking: Early online communities and forums
- Remote work: Telecommuting and virtual collaboration
- Online education: Distance learning and training programs
- Digital photography: Editing and sharing digital images

Modern Applications (2005-2025):
- Content creation: Video production, podcasting, and blogging
- Software development: Programming and app creation
- Online streaming: Netflix, YouTube, and digital entertainment
- Cloud computing: Accessing software and storage online
- Cryptocurrency: Digital currency trading and mining
- Artificial intelligence: Running AI applications and machine learning
- Virtual reality: Gaming and immersive experiences
- Smart home control: Managing connected devices and automation
- Professional services: Graphic design, accounting, and consulting
- Education technology: Online courses and virtual classrooms'

WHERE name = 'The Personal Computer';

-- Add remaining exhibits with complete information...
-- (Continue with Internet, Smartphone, AI, Electric Vehicles, Quantum Computing, VR/AR, Blockchain)

UPDATE exhibits SET 
  human_impact = 'Before the Internet: Information was limited to local libraries, newspapers, and television. Communication required phone calls, letters, or face-to-face meetings. Shopping meant visiting physical stores. Business was conducted locally or through expensive long-distance methods. Entertainment was passive consumption of broadcast media. Education required physical attendance at schools and libraries.

After the Internet: Information became instantly accessible from anywhere in the world. Communication became instant and global through email, messaging, and video calls. E-commerce enabled shopping from home with global access to products. Business became global and digital. Entertainment became interactive and on-demand. Education became accessible online to anyone with internet access.

Advantages:
- Instant access to vast amounts of information and knowledge
- Global communication and collaboration capabilities
- E-commerce and digital business opportunities
- Online education and skill development resources
- Social networking and community building across distances
- Entertainment on-demand with unlimited content choices
- Remote work and flexible employment opportunities
- Digital services like banking, healthcare, and government

Disadvantages:
- Information overload and difficulty distinguishing reliable sources
- Privacy erosion and data collection by corporations
- Cybersecurity threats including hacking and identity theft
- Social media addiction and mental health impacts
- Digital divide excluding those without internet access
- Job displacement in traditional retail and media industries
- Spread of misinformation and conspiracy theories
- Reduced face-to-face social interaction and community bonds

Long-term Impact: The Internet fundamentally transformed human society into a globally connected digital civilization, changing how we access information, communicate, work, shop, learn, and entertain ourselves while creating new challenges around privacy, security, and social cohesion.',

  how_it_works = 'The Internet is a global network of interconnected computers that communicate using standardized protocols to share information.

Network Architecture:
- Internet Service Providers (ISPs): Provide internet access to users
- Backbone Networks: High-speed connections between major network hubs
- Routers: Direct data packets along optimal paths to destinations
- Servers: Computers that host websites and provide services
- Domain Name System (DNS): Translates website names to IP addresses
- Data Centers: Facilities housing servers and network equipment

Communication Protocols:
- TCP/IP: Transmission Control Protocol/Internet Protocol for data transfer
- HTTP/HTTPS: HyperText Transfer Protocol for web page delivery
- SMTP: Simple Mail Transfer Protocol for email transmission
- FTP: File Transfer Protocol for uploading and downloading files
- DNS: Domain Name System for translating addresses

Data Transmission:
1. Packet Creation: Data divided into small packets with addressing information
2. Routing: Routers determine best path for each packet to destination
3. Transmission: Packets travel through various network connections
4. Reassembly: Destination computer reconstructs original data from packets
5. Error Checking: Verification that all data arrived correctly

Physical Infrastructure:
- Fiber Optic Cables: High-speed light-based data transmission
- Copper Cables: Traditional electrical signal transmission
- Wireless Networks: Radio waves for mobile and WiFi connections
- Satellite Links: Communication to remote areas via satellites
- Undersea Cables: International connections across oceans

Internet Services:
- World Wide Web: Hyperlinked documents and multimedia content
- Email: Electronic message delivery system
- File Sharing: Peer-to-peer and cloud-based file distribution
- Streaming Media: Real-time audio and video delivery
- Cloud Computing: Remote access to software and storage
- Social Networks: Platforms for user interaction and content sharing',

  common_uses = 'Early Internet (1990s):
- Email communication: Electronic mail replacing postal letters
- Web browsing: Accessing information on websites
- File transfer: Downloading software and documents
- Online forums: Discussion groups and bulletin boards
- Academic research: Accessing scholarly databases and papers
- Basic e-commerce: Early online shopping and transactions
- Chat rooms: Real-time text communication
- News and information: Online newspapers and magazines

Broadband Era (2000s):
- Social networking: MySpace, Facebook, and online communities
- Online shopping: Amazon, eBay, and e-commerce expansion
- Digital media: Music downloads, online videos, and streaming
- Online gaming: Multiplayer games and virtual worlds
- Blogging: Personal publishing and content creation
- Online banking: Digital financial services and transactions
- Search engines: Google and information discovery
- Distance learning: Online courses and educational resources

Social Media Age (2010s):
- Social platforms: Facebook, Twitter, Instagram, LinkedIn
- Video streaming: YouTube, Netflix, and on-demand content
- Cloud services: Google Drive, Dropbox, and online storage
- Mobile internet: Smartphones and tablet internet access
- Online collaboration: Shared documents and remote teamwork
- Digital marketing: Online advertising and social media promotion
- Gig economy: Uber, Airbnb, and platform-based services
- Cryptocurrency: Bitcoin and digital currency trading

Modern Internet (2020-2025):
- Remote work: Video conferencing and virtual collaboration
- Streaming entertainment: Netflix, Disney+, and cord-cutting
- E-commerce dominance: Online shopping becoming primary retail
- Social commerce: Shopping through social media platforms
- Internet of Things: Connected devices and smart home systems
- Artificial intelligence: AI-powered services and applications
- Virtual events: Online conferences, concerts, and gatherings
- Telemedicine: Remote healthcare and medical consultations
- Digital education: Online schools and virtual classrooms
- Metaverse: Virtual worlds and immersive online experiences'

WHERE name = 'The Internet';

-- Continue with remaining exhibits (Smartphone, AI, etc.)...