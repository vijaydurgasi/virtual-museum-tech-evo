/*
  # Add Human Impact Stories and Trending Updates

  1. Updates
    - Add human_impact field to exhibits table
    - Add trending_updates field for latest developments
    - Update all exhibits with comprehensive impact stories
    - Add current trending information for 2025

  2. Content Enhancement
    - Detailed before/after scenarios for each technology
    - Real-world impact on daily life, work, and society
    - Current trending developments and news
    - Future implications for humanity
*/

-- Add new columns for human impact and trending updates
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'exhibits' AND column_name = 'human_impact'
  ) THEN
    ALTER TABLE exhibits ADD COLUMN human_impact text;
  END IF;
  
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'exhibits' AND column_name = 'trending_updates'
  ) THEN
    ALTER TABLE exhibits ADD COLUMN trending_updates text;
  END IF;
END $$;

-- Update The Printing Press with human impact and trending updates
UPDATE exhibits SET 
  human_impact = 'Before the printing press, books were hand-copied by scribes, making them extremely expensive and rare. Only the wealthy elite and clergy had access to written knowledge. After Gutenberg''s invention, books became affordable and widely available, leading to: Mass literacy campaigns across Europe, the Protestant Reformation (as people could read the Bible themselves), the Scientific Revolution (knowledge could be shared rapidly), and the foundation of public education systems. It democratized knowledge and broke the monopoly of information held by the powerful.',
  trending_updates = '2025 Trending: Digital printing revolution with 3D printed books, AI-generated personalized textbooks, and blockchain-verified publishing. Print-on-demand services have eliminated book waste, while augmented reality books blend physical and digital reading experiences.'
WHERE name = 'The Printing Press';

-- Update The Steam Engine
UPDATE exhibits SET 
  human_impact = 'Before steam power, humans relied on muscle power, wind, and water for energy. Most people lived in rural areas as farmers. The steam engine transformed everything: It powered the Industrial Revolution, moving production from homes to factories. Millions migrated from farms to cities, creating the modern urban lifestyle. Transportation revolutionized with steam trains and ships, shrinking travel time from weeks to days. Working conditions changed dramatically - while creating new jobs, it also led to harsh factory conditions that sparked labor movements and workers'' rights. It fundamentally shifted humanity from an agricultural to an industrial society.',
  trending_updates = '2025 Trending: Steam technology revival in geothermal energy systems, modern steam turbines achieving 47% efficiency in power plants, and steam-powered carbon capture systems. Micro-steam generators are being developed for distributed energy in remote areas.'
WHERE name = 'The Steam Engine';

-- Update The Telegraph
UPDATE exhibits SET 
  human_impact = 'Before the telegraph, long-distance communication took weeks or months via horseback or ship. News of important events spread slowly, and coordinating business across distances was nearly impossible. The telegraph changed everything: It enabled instant long-distance communication for the first time in human history. Businesses could coordinate operations across continents, leading to the first global economy. News could spread in hours instead of weeks, creating the first real-time global awareness. It revolutionized warfare, allowing commanders to coordinate troops across vast distances. The telegraph created the foundation for modern financial markets, as stock prices could be shared instantly between cities.',
  trending_updates = '2025 Trending: Quantum communication networks achieving unhackable messaging, satellite internet providing global connectivity to remote areas, and brain-computer interfaces enabling thought-to-text communication. 6G networks promise sub-millisecond global communication.'
WHERE name = 'The Telegraph';

-- Update Sputnik 1
UPDATE exhibits SET 
  human_impact = 'Before Sputnik, space was an unreachable frontier, and Earth seemed isolated in the cosmos. The satellite''s launch fundamentally changed human perspective: It sparked the Space Race, leading to massive investments in science and technology education. The "Overview Effect" began as humans saw Earth from space for the first time, fostering environmental awareness. It accelerated technological development in computing, materials science, and telecommunications. Sputnik led to GPS, weather forecasting, global communications, and satellite TV - technologies we now take for granted. It also created the foundation for the internet, as ARPANET was developed partly in response to Sputnik.',
  trending_updates = '2025 Trending: Over 8,000 active satellites now orbit Earth, with SpaceX Starlink providing global internet. Commercial space tourism is operational, and NASA''s Artemis program aims for permanent Moon presence. Private companies are planning asteroid mining missions for 2027.'
