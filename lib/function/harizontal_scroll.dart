import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HorizontalScroll extends StatefulWidget {
  const HorizontalScroll({super.key});

  @override
  State<HorizontalScroll> createState() => _HorizontalScrollState();
}

class _HorizontalScrollState extends State<HorizontalScroll> {
// / Image for Profile
  List<String> postImage = [
    'https://i.pinimg.com/564x/8e/e6/09/8ee6091eef05ad5730aa96b30e7f58cb.jpg',
    'https://i.pinimg.com/736x/75/b2/54/75b254bc06e377c43a129ace3440c999.jpg',
    'https://i.pinimg.com/736x/56/25/91/5625912daa96befca3b7d55dd5447a2c.jpg',
    'https://i.pinimg.com/736x/99/5f/53/995f53c8245c54d3cae97a6232526550.jpg',
    'https://i.pinimg.com/564x/b3/d4/4e/b3d44e734f73144590b0184bd94e75c2.jpg',
    'https://i.pinimg.com/564x/8e/e6/09/8ee6091eef05ad5730aa96b30e7f58cb.jpg',
    'https://i.pinimg.com/736x/75/b2/54/75b254bc06e377c43a129ace3440c999.jpg',
    'https://i.pinimg.com/736x/56/25/91/5625912daa96befca3b7d55dd5447a2c.jpg',
    'https://i.pinimg.com/736x/99/5f/53/995f53c8245c54d3cae97a6232526550.jpg',
    'https://i.pinimg.com/564x/b3/d4/4e/b3d44e734f73144590b0184bd94e75c2.jpg',
    'https://i.pinimg.com/564x/8e/e6/09/8ee6091eef05ad5730aa96b30e7f58cb.jpg',
    'https://i.pinimg.com/736x/75/b2/54/75b254bc06e377c43a129ace3440c999.jpg',
    'https://i.pinimg.com/736x/56/25/91/5625912daa96befca3b7d55dd5447a2c.jpg',
    'https://i.pinimg.com/736x/99/5f/53/995f53c8245c54d3cae97a6232526550.jpg',
    'https://i.pinimg.com/564x/b3/d4/4e/b3d44e734f73144590b0184bd94e75c2.jpg',
    'https://i.pinimg.com/564x/8e/e6/09/8ee6091eef05ad5730aa96b30e7f58cb.jpg',
    'https://i.pinimg.com/736x/75/b2/54/75b254bc06e377c43a129ace3440c999.jpg',
    'https://i.pinimg.com/736x/56/25/91/5625912daa96befca3b7d55dd5447a2c.jpg',
    'https://i.pinimg.com/736x/99/5f/53/995f53c8245c54d3cae97a6232526550.jpg',
    'https://i.pinimg.com/564x/b3/d4/4e/b3d44e734f73144590b0184bd94e75c2.jpg',
    'https://i.pinimg.com/564x/8e/e6/09/8ee6091eef05ad5730aa96b30e7f58cb.jpg',
    'https://i.pinimg.com/736x/75/b2/54/75b254bc06e377c43a129ace3440c999.jpg',
    'https://i.pinimg.com/736x/56/25/91/5625912daa96befca3b7d55dd5447a2c.jpg',
    'https://i.pinimg.com/736x/99/5f/53/995f53c8245c54d3cae97a6232526550.jpg',
    'https://i.pinimg.com/564x/b3/d4/4e/b3d44e734f73144590b0184bd94e75c2.jpg',
  ]; // Replace

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Posts',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.all(8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: postImage.length,
                itemBuilder: (context, index) {}),
          ),
        ],
      ),
    );
  }
}
