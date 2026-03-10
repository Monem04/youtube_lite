import 'package:flutter/material.dart';
import 'package:youtube_lite/core/app_strings.dart';
import 'package:youtube_lite/core/youtube_urls.dart';
import 'package:youtube_lite/presentation/home/widget/youtube_nav_tile.dart';
import 'package:youtube_lite/presentation/youtube/screens/youtube_screens.dart';

import '../../../core/app_colors.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  void _openUrl(String title, String url) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => YoutubeScreens(url: url, title: title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 35,
              height: 26,
              decoration: BoxDecoration(
                color: AppColors.youtubePrimary,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(
                Icons.play_arrow_rounded,
                color: AppColors.chipSelected,
              ),
            ),
            SizedBox(width: 10),
            Text(
              AppStrings.appName,
              style: TextStyle(
                color: AppColors.iconDefault,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Column(children: [Expanded(child: _buildNavList())]),
    );
  }

  Widget _buildNavList() {
    return ListView(
      children: [
        _buildSectionHeader(AppStrings.sectionBrowse),
        YoutubeNavTile(
          icon: Icons.home,
          label: "Home",
          onTap: () => _openUrl(AppStrings.navHome, YoutubeUrls.home),
        ),
        YoutubeNavTile(
          icon: Icons.smart_display_outlined,
          label: "shots",
          onTap: () => _openUrl(AppStrings.navShorts, YoutubeUrls.shorts),
        ),
        YoutubeNavTile(
          icon: Icons.subscriptions,
          label: "Subscriptions",
          onTap: () =>
              _openUrl(AppStrings.navSubscriptions, YoutubeUrls.subscriptions),
        ),
        YoutubeNavTile(
          icon: Icons.explore,
          label: "Explore",
          onTap: () => _openUrl(AppStrings.navExplore, YoutubeUrls.explore),
        ),
        YoutubeNavTile(
          icon: Icons.trending_up,
          label: "Trending",
          onTap: () => _openUrl(AppStrings.navTrending, YoutubeUrls.trending),
        ),

        Divider(color: AppColors.divider, height: 1, indent: 15, endIndent: 15),
        _buildSectionHeader(AppStrings.sectionLibrary),

        YoutubeNavTile(
          icon: Icons.history,
          label: "History",
          onTap: () => _openUrl(AppStrings.navHistory, YoutubeUrls.history),
        ),
        YoutubeNavTile(
          icon: Icons.watch_later_outlined,
          label: "Watch Later",
          onTap: () =>
              _openUrl(AppStrings.navWatchLater, YoutubeUrls.watchLater),
        ),
        YoutubeNavTile(
          icon: Icons.thumb_up_alt_outlined,
          label: "Liked Video",
          onTap: () =>
              _openUrl(AppStrings.navLikedVideos, YoutubeUrls.likedVideos),
        ),
        Divider(color: AppColors.divider, height: 1, indent: 15, endIndent: 15),
        _buildSectionHeader(AppStrings.sectionMore),
        YoutubeNavTile(
          icon: Icons.settings,
          label: "Settings",
          onTap: () => _openUrl(AppStrings.navSettings, YoutubeUrls.settings),
        ),
        YoutubeNavTile(
          icon: Icons.help,
          label: "Help",
          onTap: () => _openUrl(AppStrings.navHelp, YoutubeUrls.help),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 12),
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.textHint,
          fontSize: 12,
          fontWeight: .w600,
        ),
      ),
    );
  }
}
