
import 'package:flutter/material.dart';

class GroupDetailBar extends StatelessWidget {
  const GroupDetailBar({
    Key key,
    @required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      shape: CircularNotchedRectangle(),
      notchMargin: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(25.0),

        // * App bar contents
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            // * Left text
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                // * Breadcrumbs
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
										// TODO: Iterate through nav stack items
                    /* children: navigationStack.map((group) {
                      return Text(group['name']);
                    }).toList(), */
                    /*<Widget>[
                      Text('Home'),
                      Icon(Icons.keyboard_arrow_right, size: 16.0),
                      Text('Bedroom'),
                      Icon(Icons.keyboard_arrow_right, size: 16.0),
                      Text('Dresser'),
                      Icon(Icons.keyboard_arrow_down, size: 16.0),
                    ]*/
                  ),
                ),

                // * Group details
                Text('My home',
                    style: textTheme.title.apply(fontWeightDelta: 1)),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 6.0),
                  child:
                      Text('6 groups and 3 items', style: textTheme.subtitle),
                ),
                Text('182 total items - \$12,382 value',
                    style: textTheme.caption),
              ],
            ),

            // * Star button
            IconButton(
              icon: Icon(Icons.star_border),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}