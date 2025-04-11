import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: slash_for_doc_comments
/**
    //Credit by MD Arafat Mia (Date: 22-04-2024)
 */

class CommonCarouselSlider extends StatefulWidget {
  const CommonCarouselSlider({super.key});

  @override
  _CommonCarouselSliderState createState() => _CommonCarouselSliderState();
}

class _CommonCarouselSliderState extends State<CommonCarouselSlider> {
  int _current = 0;

  // List of image URLs and corresponding click actions (URLs to open)
  final List<Map<String, String>> images = [
    {
      'url': 'https://i.ibb.co/QFP1tqp/437875190-935674678564466-8996440383354200311-n.jpg',
      'link': 'https://www.facebook.com/photo?fbid=946528510812416&set=a.507353178063287',
    },
    {
      'url': 'https://i.ibb.co/3mNSv6t/Seucc.jpg',
      'link': 'https://www.facebook.com/photo?fbid=1076984807766785&set=a.507353178063287',
    },
    {
      'url': 'https://i.ibb.co/RY4RjH3/466419703-1094296912702241-3952763552132017536-n.jpg',
      'link': 'https://www.facebook.com/photo?fbid=1076330861165513&set=pcb.1076331457832120',
    },
    {
      'url': 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/459088703_2005454866574536_972160795805810363_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeFKAdZHExsnR-XK7Jp36sLsrevOISQK6NCt684hJAro0NJUJ8Z26OU0Xp-xrDArx57CJ6yn1lGcvqBslr4J-roB&_nc_ohc=MHtkAeTMtHoQ7kNvgG1MxV7&_nc_oc=AdjToqcJPiJNByVnE84NtyfbHAo3HM5_czIc9zRkPj66qFUXWvTDYKigJlp4T1ElE4Y&_nc_zt=23&_nc_ht=scontent.fdac31-1.fna&_nc_gid=A-MAy4mcHpwVdBYsTdzy2ep&oh=00_AYAEpcT3UE2hzotR5Kbs7WeO-LwvPwXRUS7fV6R7H68hZQ&oe=677F6D05',
      'link': 'https://www.facebook.com/seucc/videos/1898715313926340',
    },
    {
      'url': 'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/472582306_1138486704949928_3274961146978320324_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeFq9QhLDAjxexGNMTwGBlhIXc-gqK2NPeNdz6CorY094y0QwciKaRpcwnYnID8dIa0m-HDcjvlQORrKWuD4J_Jd&_nc_ohc=VTsDdQcgOxcQ7kNvgH8Ki5j&_nc_oc=Adj01cnZiuXs-suFLu8l5G80-pi9RluFMspzM6gnxsicrpQbmmN8EQfkoKZ_8j_0XN0&_nc_zt=23&_nc_ht=scontent.fdac31-1.fna&_nc_gid=AWZOphCBCYXfyyjDZS6jVm3&oh=00_AYAguUzWhmRNZLHlWwKkWtLbppvTkAO47uAH2x7ezdlvIg&oe=677F70F3',
      'link': 'https://www.facebook.com/photo/?fbid=1138486641616601&set=a.507353184729953',
    },
    {
      'url': 'https://scontent.fdac31-2.fna.fbcdn.net/v/t39.30808-6/470221209_2081566792296676_3461712104644619475_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=103&ccb=1-7&_nc_sid=aa7b47&_nc_eui2=AeHBfwKLB1ryHbW6oIbXA0ZN2M8LYbfTykPYzwtht9PKQ_bWl1V1stbBSKDXQ2sPmNQ8paSPc0zai7lD36_jcA-U&_nc_ohc=j2RiCF507j8Q7kNvgH7mg3R&_nc_oc=AdiUWayaXWRn06L1m3wsHbRLSo5ZxWULx2ez3aS1HIbQFJRvWXj_2SOcXljU8a1wHZo&_nc_zt=23&_nc_ht=scontent.fdac31-2.fna&_nc_gid=AFEPzFoxtsWN3wjb3pvW2d7&oh=00_AYAkU4yMqI3c3BlzO95680nCKejvZlK2eD3zR7EbP7N9eg&oe=677F6B70',
      'link': 'https://www.facebook.com/photo/?fbid=2081566785630010&set=pcb.1682186232365403',
    },
  ];

  Future<void> _launchLink(String url) async {
    Uri uri = Uri.parse(url);

    // Check if the link is for Facebook and try to use the app scheme
    if (url.contains("facebook.com")) {
      String appUrl = url.replaceFirst(
          "https://www.facebook.com",
          "fb://facewebmodal/f?href=https://www.facebook.com");
      uri = Uri.parse(appUrl);
    }

    // Try to launch the link
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      // Fallback to the original link in the browser
      Uri fallbackUri = Uri.parse(url);
      if (await canLaunchUrl(fallbackUri)) {
        await launchUrl(fallbackUri, mode: LaunchMode.inAppWebView);
      } else {
        // Show error if both fail
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not launch URL: $url')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSlider = images.map((image) {
      return GestureDetector(
        onTap: () => _launchLink(image['link']!),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: CachedNetworkImage(
              imageUrl: image['url']!,
              fit: BoxFit.cover,
              width: 1000,
              placeholder: (context, url) =>
              const CircularProgressIndicator(), // Placeholder widget while loading
              errorWidget: (context, url, error) =>
              const Icon(Icons.error), // Widget to display in case of error
            ),
          ),
        ),
      );
    }).toList();

    return Column(
      children: [
        CarouselSlider(
          items: imageSlider,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.asMap().entries.map((entry) {
            int index = entry.key;
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? const Color.fromRGBO(0, 0, 0, 0.9)
                    : const Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
