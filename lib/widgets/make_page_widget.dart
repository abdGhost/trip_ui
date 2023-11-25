import 'package:flutter/material.dart';

Widget makePage({image, title}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: const [0.3, 0.9],
          colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.2),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '1',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '/4',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 4),
                        child: const Icon(Icons.star,
                            color: Colors.yellowAccent, size: 15),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 4),
                        child: const Icon(Icons.star,
                            color: Colors.yellowAccent, size: 15),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 4),
                        child: const Icon(Icons.star,
                            color: Colors.yellowAccent, size: 15),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 4),
                        child: const Icon(Icons.star,
                            color: Colors.yellowAccent, size: 15),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 4),
                        child: const Icon(Icons.star,
                            color: Colors.grey, size: 15),
                      ),
                      const Text(
                        '4.0',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      const Text(
                        ' (2333)',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