WHERE name = 'Sputnik 1';

-- Update Apollo 11
UPDATE exhibits SET 
  human_impact = 'Before Apollo 11, humans had never left Earth''s vicinity. The Moon landing represented humanity''s greatest achievement and changed our species forever: It proved humans could survive and work in space, opening the possibility of becoming a multi-planetary species. The technological innovations required (miniaturized computers, advanced materials, life support systems) revolutionized industries on Earth. It inspired an entire generation to pursue STEM careers, leading to decades of innovation. The famous "Earthrise" photo from the mission sparked the environmental movement, as people saw Earth as a fragile "blue marble" in the vast cosmos. It demonstrated that with determination and resources, humanity could achieve seemingly impossible goals.',
  trending_updates = '2025 Trending: NASA''s Artemis III mission planned for 2026 will return humans to the Moon. SpaceX''s Starship is being tested for Mars missions. China and India have successful lunar programs, and private companies are developing Moon bases for mining and research.'
WHERE name = 'Apollo 11';

-- Update The Integrated Circuit
UPDATE exhibits SET 
  human_impact = 'Before integrated circuits, computers were room-sized machines costing millions and accessible only to large institutions. The microchip changed everything: It made computers small and affordable enough for homes and businesses. This enabled the personal computer revolution, putting computing power in everyone''s hands. It revolutionized every industry - from healthcare (medical devices, imaging) to transportation (car computers, navigation) to entertainment (video games, digital music). The microchip made possible the internet, smartphones, and the digital economy. It transformed how we work, learn, communicate, and entertain ourselves, creating the Information Age.',
  trending_updates = '2025 Trending: 3nm chips are in mass production, with 2nm chips coming in 2026. AI-specific chips are revolutionizing machine learning. Quantum processors are achieving practical applications, and neuromorphic chips that mimic brain function are entering commercial use.'
WHERE name = 'The Integrated Circuit';

-- Update The Personal Computer
UPDATE exhibits SET 
  human_impact = 'Before personal computers, computing was limited to large corporations and universities. Most people had never interacted with a computer. The PC democratized computing power: It transformed offices, eliminating typewriters and manual filing systems. Students gained access to word processing, research tools, and educational software. Small businesses could automate accounting, inventory, and communications. The PC enabled the software industry, creating millions of jobs. It changed how we create, store, and share information. Desktop publishing revolutionized media and marketing. The PC laid the groundwork for the internet age and remote work, fundamentally changing the nature of knowledge work.',
  trending_updates = '2025 Trending: AI-powered PCs with neural processing units are mainstream. Quantum-classical hybrid computers are emerging for specialized tasks. Foldable and rollable PC screens are becoming popular. Cloud-native PCs that rely primarily on internet connectivity are gaining adoption.'
WHERE name = 'The Personal Computer';

-- Update The Internet
UPDATE exhibits SET 
  human_impact = 'Before the internet, information was scarce and communication was limited to phone, mail, or face-to-face interaction. The internet created the most transformative change in human communication since the printing press: It connected the world''s knowledge, making information instantly accessible to anyone. E-commerce revolutionized shopping and business, creating companies like Amazon and eBay. Social media transformed how we maintain relationships and share experiences. Online education made learning accessible globally. The internet enabled remote work, changing where and how people live and work. It created the gig economy, new forms of entertainment (streaming, gaming), and digital activism. However, it also created new challenges: digital divides, privacy concerns, misinformation, and social media addiction.',
  trending_updates = '2025 Trending: Web3 and decentralized internet gaining traction. 6G networks promise 100x faster speeds. Internet of Things connecting 75 billion devices. Metaverse platforms creating persistent virtual worlds. AI-powered internet assistants providing personalized web experiences.'
WHERE name = 'The Internet';

