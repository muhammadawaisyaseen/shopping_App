import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/dark_theme_provider.dart';

class CartFull extends StatefulWidget {
  const CartFull({Key? key}) : super(key: key);

  @override
  _CartFullState createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {
  @override
  Widget build(BuildContext context) {
    final themechange = Provider.of<DarkThemeProvider>(context);
    return Container(
      margin: EdgeInsets.all(10),
      height: 135,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        //color: Colors.white,
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
        children: [
          Container(
            width: 130,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80"),
              fit: BoxFit.fill,
            )),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          "title",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(32),
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.close,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("Price"),
                      SizedBox(width: 5),
                      Text(
                        "450\$",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  // .......................
                  Row(
                    children: [
                      Text("Sub Total"),
                      SizedBox(width: 5),
                      Text(
                        "450\$",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: themechange.darkTheme
                                ? Colors.brown.shade900
                                : Theme.of(context).accentColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Ships Free",
                        style: TextStyle(
                            color: themechange.darkTheme
                                ? Colors.brown.shade900
                                : Theme.of(context).accentColor),
                      ),
                      Spacer(),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(4),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(bottom: 12),
                            child: Icon(
                              Icons.minimize,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 12,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width * 0.12,
                          color: Colors.purple,
                          // decoration: BoxDecoration(
                          //   gradient: LinearGradient(colors: [
                          //     cololorsConst.
                          //   ])
                          // ),
                          child: Text(
                            "q",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(4),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.add,
                              color: Colors.green,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
