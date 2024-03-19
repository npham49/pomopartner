import 'package:flutter/material.dart';

class PomodoroIcon extends StatelessWidget {
  const PomodoroIcon({super.key, required this.time});
  final int time;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var remainingTime = 60 - time;
    return Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurStyle: BlurStyle.outer,
              spreadRadius: 1,
              blurRadius: 15,
            ),
          ],
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.width * 0.45,
          child: Card(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.40,
                height: MediaQuery.of(context).size.width * 0.40,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.35,
                        margin: const EdgeInsets.all(4),
                        child: CircularProgressIndicator(
                          strokeWidth: 13,
                          value: time / 60,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).colorScheme.primary),
                          backgroundColor: const Color(0xFF32292C),
                        ),
                      ),
                    ),
                    Center(
                        child: Text("$time\n$remainingTime",
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB3AC74)))),
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
