// lib/screens/home_screen.dart
import 'package:flutter/material.dart';

import '../widgets/animatedCounter.dart';
import '../widgets/project_card.dart';
import '../widgets/skill_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildHeroSection(context),
                  _buildStatsSection(),
                  _buildProjectsSection(),
                  _buildSkillsSection(),
                  _buildContactSection(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      floating: true,
      backgroundColor: const Color(0xFF121212).withOpacity(0.7),
      title: const Text('MR', style: TextStyle(fontWeight: FontWeight.bold)),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('Projects'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Skills'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Contact'),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
                'https://yt3.googleusercontent.com/0VsRElGCXroDU7ZOH75Yq8WFhAC3J-37pmkaCf_Emtp3ScISC2uVOKCBvLSD0dfgOxGYfaHI=s160-c-k-c0x00ffffff-no-rj'),
          ),
          const SizedBox(height: 24),
          Text(
            '  Minhaj Raza ',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'CS Student • App Developer • Content Creator',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.grey[400],
                ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.contact_page_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.youtube_searched_for),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.mail),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatsSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedCounter(
            label: 'YouTube\nSubscribers',
            endValue: 5000,
            prefix: '',
            suffix: '+',
          ),
          AnimatedCounter(
            label: 'Projects\nCompleted',
            endValue: 20,
            prefix: '',
            suffix: '+',
          ),
          AnimatedCounter(
            label: 'Students\nHelped',
            endValue: 1000,
            prefix: '',
            suffix: '+',
          ),
        ],
      ),
    );
  }

  Widget _buildProjectsSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Projects',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          ProjectCard(
            title: 'Shandy Notes',
            description:
                'A comprehensive platform providing quality study notes and resources for students.',
            icon: Icons.book,
            tags: ['Web Development', 'Education'],
            color: Colors.blue,
          ),
          SizedBox(height: 16),
          ProjectCard(
            title: 'AI Store',
            description: 'A place to find all types of AI..',
            icon: Icons.book,
            tags: ['AI Tools', 'Platforms'],
            color: Colors.deepPurpleAccent,
          ),
          SizedBox(height: 16),
          ProjectCard(
            title: 'YouTube Channel',
            description:
                'Tech, business, and educational content helping others learn and grow.',
            icon: Icons.video_library,
            tags: ['Content Creation', 'Tech Education'],
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: SkillCard(
                  title: 'Development',
                  skills: [
                    'Full Stack',
                    'Mobile Apps',
                  ],
                  icon: Icons.code,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: SkillCard(
                  title: 'Content',
                  skills: ['Video Creation', ' '],
                  icon: Icons.video_camera_back,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text(
            'Get in Touch',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Interested in collaborating or have a question?',
            style: TextStyle(color: Colors.grey[400]),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.mail),
            label: const Text('Contact Me'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
