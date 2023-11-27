import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget makePage({image, title, currentPage, pageNo}) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '$currentPage',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '/$pageNo',
                  style: const TextStyle(
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
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, _) {
                        return RatingBar.builder(
                          itemSize: 25,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.blue,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        );
                      },
                    ),
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