-- Update The Smartphone
UPDATE exhibits SET 
  human_impact = 'Before smartphones, people carried separate devices for calling, texting, music, cameras, and navigation. Internet access required a computer. The smartphone consolidated everything into one pocket-sized device: It made the internet truly mobile, enabling constant connectivity. Social media became ubiquitous, changing how we share experiences and maintain relationships. Mobile banking brought financial services to billions in developing countries. Ride-sharing apps like Uber transformed transportation. Food delivery, dating, shopping, and entertainment moved to mobile-first experiences. The smartphone created the app economy, generating millions of jobs. However, it also created smartphone addiction, reduced face-to-face interaction, and new forms of distraction and mental health challenges.',
  trending_updates = '2025 Trending: AI assistants integrated into every smartphone function. Foldable phones becoming mainstream. Satellite connectivity for global coverage. Advanced computational photography with AI enhancement. Health monitoring capabilities rivaling medical devices.'
WHERE name = 'The Smartphone';

-- Update Artificial Intelligence
UPDATE exhibits SET 
  human_impact = 'Before modern AI, computers could only follow pre-programmed instructions. Human intelligence was required for complex decision-making, pattern recognition, and creative tasks. AI is now transforming every aspect of human life: In healthcare, AI diagnoses diseases faster and more accurately than doctors in some cases. In transportation, self-driving cars are reducing accidents. In education, AI tutors provide personalized learning. In work, AI automates routine tasks while augmenting human capabilities. AI powers recommendation systems that influence what we watch, buy, and read. Voice assistants have changed how we interact with technology. However, AI also raises concerns about job displacement, privacy, algorithmic bias, and the concentration of power in tech companies.',
  trending_updates = '2025 Trending: ChatGPT and Claude reaching human-level performance in many tasks. AI agents autonomously completing complex workflows. Generative AI creating movies, music, and art. AI scientists making independent research discoveries. Concerns about AI safety and regulation intensifying globally.'
WHERE name = 'Artificial Intelligence';

-- Update Cloud Computing
UPDATE exhibits SET 
  human_impact = 'Before cloud computing, businesses had to buy and maintain expensive servers and software. Small companies couldn''t afford enterprise-level technology. The cloud democratized access to powerful computing resources: Startups can now access the same infrastructure as large corporations, leveling the playing field. Remote work became seamless with cloud-based collaboration tools. Students and researchers gained access to supercomputing power for complex simulations. Small businesses could use sophisticated AI and analytics tools. The cloud enabled the smartphone app ecosystem and streaming services. It made data backup and recovery automatic and reliable. However, it also created new dependencies on internet connectivity and raised concerns about data privacy and vendor lock-in.',
  trending_updates = '2025 Trending: Edge computing bringing cloud services closer to users. Serverless computing eliminating infrastructure management. Multi-cloud strategies becoming standard. AI-optimized cloud services for machine learning workloads. Quantum cloud computing services emerging for specialized applications.'
WHERE name = 'Cloud Computing';

-- Update Generative AI and Large Language Models
UPDATE exhibits SET 
  human_impact = 'Before generative AI, creating content required human creativity and expertise. Writing, coding, art, and music were exclusively human domains. Generative AI is revolutionizing creative and knowledge work: Students use AI tutors for personalized learning and homework help. Writers use AI to overcome writer''s block and generate ideas. Programmers use AI to write and debug code faster. Artists create stunning visuals with AI assistance. Businesses automate customer service, content creation, and data analysis. Language barriers are dissolving with real-time AI translation. However, this has created concerns about academic integrity, job displacement for creative professionals, misinformation, and the authenticity of human-created content.',
  trending_updates = '2025 Trending: GPT-5 and Claude-4 approaching human-level reasoning. AI agents autonomously managing business processes. Real-time AI video generation becoming mainstream. AI companions providing emotional support. Regulatory frameworks for AI safety being implemented globally.'
WHERE name = 'Generative AI and Large Language Models';

-- Update Electric Vehicles and Autonomous Driving
UPDATE exhibits SET 
  human_impact = 'Before electric vehicles, transportation was entirely dependent on fossil fuels, contributing significantly to air pollution and climate change. Driving required constant human attention and skill. EVs and autonomous driving are transforming mobility: Urban air quality is improving in cities with high EV adoption. Families save thousands annually on fuel and maintenance costs. Autonomous features are reducing traffic accidents caused by human error. Ride-sharing with self-driving cars is making car ownership optional in cities. The automotive industry is being disrupted, with new companies like Tesla challenging century-old manufacturers. However, the transition has created challenges: charging infrastructure gaps, battery disposal concerns, and job losses in traditional automotive manufacturing.',
  trending_updates = '2025 Trending: EVs reaching price parity with gas cars. 500+ mile range batteries entering production. Level 4 autonomous vehicles operating in select cities. Vehicle-to-grid technology turning cars into mobile power stations. Flying electric vehicles beginning commercial trials.'
