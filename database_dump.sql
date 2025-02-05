-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_app
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog_articles`
--

DROP TABLE IF EXISTS `blog_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_articles` (
  `id` varchar(100) NOT NULL,
  `author` varchar(30) NOT NULL,
  `dated` varchar(30) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `article` text NOT NULL,
  `article_topic` varchar(30) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `image_alt` varchar(50) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_articles`
--

LOCK TABLES `blog_articles` WRITE;
/*!40000 ALTER TABLE `blog_articles` DISABLE KEYS */;
INSERT INTO `blog_articles` VALUES ('102','Jane Smith','2024-06-02','Understanding Large Language Models','Large Language Models (LLMs) like GPT-4 have revolutionized natural language processing. This article delves into their working and applications.','LLM','https://images.unsplash.com/photo-1532178324009-6b6adeca1741?q=80&w=1584&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','LLM Understanding','# Understanding Large Language Models: The Power of Words in the Age of AI\r\n\r\nLarge language models (LLMs) are revolutionizing the way we interact with machines. These complex AI systems are trained on massive amounts of text data, enabling them to understand, generate, and translate human language with remarkable fluency. But what exactly are LLMs, and how are they changing the world?\r\n\r\n## Under the Hood: How LLMs Work\r\n\r\nAt the core of LLMs lie artificial neural networks, particularly a type called transformers. Imagine a vast network of interconnected nodes, mimicking the human brain. Each node processes information, learning patterns and relationships within the data it\'s fed. In the case of LLMs, this data is text ├ö├ç├┤ books, articles, code, conversations ├ö├ç├┤ anything containing written language.\r\n\r\nAs LLMs process this data, they develop an understanding of grammar, syntax, and semantics. They learn how words connect, how meaning is conveyed, and how language is used in different contexts. This allows them to perform a variety of tasks, including:\r\n\r\n- **Generating Text:** LLMs can create realistic and coherent text formats, from poems and scripts to news articles and code.\r\n- **Machine Translation:** LLMs can translate languages with impressive accuracy, breaking down language barriers and fostering communication.\r\n- **Question Answering:** LLMs can answer your questions in an informative way, even if they require complex reasoning or drawing connections across vast amounts of text data.\r\n- **Summarization:** LLMs can condense lengthy pieces of text into concise summaries, helping you quickly grasp the key points.\r\n\r\n## LLMs in Action: Transforming Industries\r\n\r\nThe applications of LLMs are vast and ever-growing. Here are a few examples of how LLMs are making a difference:\r\n\r\n- **Education:** LLMs can personalize learning experiences, providing tailored explanations and answering student questions in a comprehensive way.\r\n- **Customer Service:** Chatbots powered by LLMs can handle customer inquiries, offering 24/7 support and resolving issues efficiently.\r\n- **Content Creation:** LLMs can assist writers by generating ideas, checking for plagiarism, and even composing different sections of creative content.\r\n- **Scientific Research:** LLMs can analyze research papers, identify patterns and trends, and accelerate scientific discovery.\r\n\r\n## The Future of LLMs: Evolving Capabilities and Considerations\r\n\r\nAs LLM technology continues to develop, we can expect even more impressive capabilities. Here are some exciting possibilities:\r\n\r\n- **Enhanced Reasoning:** LLMs may develop the ability to reason and draw logical conclusions, making them even more valuable for tasks requiring analysis and problem-solving.\r\n- **Creative Applications:** LLMs could be used to create new forms of art and entertainment, pushing the boundaries of what\'s possible.\r\n- **Personalized Interactions:** LLMs could personalize our interactions with technology, adapting to our preferences and communication style.\r\n\r\nHowever, with this power comes responsibility. Here are some important considerations:\r\n\r\n- **Bias:** LLMs trained on biased data can perpetuate those biases in their outputs. Ensuring fair and unbiased training data is crucial.\r\n- **Transparency:** Understanding how LLMs arrive at their outputs is essential for building trust and ensuring responsible use.\r\n- **Job displacement:** As LLMs automate tasks traditionally done by humans, we need to address potential job losses and equip individuals with the skills needed for the changing job market.\r\n\r\n## Conclusion: A Future Shaped by Words\r\n\r\nLarge language models are a powerful tool with the potential to revolutionize how we interact with information and technology. By understanding how they work, their capabilities and limitations, we can harness their power to create a better future. As LLMs continue to evolve, one thing is certain: the future will be shaped by the power of words, and LLMs will be at the forefront of this transformation.'),('103','Alice Johnson','2024-06-03','ML in Healthcare System','Machine Learning (ML) is playing a crucial role in healthcare, from diagnostics to treatment plans. This article examines current trends and future possibilities.','ML','https://images.unsplash.com/photo-1485827404703-89b55fcc595e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','ML Healthcare','# Machine Learning in Healthcare\r\n\r\nMachine Learning (ML) is playing a crucial role in healthcare, from diagnostics to treatment plans. This article examines current trends and future possibilities.\r\n\r\n## Applications of ML in Healthcare\r\n\r\nML algorithms are used for various healthcare applications, including:\r\n\r\n- **Diagnostics:** ML models analyze medical images to detect diseases at early stages.\r\n- **Treatment Plans:** ML helps in creating personalized treatment plans based on patient data.\r\n- **Drug Discovery:** ML accelerates the drug discovery process by analyzing chemical compounds and predicting their effectiveness.\r\n- **Predictive Analytics:** ML predicts patient outcomes and helps in preventive care.\r\n\r\n## Current Trends\r\n\r\nRecent advancements in ML are making healthcare more efficient and effective. Innovations include AI-driven diagnostic tools and predictive models for disease management.\r\n\r\n## Future Possibilities\r\n\r\nFuture developments may bring more advanced ML techniques for personalized medicine and improved patient care.\r\n\r\n## Conclusion\r\n\r\nML is transforming healthcare with its ability to analyze data, predict outcomes, and assist in treatment. As technology evolves, the potential for ML in healthcare will continue to grow.'),('105','Catherine Green','2024-06-05','LLMs: Transforming Customer Service','Large Language Models are revolutionizing customer service with their ability to understand and respond to queries effectively. This article highlights the key benefits.','LLM','https://images.unsplash.com/photo-1543941869-11da6518d88f?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','LLM Customer Service','# LLMs: Transforming Customer Service\r\n\r\nLarge Language Models (LLMs) are revolutionizing customer service with their ability to understand and respond to queries effectively. This article highlights the key benefits.\r\n\r\n## Benefits of LLMs in Customer Service\r\n\r\nLLMs enhance customer service in several ways:\r\n\r\n- **24/7 Support:** LLMs provide round-the-clock support without fatigue.\r\n- **Accurate Responses:** LLMs deliver precise and relevant answers to customer questions.\r\n- **Efficient Query Resolution:** LLMs handle multiple queries simultaneously, improving response times.\r\n- **Personalized Interactions:** LLMs tailor responses based on customer data and interactions.\r\n\r\n## Real-World Examples\r\n\r\nCompanies are using LLMs for customer support, leading to improved service and customer satisfaction.\r\n\r\n## Future Outlook\r\n\r\nAs LLM technology evolves, we can expect even more advanced customer service solutions.\r\n\r\n## Conclusion\r\n\r\nLLMs are transforming customer service by offering efficient, accurate, and personalized support. Their ongoing development will further enhance customer service capabilities.'),('106','David Brown','2024-06-06','ML Algorithms You Should Know','Machine Learning relies on various algorithms to make predictions and decisions. This article introduces some of the most popular ML algorithms.','ML','https://images.pexels.com/photos/2239655/pexels-photo-2239655.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','ML Algorithms','# ML Algorithms You Should Know\n\nMachine Learning (ML) relies on various algorithms to make predictions and decisions. This article introduces some of the most popular ML algorithms.\n\n## Popular ML Algorithms\n\nHere are a few essential ML algorithms:\n\n- **Linear Regression:** Used for predicting numerical values based on input data.\n- **Decision Trees:** A method for classification and regression tasks.\n- **Support Vector Machines:** Algorithms for classification and regression with high-dimensional data.\n- **K-Nearest Neighbors:** A simple algorithm for classification and regression.\n- **Neural Networks:** Complex algorithms inspired by the human brain for various tasks.\n\n## How These Algorithms Work\n\nEach algorithm has a unique approach to learning from data and making predictions.\n\n## Choosing the Right Algorithm\n\nThe choice of algorithm depends on the specific problem and data characteristics.\n\n## Conclusion\n\nUnderstanding these algorithms is crucial for working with ML and applying it effectively to solve real-world problems.'),('107','Emma Wilson','2024-06-07','AI in Everyday Life','From smart assistants to personalized recommendations, AI is becoming an integral part of our daily lives. This article explores these everyday applications.','AI','https://images.pexels.com/photos/3861969/pexels-photo-3861969.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','AI Everyday','# AI in Everyday Life\n\nFrom smart assistants to personalized recommendations, AI is becoming an integral part of our daily lives. This article explores these everyday applications.\n\n## Everyday Applications of AI\n\nAI is increasingly present in our daily activities:\n\n- **Smart Assistants:** Virtual assistants like Siri and Alexa help with tasks and answer questions.\n- **Personalized Recommendations:** AI algorithms suggest products, movies, and content based on preferences.\n- **Smart Home Devices:** AI powers devices like thermostats and security systems for convenience.\n- **Healthcare:** AI applications include fitness trackers and health monitoring tools.\n\n## Benefits of AI in Daily Life\n\nAI enhances convenience, efficiency, and personalization in our daily routines.\n\n## Future Developments\n\nFuture advancements will bring more innovative and integrated AI solutions.\n\n## Conclusion\n\nAI├ö├ç├ûs role in everyday life is expanding, offering new opportunities for convenience and personalization. As technology evolves, AI will become even more integrated into our lives.'),('108','Frank Taylor','2024-06-08','The Rise of LLMs in Content Creation','Large Language Models are increasingly used for content creation, from writing articles to generating scripts. This article examines their impact.','LLM','https://images.pexels.com/photos/8721318/pexels-photo-8721318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','LLM Content Creation','# The Rise of LLMs in Content Creation\n\nLarge Language Models (LLMs) are increasingly used for content creation, from writing articles to generating scripts. This article examines their impact.\n\n## Applications of LLMs in Content Creation\n\nLLMs are used in various content creation tasks:\n\n- **Writing Articles:** LLMs can generate articles on diverse topics.\n- **Scriptwriting:** LLMs assist in creating scripts for movies and shows.\n- **Creative Writing:** LLMs can produce poetry, stories, and other creative works.\n- **Editing and Proofreading:** LLMs help in editing and improving written content.\n\n## Benefits of Using LLMs\n\nLLMs streamline content creation processes and enhance productivity.\n\n## Future Trends\n\nAs LLM technology advances, new content creation opportunities will emerge.\n\n## Conclusion\n\nLLMs are transforming content creation with their ability to generate and refine text. Their future developments will offer even more creative possibilities.'),('110','Henry Anderson','2024-06-10','AI and Job Automation: What to Expect','AI is set to automate many jobs, raising concerns and opportunities. This article explores the potential impacts of AI-driven job automation.','AI','https://images.pexels.com/photos/8386440/pexels-photo-8386440.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','AI Job Automation','# AI and Job Automation: What to Expect\n\nAI is set to automate many jobs, raising concerns and opportunities. This article explores the potential impacts of AI-driven job automation.\n\n## Impacts of AI on Jobs\n\nAI will affect jobs in various ways:\n\n- **Job Displacement:** Automation may lead to job losses in some industries.\n- **New Opportunities:** AI will create new job roles and career paths.\n- **Skill Requirements:** Workers will need to develop new skills for the AI-driven job market.\n\n## Preparing for the Future\n\nTo adapt, individuals and organizations should:\n\n- **Focus on Reskilling:** Invest in training programs for future job requirements.\n- **Embrace AI:** Learn how to work alongside AI technologies.\n- **Promote Lifelong Learning:** Continuously update skills to stay relevant.\n\n## Conclusion\n\nAI-driven job automation brings both challenges and opportunities. By preparing for these changes, we can navigate the future job market effectively.'),('4503e122-eb7a-4143-9879-3b4ceb24484e','Gautam Naida','2024-07-07','AI Astrologer Avatar','Artificial Intelligence is revolutionizing astrology by improving predictions','AI Astrology','https://images.unsplash.com/photo-1531747118685-ca8fa6e08806?q=80&w=1490&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','AI Astrology','## AI Astrologer Avatar: Charting Your Course in the Digital Age\r\n\r\nFor centuries, humans have looked to the stars for guidance. Astrology, the study of celestial bodies and their influence, has offered a window into personality, potential, and even future possibilities. But what if your friendly neighborhood astrologer was replaced by a sophisticated AI program? Enter the AI Astrologer Avatar ΓÇô a digital guide ready to navigate the cosmos alongside you.\r\n\r\n**Beyond Sun Signs: Unlocking the Depths of Your Birth Chart**\r\n\r\nTraditional astrology relies on your sun sign, a simplified snapshot based on your birth month. However, a complete birth chart considers the position of all planets and celestial bodies at your moment of arrival. An AI Astrologer Avatar can analyze this complex data with unparalleled precision, revealing nuanced insights into your strengths, weaknesses, and potential life paths.\r\n\r\n**24/7 Personalized Guidance at Your Fingertips**\r\n\r\nImagine having an astrological advisor available anytime, anywhere. AI Astrologers can be integrated into apps or websites, offering instant interpretations of your birth chart and personalized horoscopes. No more waiting for appointments or deciphering cryptic newspaper predictions ΓÇô your AI guide is always on call.\r\n\r\n**Unveiling Hidden Patterns: The Power of Big Data**\r\n\r\nAI excels at analyzing vast amounts of data. An AI Astrologer Avatar can delve into historical astrological information, comparing your birth chart to past events and successful individuals. This allows for the identification of patterns and trends, potentially offering you unique insights and personalized advice for navigating your own future.\r\n\r\n**The Future of Astrology: A Blend of Tradition and Technology**\r\n\r\nAI Astrologers aren\'t meant to replace the wisdom of experienced astrologers. They\'re here to enhance the practice. Imagine an AI providing a foundational analysis, which a human astrologer can then use to delve deeper into your specific questions and concerns. This collaboration creates a powerful and personalized experience.\r\n\r\n**A Note of Caution: Embracing Guidance, Not Dictates**\r\n\r\nWhile AI astrology offers exciting possibilities, it\'s important to remember that the stars don\'t dictate your destiny.  Use AI insights as a guide, not a rigid script.  Ultimately, you have the free will to shape your own path.\r\n\r\n**The Final Word: A New Chapter in Celestial Navigation**\r\n\r\nThe AI Astrologer Avatar marks a new chapter in our relationship with the cosmos. By combining traditional astrological wisdom with the power of artificial intelligence, we can gain a deeper understanding of ourselves and navigate life\'s journey with greater awareness and confidence. So, are you ready to meet your AI astrological guide and explore the exciting possibilities waiting to be unlocked?\r\n');
/*!40000 ALTER TABLE `blog_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneNumber` varchar(100) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('49beea3b-7be9-4498-8d3d-4c023a299fc8','John','Dow','johndoe@gmail.com','1234569870','Hello! I want to post my blogs on your website'),('4e295f00-5252-4953-a901-0032df38d445','John','Naida','adi@gmail.com','1234569870','Going to Goa.'),('687ed329-9c3c-4e58-b059-32782d986e5d','John','Dow','johndoe@gmail.com','1234569870','SDJWB H WE7DYHQWEHYD'),('695c1ffc-1b72-447d-b66d-166db145496f','John','Dow','johndoe@gmail.com','1234569870','Hello world'),('7d9325e3-ba02-41bd-b11c-df7da7d14f5f','John','Dow','johndoe@gmail.com','1234569870','SDJWB H WE7DYHQWEHYD'),('83274c91-06ff-4958-be3c-b9c1aaf3f684','John','Dow','johndoe@gmail.com','1234569870','SDJWB H WE7DYHQWEHYD'),('b1aeb428-474a-4705-a00e-b64a76167aef','John','Dow','johndoe@gmail.com','1234569870','SDJWB H WE7DYHQWEHYD'),('ed600229-6b59-49fe-9bb9-66eb7f9da0c2','Aditya','Naida','adityanaida@gmail.com','8240590169','Youngest Billionaire in India.'),('ef367dc2-4b0f-4d33-9b2a-2e0dec9ada72','John','Dow','johndoe@gmail.com','1234569870','SDJWB H WE7DYHQWEHYD'),('fab3b146-88f1-43aa-b13b-0aee86c4e89c','Aryan','Naida','aryannaida@gmail.com','8240590169','Youngest billionaire in India.');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hero`
--

DROP TABLE IF EXISTS `hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hero` (
  `gallery` varchar(200) NOT NULL,
  PRIMARY KEY (`gallery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero`
--

LOCK TABLES `hero` WRITE;
/*!40000 ALTER TABLE `hero` DISABLE KEYS */;
INSERT INTO `hero` VALUES ('https://images.unsplash.com/photo-1532178324009-6b6adeca1741?q=80&w=1584&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),('https://images.unsplash.com/photo-1666597107756-ef489e9f1f09?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),('https://images.unsplash.com/photo-1674027444485-cec3da58eef4?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
/*!40000 ALTER TABLE `hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriber` (
  `subscribed_users` varchar(100) NOT NULL,
  PRIMARY KEY (`subscribed_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriber`
--

LOCK TABLES `subscriber` WRITE;
/*!40000 ALTER TABLE `subscriber` DISABLE KEYS */;
INSERT INTO `subscriber` VALUES (''),('adityanaida@gmail.com'),('ar@gmail.com'),('arjonaida7@gmail.com'),('ataa@gmail.com'),('Chester98@yahoo.com'),('Dorian9@gmail.com'),('expressjs@gmail.com'),('nodejs@gmail.com'),('smita@gmail.com'),('tailwindcss@gmai.com'),('undefined'),('vdfgvfd@gmail.com'),('vdfgvfd@yahoo.in'),('vercel@gmail.com'),('Xavier81@gmail.com');
/*!40000 ALTER TABLE `subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-12 16:05:54