WHERE name = 'Electric Vehicles and Autonomous Driving';

-- Update Quantum Computing
UPDATE exhibits SET 
  human_impact = 'Before quantum computing, certain complex problems were considered unsolvable within human timescales - like modeling molecular interactions for drug discovery or breaking modern encryption. Quantum computing is beginning to tackle these impossible problems: Drug discovery is accelerating, potentially reducing the time to develop new medicines from decades to years. Financial modeling is becoming more sophisticated, enabling better risk assessment. Climate modeling is improving, helping us understand and combat climate change. However, quantum computing also threatens current cybersecurity, as it could break the encryption that protects our digital communications and financial systems, requiring entirely new security protocols.',
  trending_updates = '2025 Trending: IBM and Google achieving quantum advantage in specific applications. Quantum cloud services becoming commercially available. Post-quantum cryptography standards being implemented. Quantum sensors revolutionizing medical imaging and navigation. Investment in quantum startups reaching record levels.'
WHERE name = 'Quantum Computing';

-- Update Blockchain and Cryptocurrency
UPDATE exhibits SET 
  human_impact = 'Before blockchain, digital transactions required trusted intermediaries like banks, and digital assets could be easily copied. Blockchain introduced the concept of digital scarcity and trustless transactions: Cryptocurrencies enabled peer-to-peer payments without banks, particularly valuable in countries with unstable currencies. Remittances became cheaper and faster for migrant workers sending money home. NFTs created new revenue streams for digital artists and content creators. DeFi protocols provided financial services to the unbanked. However, blockchain also enabled new forms of crime, created extreme price volatility, and consumed enormous amounts of energy, while many projects turned out to be speculative bubbles.',
  trending_updates = '2025 Trending: Central Bank Digital Currencies (CBDCs) being piloted globally. Ethereum''s proof-of-stake reducing energy consumption by 99%. Real-world asset tokenization gaining mainstream adoption. Blockchain integration with AI and IoT creating new applications. Regulatory clarity improving institutional adoption.'
WHERE name = 'Blockchain and Cryptocurrency';

-- Update Virtual and Augmented Reality
UPDATE exhibits SET 
  human_impact = 'Before VR/AR, digital experiences were limited to flat screens, and remote collaboration was challenging. Physical presence was required for many training and educational experiences. VR/AR is creating new forms of human interaction and learning: Medical students practice surgery in VR without risk to patients. Remote workers collaborate in virtual offices, reducing the need for business travel. Students take virtual field trips to historical sites and distant planets. Therapy patients overcome phobias and PTSD in controlled virtual environments. However, VR/AR also creates concerns about reality distortion, social isolation, and the potential for addiction to virtual worlds.',
  trending_updates = '2025 Trending: Apple Vision Pro driving mainstream AR adoption. Meta Quest 3 making VR more accessible. Mixed reality applications in manufacturing and healthcare expanding. Virtual concerts and events becoming major entertainment venues. AR navigation and shopping experiences becoming standard.'
WHERE name = 'Virtual and Augmented Reality';

-- Update 5G and Edge Computing
UPDATE exhibits SET 
  human_impact = 'Before 5G, mobile internet was often slow and unreliable, limiting what could be done on mobile devices. Real-time applications requiring ultra-low latency were impossible over wireless networks. 5G is enabling new categories of applications: Remote surgery is becoming possible with ultra-low latency connections. Autonomous vehicles can communicate with infrastructure in real-time. Smart cities can monitor and optimize traffic, energy, and services instantly. Industrial IoT enables predictive maintenance and automated manufacturing. However, 5G deployment has been expensive and uneven, creating new digital divides between urban and rural areas.',
  trending_updates = '2025 Trending: 5G coverage reaching 80% of global population. Private 5G networks transforming manufacturing. Edge AI processing reducing cloud dependency. 6G research beginning with promises of holographic communication. Integration with satellite networks providing global coverage.'
WHERE name = '5G and Edge Computing';